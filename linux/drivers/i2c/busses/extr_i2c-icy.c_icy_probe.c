
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct zorro_device_id {int dummy; } ;
struct TYPE_6__ {scalar_t__ start; } ;
struct zorro_dev {int dev; TYPE_2__ resource; } ;
struct TYPE_5__ {int * parent; } ;
struct TYPE_7__ {int name; struct i2c_algo_pcf_data* algo_data; int owner; TYPE_1__ dev; } ;
struct icy_i2c {TYPE_3__ adapter; int ltc2990_client; struct fwnode_handle* ltc2990_fwnode; void* reg_s1; void* reg_s0; } ;
struct i2c_board_info {char* type; int addr; struct fwnode_handle* fwnode; } ;
struct i2c_algo_pcf_data {int waitforpin; int getclock; int getown; int getpcf; int setpcf; struct icy_i2c* data; } ;
struct fwnode_handle {int dummy; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct fwnode_handle*) ;
 scalar_t__* PTR_ERR (struct fwnode_handle*) ;
 int THIS_MODULE ;
 void* ZTWO_VADDR (scalar_t__) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,scalar_t__*) ;
 int dev_set_drvdata (int *,struct icy_i2c*) ;
 void* devm_kzalloc (int *,int,int ) ;
 int devm_request_mem_region (int *,scalar_t__,int,int ) ;
 struct fwnode_handle* fwnode_create_software_node (int ,int *) ;
 int i2c_new_probed_device (TYPE_3__*,struct i2c_board_info*,int ,int *) ;
 scalar_t__ i2c_pcf_add_bus (TYPE_3__*) ;
 int icy_ltc2990_addresses ;
 int icy_ltc2990_props ;
 int icy_pcf_getclock ;
 int icy_pcf_getown ;
 int icy_pcf_getpcf ;
 int icy_pcf_setpcf ;
 int icy_pcf_waitforpin ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int icy_probe(struct zorro_dev *z,
       const struct zorro_device_id *ent)
{
 struct icy_i2c *i2c;
 struct i2c_algo_pcf_data *algo_data;
 struct fwnode_handle *new_fwnode;
 struct i2c_board_info ltc2990_info = {
  .type = "ltc2990",
  .addr = 0x4c,
 };

 i2c = devm_kzalloc(&z->dev, sizeof(*i2c), GFP_KERNEL);
 if (!i2c)
  return -ENOMEM;

 algo_data = devm_kzalloc(&z->dev, sizeof(*algo_data), GFP_KERNEL);
 if (!algo_data)
  return -ENOMEM;

 dev_set_drvdata(&z->dev, i2c);
 i2c->adapter.dev.parent = &z->dev;
 i2c->adapter.owner = THIS_MODULE;

 i2c->adapter.algo_data = algo_data;
 strlcpy(i2c->adapter.name, "ICY I2C Zorro adapter",
  sizeof(i2c->adapter.name));

 if (!devm_request_mem_region(&z->dev,
         z->resource.start,
         4, i2c->adapter.name))
  return -ENXIO;


 i2c->reg_s0 = ZTWO_VADDR(z->resource.start);
 i2c->reg_s1 = ZTWO_VADDR(z->resource.start + 2);

 algo_data->data = i2c;
 algo_data->setpcf = icy_pcf_setpcf;
 algo_data->getpcf = icy_pcf_getpcf;
 algo_data->getown = icy_pcf_getown;
 algo_data->getclock = icy_pcf_getclock;
 algo_data->waitforpin = icy_pcf_waitforpin;

 if (i2c_pcf_add_bus(&i2c->adapter)) {
  dev_err(&z->dev, "i2c_pcf_add_bus() failed\n");
  return -ENXIO;
 }

 dev_info(&z->dev, "ICY I2C controller at %pa, IRQ not implemented\n",
   &z->resource.start);
 new_fwnode = fwnode_create_software_node(icy_ltc2990_props, ((void*)0));
 if (IS_ERR(new_fwnode)) {
  dev_info(&z->dev, "Failed to create fwnode for LTC2990, error: %ld\n",
    PTR_ERR(new_fwnode));
 } else {





  i2c->ltc2990_fwnode = new_fwnode;
  ltc2990_info.fwnode = new_fwnode;

  i2c->ltc2990_client =
   i2c_new_probed_device(&i2c->adapter,
           &ltc2990_info,
           icy_ltc2990_addresses,
           ((void*)0));
 }

 return 0;
}
