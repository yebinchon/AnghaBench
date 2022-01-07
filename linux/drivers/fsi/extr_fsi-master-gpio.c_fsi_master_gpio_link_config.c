
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct fsi_master_gpio {int cmd_lock; void* t_echo_delay; void* t_send_delay; } ;
struct fsi_master {int dummy; } ;


 int ENODEV ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fsi_master_gpio* to_fsi_master_gpio (struct fsi_master*) ;

__attribute__((used)) static int fsi_master_gpio_link_config(struct fsi_master *_master, int link,
           u8 t_send_delay, u8 t_echo_delay)
{
 struct fsi_master_gpio *master = to_fsi_master_gpio(_master);

 if (link != 0)
  return -ENODEV;

 mutex_lock(&master->cmd_lock);
 master->t_send_delay = t_send_delay;
 master->t_echo_delay = t_echo_delay;
 mutex_unlock(&master->cmd_lock);

 return 0;
}
