
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int HEADER_TOGGLE_SHIFT ;
 int flexrm_read_desc (void*) ;
 int flexrm_write_desc (void*,int) ;

__attribute__((used)) static void flexrm_flip_header_toggle(void *desc_ptr)
{
 u64 desc = flexrm_read_desc(desc_ptr);

 if (desc & ((u64)0x1 << HEADER_TOGGLE_SHIFT))
  desc &= ~((u64)0x1 << HEADER_TOGGLE_SHIFT);
 else
  desc |= ((u64)0x1 << HEADER_TOGGLE_SHIFT);

 flexrm_write_desc(desc_ptr, desc);
}
