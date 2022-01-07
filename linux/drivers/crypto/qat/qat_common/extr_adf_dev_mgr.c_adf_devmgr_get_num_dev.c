
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ adf_get_num_dettached_vfs () ;
 scalar_t__ num_devices ;

void adf_devmgr_get_num_dev(uint32_t *num)
{
 *num = num_devices - adf_get_num_dettached_vfs();
}
