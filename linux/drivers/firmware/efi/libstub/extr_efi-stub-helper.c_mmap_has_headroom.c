
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long EFI_MMAP_NR_SLACK_SLOTS ;

__attribute__((used)) static inline bool mmap_has_headroom(unsigned long buff_size,
         unsigned long map_size,
         unsigned long desc_size)
{
 unsigned long slack = buff_size - map_size;

 return slack / desc_size >= EFI_MMAP_NR_SLACK_SLOTS;
}
