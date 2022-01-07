
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_dc_buf {void* vaddr; TYPE_1__* db_attach; } ;
struct TYPE_2__ {int dmabuf; } ;


 void* dma_buf_vmap (int ) ;

__attribute__((used)) static void *vb2_dc_vaddr(void *buf_priv)
{
 struct vb2_dc_buf *buf = buf_priv;

 if (!buf->vaddr && buf->db_attach)
  buf->vaddr = dma_buf_vmap(buf->db_attach->dmabuf);

 return buf->vaddr;
}
