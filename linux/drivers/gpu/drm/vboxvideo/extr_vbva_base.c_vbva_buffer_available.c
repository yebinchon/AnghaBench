
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vbva_buffer {scalar_t__ data_offset; scalar_t__ free_offset; scalar_t__ data_len; } ;
typedef scalar_t__ s32 ;



__attribute__((used)) static u32 vbva_buffer_available(const struct vbva_buffer *vbva)
{
 s32 diff = vbva->data_offset - vbva->free_offset;

 return diff > 0 ? diff : vbva->data_len + diff;
}
