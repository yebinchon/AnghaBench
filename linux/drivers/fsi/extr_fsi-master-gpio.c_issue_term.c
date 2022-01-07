
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct fsi_master_gpio {int dev; } ;
struct fsi_gpio_msg {int dummy; } ;


 int EIO ;
 scalar_t__ FSI_RESP_ACK ;
 int build_term_command (struct fsi_gpio_msg*,scalar_t__) ;
 int dev_err (int ,char*,...) ;
 int echo_delay (struct fsi_master_gpio*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int read_one_response (struct fsi_master_gpio*,int ,int *,scalar_t__*) ;
 int serial_out (struct fsi_master_gpio*,struct fsi_gpio_msg*) ;

__attribute__((used)) static int issue_term(struct fsi_master_gpio *master, uint8_t slave)
{
 struct fsi_gpio_msg cmd;
 unsigned long flags;
 uint8_t tag;
 int rc;

 build_term_command(&cmd, slave);

 local_irq_save(flags);
 serial_out(master, &cmd);
 echo_delay(master);
 local_irq_restore(flags);

 rc = read_one_response(master, 0, ((void*)0), &tag);
 if (rc < 0) {
  dev_err(master->dev,
    "TERM failed; lost communication with slave\n");
  return -EIO;
 } else if (tag != FSI_RESP_ACK) {
  dev_err(master->dev, "TERM failed; response %d\n", tag);
  return -EIO;
 }

 return 0;
}
