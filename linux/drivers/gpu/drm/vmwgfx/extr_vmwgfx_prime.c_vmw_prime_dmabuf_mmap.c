
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct dma_buf {int dummy; } ;


 int ENOSYS ;
 int WARN_ONCE (int,char*) ;

__attribute__((used)) static int vmw_prime_dmabuf_mmap(struct dma_buf *dma_buf,
     struct vm_area_struct *vma)
{
 WARN_ONCE(1, "Attempted use of dmabuf mmap. Bad.\n");
 return -ENOSYS;
}
