
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_gpio {scalar_t__ external_mode; } ;
struct fsi_gpio_msg {int dummy; } ;


 int EBUSY ;
 int echo_delay (struct fsi_master_gpio*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int serial_out (struct fsi_master_gpio*,struct fsi_gpio_msg*) ;

__attribute__((used)) static int send_request(struct fsi_master_gpio *master,
  struct fsi_gpio_msg *cmd)
{
 unsigned long flags;

 if (master->external_mode)
  return -EBUSY;

 local_irq_save(flags);
 serial_out(master, cmd);
 echo_delay(master);
 local_irq_restore(flags);

 return 0;
}
