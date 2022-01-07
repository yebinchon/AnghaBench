
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct fw_iso_buffer {int page_count; int pages; } ;


 int vm_map_pages_zero (struct vm_area_struct*,int ,int ) ;

int fw_iso_buffer_map_vma(struct fw_iso_buffer *buffer,
     struct vm_area_struct *vma)
{
 return vm_map_pages_zero(vma, buffer->pages,
     buffer->page_count);
}
