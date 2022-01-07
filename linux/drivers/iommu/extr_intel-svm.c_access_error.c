
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_flags; } ;
struct page_req_dsc {scalar_t__ wr_req; scalar_t__ rd_req; scalar_t__ exe_req; } ;


 unsigned long VM_EXEC ;
 unsigned long VM_READ ;
 unsigned long VM_WRITE ;

__attribute__((used)) static bool access_error(struct vm_area_struct *vma, struct page_req_dsc *req)
{
 unsigned long requested = 0;

 if (req->exe_req)
  requested |= VM_EXEC;

 if (req->rd_req)
  requested |= VM_READ;

 if (req->wr_req)
  requested |= VM_WRITE;

 return (requested & ~vma->vm_flags) != 0;
}
