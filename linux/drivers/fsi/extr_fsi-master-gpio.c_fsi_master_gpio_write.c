
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct fsi_master_gpio {int cmd_lock; } ;
struct fsi_master {int dummy; } ;
struct fsi_gpio_msg {int dummy; } ;


 int ENODEV ;
 int build_ar_command (struct fsi_master_gpio*,struct fsi_gpio_msg*,int ,int ,size_t,void const*) ;
 int fsi_master_gpio_xfer (struct fsi_master_gpio*,int ,struct fsi_gpio_msg*,int ,int *) ;
 int last_address_update (struct fsi_master_gpio*,int ,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fsi_master_gpio* to_fsi_master_gpio (struct fsi_master*) ;

__attribute__((used)) static int fsi_master_gpio_write(struct fsi_master *_master, int link,
  uint8_t id, uint32_t addr, const void *val, size_t size)
{
 struct fsi_master_gpio *master = to_fsi_master_gpio(_master);
 struct fsi_gpio_msg cmd;
 int rc;

 if (link != 0)
  return -ENODEV;

 mutex_lock(&master->cmd_lock);
 build_ar_command(master, &cmd, id, addr, size, val);
 rc = fsi_master_gpio_xfer(master, id, &cmd, 0, ((void*)0));
 last_address_update(master, id, rc == 0, addr);
 mutex_unlock(&master->cmd_lock);

 return rc;
}
