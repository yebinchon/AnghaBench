
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct aead_request {int dst; int src; } ;
struct aead_edesc {int sec4_sg_bytes; int sec4_sg_dma; int dst_nents; int src_nents; } ;


 int caam_unmap (struct device*,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void aead_unmap(struct device *dev,
         struct aead_edesc *edesc,
         struct aead_request *req)
{
 caam_unmap(dev, req->src, req->dst,
     edesc->src_nents, edesc->dst_nents, 0, 0,
     edesc->sec4_sg_dma, edesc->sec4_sg_bytes);
}
