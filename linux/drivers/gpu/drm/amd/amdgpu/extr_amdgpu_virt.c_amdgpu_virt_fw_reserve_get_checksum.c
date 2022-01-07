
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chksum ;



int amdgpu_virt_fw_reserve_get_checksum(void *obj,
     unsigned long obj_size,
     unsigned int key,
     unsigned int chksum)
{
 unsigned int ret = key;
 unsigned long i = 0;
 unsigned char *pos;

 pos = (char *)obj;

 for (i = 0; i < obj_size; ++i)
  ret += *(pos + i);

 pos = (char *)&chksum;
 for (i = 0; i < sizeof(chksum); ++i)
  ret -= *(pos + i);
 return ret;
}
