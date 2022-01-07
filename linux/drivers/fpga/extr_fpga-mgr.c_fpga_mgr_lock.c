
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_manager {int dev; int ref_mutex; } ;


 int EBUSY ;
 int dev_err (int *,char*) ;
 int mutex_trylock (int *) ;

int fpga_mgr_lock(struct fpga_manager *mgr)
{
 if (!mutex_trylock(&mgr->ref_mutex)) {
  dev_err(&mgr->dev, "FPGA manager is in use.\n");
  return -EBUSY;
 }

 return 0;
}
