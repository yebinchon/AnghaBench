
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct bdb_mipi_sequence {scalar_t__* data; int version; } ;


 int DRM_ERROR (char*) ;
 int MAX_MIPI_CONFIGURATIONS ;
 int get_blocksize (struct bdb_mipi_sequence const*) ;

__attribute__((used)) static const u8 *
find_panel_sequence_block(const struct bdb_mipi_sequence *sequence,
     u16 panel_id, u32 *seq_size)
{
 u32 total = get_blocksize(sequence);
 const u8 *data = &sequence->data[0];
 u8 current_id;
 u32 current_size;
 int header_size = sequence->version >= 3 ? 5 : 3;
 int index = 0;
 int i;


 if (sequence->version >= 3)
  data += 4;

 for (i = 0; i < MAX_MIPI_CONFIGURATIONS && index < total; i++) {
  if (index + header_size > total) {
   DRM_ERROR("Invalid sequence block (header)\n");
   return ((void*)0);
  }

  current_id = *(data + index);
  if (sequence->version >= 3)
   current_size = *((const u32 *)(data + index + 1));
  else
   current_size = *((const u16 *)(data + index + 1));

  index += header_size;

  if (index + current_size > total) {
   DRM_ERROR("Invalid sequence block\n");
   return ((void*)0);
  }

  if (current_id == panel_id) {
   *seq_size = current_size;
   return data + index;
  }

  index += current_size;
 }

 DRM_ERROR("Sequence block detected but no valid configuration\n");

 return ((void*)0);
}
