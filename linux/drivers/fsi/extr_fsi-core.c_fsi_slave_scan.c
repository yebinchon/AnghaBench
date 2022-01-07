
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct fsi_slave {int dev; int id; int link; TYPE_1__* master; } ;
struct TYPE_6__ {int of_node; } ;
struct fsi_device {int engine_type; int version; int unit; int addr; int size; TYPE_2__ dev; struct fsi_slave* slave; } ;
typedef int data ;
typedef int __be32 ;
struct TYPE_5__ {int idx; } ;


 int ENOMEM ;
 int FSI_SLAVE_CONF_NEXT_MASK ;
 int FSI_SLAVE_CONF_SLOTS_MASK ;
 int FSI_SLAVE_CONF_SLOTS_SHIFT ;
 int FSI_SLAVE_CONF_TYPE_MASK ;
 int FSI_SLAVE_CONF_TYPE_SHIFT ;
 int FSI_SLAVE_CONF_VERSION_MASK ;
 int FSI_SLAVE_CONF_VERSION_SHIFT ;
 int be32_to_cpu (int ) ;
 int crc4 (int ,int,int) ;
 int dev_dbg (int *,char*,int,int,int,int,int) ;
 int dev_set_name (TYPE_2__*,char*,int ,int ,int ,int) ;
 int dev_warn (int *,char*,...) ;
 int device_register (TYPE_2__*) ;
 int engine_page_size ;
 struct fsi_device* fsi_create_device (struct fsi_slave*) ;
 int fsi_device_find_of_node (struct fsi_device*) ;
 int fsi_slave_read (struct fsi_slave*,int,int *,int) ;
 int put_device (TYPE_2__*) ;

__attribute__((used)) static int fsi_slave_scan(struct fsi_slave *slave)
{
 uint32_t engine_addr;
 int rc, i;
 engine_addr = engine_page_size * 3;
 for (i = 2; i < engine_page_size / sizeof(uint32_t); i++) {
  uint8_t slots, version, type, crc;
  struct fsi_device *dev;
  uint32_t conf;
  __be32 data;

  rc = fsi_slave_read(slave, (i + 1) * sizeof(data),
    &data, sizeof(data));
  if (rc) {
   dev_warn(&slave->dev,
    "error reading slave registers\n");
   return -1;
  }
  conf = be32_to_cpu(data);

  crc = crc4(0, conf, 32);
  if (crc) {
   dev_warn(&slave->dev,
    "crc error in slave register at 0x%04x\n",
    i);
   return -1;
  }

  slots = (conf & FSI_SLAVE_CONF_SLOTS_MASK)
   >> FSI_SLAVE_CONF_SLOTS_SHIFT;
  version = (conf & FSI_SLAVE_CONF_VERSION_MASK)
   >> FSI_SLAVE_CONF_VERSION_SHIFT;
  type = (conf & FSI_SLAVE_CONF_TYPE_MASK)
   >> FSI_SLAVE_CONF_TYPE_SHIFT;





  if (type != 0 && slots != 0) {


   dev = fsi_create_device(slave);
   if (!dev)
    return -ENOMEM;

   dev->slave = slave;
   dev->engine_type = type;
   dev->version = version;
   dev->unit = i;
   dev->addr = engine_addr;
   dev->size = slots * engine_page_size;

   dev_dbg(&slave->dev,
   "engine[%i]: type %x, version %x, addr %x size %x\n",
     dev->unit, dev->engine_type, version,
     dev->addr, dev->size);

   dev_set_name(&dev->dev, "%02x:%02x:%02x:%02x",
     slave->master->idx, slave->link,
     slave->id, i - 2);
   dev->dev.of_node = fsi_device_find_of_node(dev);

   rc = device_register(&dev->dev);
   if (rc) {
    dev_warn(&slave->dev, "add failed: %d\n", rc);
    put_device(&dev->dev);
   }
  }

  engine_addr += slots * engine_page_size;

  if (!(conf & FSI_SLAVE_CONF_NEXT_MASK))
   break;
 }

 return 0;
}
