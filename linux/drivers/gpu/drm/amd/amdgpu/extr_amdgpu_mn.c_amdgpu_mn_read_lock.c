
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_mn {int lock; } ;


 int EAGAIN ;
 int down_read (int *) ;
 int down_read_trylock (int *) ;

__attribute__((used)) static int amdgpu_mn_read_lock(struct amdgpu_mn *amn, bool blockable)
{
 if (blockable)
  down_read(&amn->lock);
 else if (!down_read_trylock(&amn->lock))
  return -EAGAIN;

 return 0;
}
