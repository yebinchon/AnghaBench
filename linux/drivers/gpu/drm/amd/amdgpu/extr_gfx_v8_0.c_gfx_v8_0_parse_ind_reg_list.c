
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;

__attribute__((used)) static void gfx_v8_0_parse_ind_reg_list(int *register_list_format,
    int ind_offset,
    int list_size,
    int *unique_indices,
    int *indices_count,
    int max_indices,
    int *ind_start_offsets,
    int *offset_count,
    int max_offset)
{
 int indices;
 bool new_entry = 1;

 for (; ind_offset < list_size; ind_offset++) {

  if (new_entry) {
   new_entry = 0;
   ind_start_offsets[*offset_count] = ind_offset;
   *offset_count = *offset_count + 1;
   BUG_ON(*offset_count >= max_offset);
  }

  if (register_list_format[ind_offset] == 0xFFFFFFFF) {
   new_entry = 1;
   continue;
  }

  ind_offset += 2;


  for (indices = 0;
   indices < *indices_count;
   indices++) {
   if (unique_indices[indices] ==
    register_list_format[ind_offset])
    break;
  }

  if (indices >= *indices_count) {
   unique_indices[*indices_count] =
    register_list_format[ind_offset];
   indices = *indices_count;
   *indices_count = *indices_count + 1;
   BUG_ON(*indices_count >= max_indices);
  }

  register_list_format[ind_offset] = indices;
 }
}
