
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgs_device {int dummy; } ;


 int kfree (struct cgs_device*) ;

void amdgpu_cgs_destroy_device(struct cgs_device *cgs_device)
{
 kfree(cgs_device);
}
