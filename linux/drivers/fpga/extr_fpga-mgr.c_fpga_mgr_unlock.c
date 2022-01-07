
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_manager {int ref_mutex; } ;


 int mutex_unlock (int *) ;

void fpga_mgr_unlock(struct fpga_manager *mgr)
{
 mutex_unlock(&mgr->ref_mutex);
}
