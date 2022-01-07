
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct fsi_master_gpio {int cmd_lock; } ;
struct fsi_master {int dummy; } ;
struct fsi_gpio_msg {int dummy; } ;


 int ENODEV ;
 int build_term_command (struct fsi_gpio_msg*,int ) ;
 int fsi_master_gpio_xfer (struct fsi_master_gpio*,int ,struct fsi_gpio_msg*,int ,int *) ;
 int last_address_update (struct fsi_master_gpio*,int ,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fsi_master_gpio* to_fsi_master_gpio (struct fsi_master*) ;

__attribute__((used)) static int fsi_master_gpio_term(struct fsi_master *_master,
  int link, uint8_t id)
{
 struct fsi_master_gpio *master = to_fsi_master_gpio(_master);
 struct fsi_gpio_msg cmd;
 int rc;

 if (link != 0)
  return -ENODEV;

 mutex_lock(&master->cmd_lock);
 build_term_command(&cmd, id);
 rc = fsi_master_gpio_xfer(master, id, &cmd, 0, ((void*)0));
 last_address_update(master, id, 0, 0);
 mutex_unlock(&master->cmd_lock);

 return rc;
}
