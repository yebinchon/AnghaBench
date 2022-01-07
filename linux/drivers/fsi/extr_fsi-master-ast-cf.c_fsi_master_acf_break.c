
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_acf {int lock; int dev; scalar_t__ external_mode; } ;
struct fsi_master {int dummy; } ;


 int CMD_BREAK ;
 int EBUSY ;
 int ENODEV ;
 int dev_dbg (int ,char*) ;
 int do_copro_command (struct fsi_master_acf*,int ) ;
 int last_address_update (struct fsi_master_acf*,int ,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fsi_master_acf* to_fsi_master_acf (struct fsi_master*) ;
 int udelay (int) ;

__attribute__((used)) static int fsi_master_acf_break(struct fsi_master *_master, int link)
{
 struct fsi_master_acf *master = to_fsi_master_acf(_master);
 int rc;

 if (link != 0)
  return -ENODEV;

 mutex_lock(&master->lock);
 if (master->external_mode) {
  mutex_unlock(&master->lock);
  return -EBUSY;
 }
 dev_dbg(master->dev, "sending BREAK\n");
 rc = do_copro_command(master, CMD_BREAK);
 last_address_update(master, 0, 0, 0);
 mutex_unlock(&master->lock);


 udelay(200);

 return rc;
}
