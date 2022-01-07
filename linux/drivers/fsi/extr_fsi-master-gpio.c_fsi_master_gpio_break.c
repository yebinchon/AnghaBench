
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_gpio {int cmd_lock; scalar_t__ external_mode; } ;
struct fsi_master {int dummy; } ;


 int EBUSY ;
 int ENODEV ;
 int FSI_BREAK_CLOCKS ;
 int FSI_POST_BREAK_CLOCKS ;
 int FSI_PRE_BREAK_CLOCKS ;
 int clock_toggle (struct fsi_master_gpio*,int ) ;
 int echo_delay (struct fsi_master_gpio*) ;
 int last_address_update (struct fsi_master_gpio*,int ,int,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sda_out (struct fsi_master_gpio*,int) ;
 int set_sda_output (struct fsi_master_gpio*,int) ;
 struct fsi_master_gpio* to_fsi_master_gpio (struct fsi_master*) ;
 int trace_fsi_master_gpio_break (struct fsi_master_gpio*) ;
 int udelay (int) ;

__attribute__((used)) static int fsi_master_gpio_break(struct fsi_master *_master, int link)
{
 struct fsi_master_gpio *master = to_fsi_master_gpio(_master);
 unsigned long flags;

 if (link != 0)
  return -ENODEV;

 trace_fsi_master_gpio_break(master);

 mutex_lock(&master->cmd_lock);
 if (master->external_mode) {
  mutex_unlock(&master->cmd_lock);
  return -EBUSY;
 }

 local_irq_save(flags);

 set_sda_output(master, 1);
 sda_out(master, 1);
 clock_toggle(master, FSI_PRE_BREAK_CLOCKS);
 sda_out(master, 0);
 clock_toggle(master, FSI_BREAK_CLOCKS);
 echo_delay(master);
 sda_out(master, 1);
 clock_toggle(master, FSI_POST_BREAK_CLOCKS);

 local_irq_restore(flags);

 last_address_update(master, 0, 0, 0);
 mutex_unlock(&master->cmd_lock);


 udelay(200);

 return 0;
}
