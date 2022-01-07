
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_process_device {int lds_base; } ;



__attribute__((used)) static inline unsigned int
get_sh_mem_bases_nybble_64(struct kfd_process_device *pdd)
{
 return (pdd->lds_base >> 60) & 0x0E;
}
