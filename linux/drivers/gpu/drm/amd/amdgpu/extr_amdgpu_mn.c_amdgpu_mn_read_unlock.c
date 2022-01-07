
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_mn {int lock; } ;


 int up_read (int *) ;

__attribute__((used)) static void amdgpu_mn_read_unlock(struct amdgpu_mn *amn)
{
 up_read(&amn->lock);
}
