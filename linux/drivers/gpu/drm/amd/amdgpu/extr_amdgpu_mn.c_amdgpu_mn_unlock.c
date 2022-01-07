
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_mn {int lock; } ;


 int up_write (int *) ;

void amdgpu_mn_unlock(struct amdgpu_mn *mn)
{
 if (mn)
  up_write(&mn->lock);
}
