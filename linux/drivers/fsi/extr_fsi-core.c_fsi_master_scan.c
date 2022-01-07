
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master {int n_links; int dev; } ;


 int dev_dbg (int *,char*,int,int) ;
 int fsi_master_break (struct fsi_master*,int) ;
 int fsi_master_link_enable (struct fsi_master*,int) ;
 int fsi_slave_init (struct fsi_master*,int,int ) ;

__attribute__((used)) static int fsi_master_scan(struct fsi_master *master)
{
 int link, rc;

 for (link = 0; link < master->n_links; link++) {
  rc = fsi_master_link_enable(master, link);
  if (rc) {
   dev_dbg(&master->dev,
    "enable link %d failed: %d\n", link, rc);
   continue;
  }
  rc = fsi_master_break(master, link);
  if (rc) {
   dev_dbg(&master->dev,
    "break to link %d failed: %d\n", link, rc);
   continue;
  }

  fsi_slave_init(master, link, 0);
 }

 return 0;
}
