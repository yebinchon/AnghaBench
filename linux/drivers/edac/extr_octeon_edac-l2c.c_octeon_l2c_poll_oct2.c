
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_device_ctl_info {int nr_instances; } ;


 int _octeon_l2c_poll_oct2 (struct edac_device_ctl_info*,int) ;

__attribute__((used)) static void octeon_l2c_poll_oct2(struct edac_device_ctl_info *l2c)
{
 int i;
 for (i = 0; i < l2c->nr_instances; i++)
  _octeon_l2c_poll_oct2(l2c, i);
}
