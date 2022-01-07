
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct stream_encoder {scalar_t__ id; } ;
struct link_mst_stream_allocation {scalar_t__ slot_count; struct stream_encoder* stream_enc; } ;



__attribute__((used)) static void fill_stream_allocation_row_info(
 const struct link_mst_stream_allocation *stream_allocation,
 uint32_t *src,
 uint32_t *slots)
{
 const struct stream_encoder *stream_enc = stream_allocation->stream_enc;

 if (stream_enc) {
  *src = stream_enc->id;
  *slots = stream_allocation->slot_count;
 } else {
  *src = 0;
  *slots = 0;
 }
}
