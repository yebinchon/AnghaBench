
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int ALIGN (int,int) ;
 int cpu_to_le32 (int) ;
 int le32_to_cpu (int) ;
 int memcpy (int*,int*,int) ;

void amdgpu_atombios_copy_swap(u8 *dst, u8 *src, u8 num_bytes, bool to_le)
{
 memcpy(dst, src, num_bytes);

}
