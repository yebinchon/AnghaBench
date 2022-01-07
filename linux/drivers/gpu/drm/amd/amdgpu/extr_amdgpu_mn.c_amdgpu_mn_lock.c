
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_mn {int lock; } ;


 int down_write (int *) ;

void amdgpu_mn_lock(struct amdgpu_mn *mn)
{
 if (mn)
  down_write(&mn->lock);
}
