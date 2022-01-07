
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct mtk_cryp {int dummy; } ;
struct TYPE_2__ {int nents; scalar_t__ remainder; struct scatterlist* sg; } ;
struct mtk_aes_rec {size_t total; int buf; struct scatterlist aligned_sg; TYPE_1__ dst; TYPE_1__ src; struct scatterlist* real_dst; } ;


 size_t AES_BUF_SIZE ;
 int ENOMEM ;
 int mtk_aes_check_aligned (struct scatterlist*,size_t,TYPE_1__*) ;
 int mtk_aes_complete (struct mtk_cryp*,struct mtk_aes_rec*,int ) ;
 int mtk_aes_info_init (struct mtk_cryp*,struct mtk_aes_rec*,size_t) ;
 int mtk_aes_map (struct mtk_cryp*,struct mtk_aes_rec*) ;
 size_t mtk_aes_padlen (size_t) ;
 int sg_copy_to_buffer (struct scatterlist*,int ,int ,size_t) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_nents (struct scatterlist*) ;
 int sg_set_buf (struct scatterlist*,int ,size_t) ;

__attribute__((used)) static int mtk_aes_dma(struct mtk_cryp *cryp, struct mtk_aes_rec *aes,
         struct scatterlist *src, struct scatterlist *dst,
         size_t len)
{
 size_t padlen = 0;
 bool src_aligned, dst_aligned;

 aes->total = len;
 aes->src.sg = src;
 aes->dst.sg = dst;
 aes->real_dst = dst;

 src_aligned = mtk_aes_check_aligned(src, len, &aes->src);
 if (src == dst)
  dst_aligned = src_aligned;
 else
  dst_aligned = mtk_aes_check_aligned(dst, len, &aes->dst);

 if (!src_aligned || !dst_aligned) {
  padlen = mtk_aes_padlen(len);

  if (len + padlen > AES_BUF_SIZE)
   return mtk_aes_complete(cryp, aes, -ENOMEM);

  if (!src_aligned) {
   sg_copy_to_buffer(src, sg_nents(src), aes->buf, len);
   aes->src.sg = &aes->aligned_sg;
   aes->src.nents = 1;
   aes->src.remainder = 0;
  }

  if (!dst_aligned) {
   aes->dst.sg = &aes->aligned_sg;
   aes->dst.nents = 1;
   aes->dst.remainder = 0;
  }

  sg_init_table(&aes->aligned_sg, 1);
  sg_set_buf(&aes->aligned_sg, aes->buf, len + padlen);
 }

 mtk_aes_info_init(cryp, aes, len + padlen);

 return mtk_aes_map(cryp, aes);
}
