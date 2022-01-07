
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_dc_buf {TYPE_1__* db_attach; int dma_addr; } ;
struct TYPE_2__ {int dmabuf; } ;


 scalar_t__ WARN_ON (int ) ;
 int dma_buf_detach (int ,TYPE_1__*) ;
 int kfree (struct vb2_dc_buf*) ;
 int vb2_dc_unmap_dmabuf (struct vb2_dc_buf*) ;

__attribute__((used)) static void vb2_dc_detach_dmabuf(void *mem_priv)
{
 struct vb2_dc_buf *buf = mem_priv;


 if (WARN_ON(buf->dma_addr))
  vb2_dc_unmap_dmabuf(buf);


 dma_buf_detach(buf->db_attach->dmabuf, buf->db_attach);
 kfree(buf);
}
