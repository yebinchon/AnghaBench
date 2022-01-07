
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_4__ {int sm_shmem_out_base; TYPE_1__* chip; } ;
struct TYPE_3__ {unsigned int shmem_size; int cmd_shmem_out_base; } ;


 int EINVAL ;
 int ENOENT ;
 TYPE_2__ fw ;
 int memcpy (void*,int ,unsigned int) ;
 scalar_t__ meson_sm_call (unsigned int,unsigned int*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;

int meson_sm_call_read(void *buffer, unsigned int bsize, unsigned int cmd_index,
         u32 arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4)
{
 u32 size;
 int ret;

 if (!fw.chip)
  return -ENOENT;

 if (!fw.chip->cmd_shmem_out_base)
  return -EINVAL;

 if (bsize > fw.chip->shmem_size)
  return -EINVAL;

 if (meson_sm_call(cmd_index, &size, arg0, arg1, arg2, arg3, arg4) < 0)
  return -EINVAL;

 if (size > bsize)
  return -EINVAL;

 ret = size;

 if (!size)
  size = bsize;

 if (buffer)
  memcpy(buffer, fw.sm_shmem_out_base, size);

 return ret;
}
