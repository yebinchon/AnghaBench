
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;



__attribute__((used)) static bool cc_is_icv_frag(unsigned int sgl_nents, unsigned int authsize,
      u32 last_entry_data_size)
{
 return ((sgl_nents > 1) && (last_entry_data_size < authsize));
}
