
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct dma_buf {int priv; } ;


 int vb2_dma_sg_mmap (int ,struct vm_area_struct*) ;

__attribute__((used)) static int vb2_dma_sg_dmabuf_ops_mmap(struct dma_buf *dbuf,
 struct vm_area_struct *vma)
{
 return vb2_dma_sg_mmap(dbuf->priv, vma);
}
