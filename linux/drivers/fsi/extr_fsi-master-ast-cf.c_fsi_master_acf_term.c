
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct fsi_msg {int dummy; } ;
struct fsi_master_acf {int lock; int dev; } ;
struct fsi_master {int dummy; } ;


 int ENODEV ;
 int build_term_command (struct fsi_msg*,int ) ;
 int dev_dbg (int ,char*,int ) ;
 int fsi_master_acf_xfer (struct fsi_master_acf*,int ,struct fsi_msg*,int ,int *) ;
 int last_address_update (struct fsi_master_acf*,int ,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fsi_master_acf* to_fsi_master_acf (struct fsi_master*) ;

__attribute__((used)) static int fsi_master_acf_term(struct fsi_master *_master,
          int link, uint8_t id)
{
 struct fsi_master_acf *master = to_fsi_master_acf(_master);
 struct fsi_msg cmd;
 int rc;

 if (link != 0)
  return -ENODEV;

 mutex_lock(&master->lock);
 build_term_command(&cmd, id);
 dev_dbg(master->dev, "term id %d\n", id);
 rc = fsi_master_acf_xfer(master, id, &cmd, 0, ((void*)0));
 last_address_update(master, id, 0, 0);
 mutex_unlock(&master->lock);

 return rc;
}
