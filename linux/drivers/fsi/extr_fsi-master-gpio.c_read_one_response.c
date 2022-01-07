
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct fsi_master_gpio {int dev; } ;
struct fsi_gpio_msg {int bits; int msg; } ;


 int EAGAIN ;
 int ENODEV ;
 int ETIMEDOUT ;
 int FSI_CRC_SIZE ;
 int FSI_MASTER_MTOE_COUNT ;
 int FSI_RESP_ACK ;
 scalar_t__ crc4 (scalar_t__,int,int) ;
 int dev_dbg (int ,char*,...) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int serial_in (struct fsi_master_gpio*,struct fsi_gpio_msg*,int) ;

__attribute__((used)) static int read_one_response(struct fsi_master_gpio *master,
  uint8_t data_size, struct fsi_gpio_msg *msgp, uint8_t *tagp)
{
 struct fsi_gpio_msg msg;
 unsigned long flags;
 uint32_t crc;
 uint8_t tag;
 int i;

 local_irq_save(flags);


 for (i = 0; i < FSI_MASTER_MTOE_COUNT; i++) {
  msg.bits = 0;
  msg.msg = 0;
  serial_in(master, &msg, 1);
  if (msg.msg)
   break;
 }
 if (i == FSI_MASTER_MTOE_COUNT) {
  dev_dbg(master->dev,
   "Master time out waiting for response\n");
  local_irq_restore(flags);
  return -ETIMEDOUT;
 }

 msg.bits = 0;
 msg.msg = 0;


 serial_in(master, &msg, 4);

 tag = msg.msg & 0x3;


 if (tag == FSI_RESP_ACK && data_size)
  serial_in(master, &msg, data_size * 8);


 serial_in(master, &msg, FSI_CRC_SIZE);

 local_irq_restore(flags);


 crc = crc4(0, 1, 1);
 crc = crc4(crc, msg.msg, msg.bits);
 if (crc) {

  if (((~msg.msg) & ((1ull << msg.bits) - 1)) == 0)
   return -ENODEV;
  dev_dbg(master->dev, "ERR response CRC msg: 0x%016llx (%d bits)\n",
   msg.msg, msg.bits);
  return -EAGAIN;
 }

 if (msgp)
  *msgp = msg;
 if (tagp)
  *tagp = tag;

 return 0;
}
