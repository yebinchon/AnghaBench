
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master {int (* link_enable ) (struct fsi_master*,int) ;} ;


 int stub1 (struct fsi_master*,int) ;

__attribute__((used)) static int fsi_master_link_enable(struct fsi_master *master, int link)
{
 if (master->link_enable)
  return master->link_enable(master, link);

 return 0;
}
