
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_buf {int priv; } ;


 int vb2_dc_put (int ) ;

__attribute__((used)) static void vb2_dc_dmabuf_ops_release(struct dma_buf *dbuf)
{

 vb2_dc_put(dbuf->priv);
}
