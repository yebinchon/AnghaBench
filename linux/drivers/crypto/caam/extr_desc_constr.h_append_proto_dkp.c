
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct alginfo {int algtype; int keylen; int keylen_pad; int key_dma; int key_virt; scalar_t__ key_inline; } ;


 int ALIGN (int,int) ;
 int CAAM_CMD_SZ ;
 int CAAM_PTR_SZ ;
 int OP_ALG_ALGSEL_SHIFT ;
 int OP_ALG_ALGSEL_SUBMASK ;
 int OP_PCL_DKP_DST_IMM ;
 int OP_PCL_DKP_DST_PTR ;
 int OP_PCL_DKP_SRC_IMM ;
 int OP_PCL_DKP_SRC_PTR ;
 int OP_TYPE_UNI_PROTOCOL ;
 int append_data (int* const,int ,int) ;
 int append_operation (int* const,int) ;
 int append_ptr (int* const,int ) ;
 scalar_t__ caam32_to_cpu (int) ;
 int cpu_to_caam32 (scalar_t__) ;

__attribute__((used)) static inline void append_proto_dkp(u32 * const desc, struct alginfo *adata)
{
 u32 protid;





 protid = (adata->algtype & OP_ALG_ALGSEL_SUBMASK) |
   (0x20 << OP_ALG_ALGSEL_SHIFT);

 if (adata->key_inline) {
  int words;

  if (adata->keylen > adata->keylen_pad) {
   append_operation(desc, OP_TYPE_UNI_PROTOCOL | protid |
      OP_PCL_DKP_SRC_PTR |
      OP_PCL_DKP_DST_IMM | adata->keylen);
   append_ptr(desc, adata->key_dma);

   words = (ALIGN(adata->keylen_pad, CAAM_CMD_SZ) -
     CAAM_PTR_SZ) / CAAM_CMD_SZ;
  } else {
   append_operation(desc, OP_TYPE_UNI_PROTOCOL | protid |
      OP_PCL_DKP_SRC_IMM |
      OP_PCL_DKP_DST_IMM | adata->keylen);
   append_data(desc, adata->key_virt, adata->keylen);

   words = (ALIGN(adata->keylen_pad, CAAM_CMD_SZ) -
     ALIGN(adata->keylen, CAAM_CMD_SZ)) /
    CAAM_CMD_SZ;
  }


  if (words)
   (*desc) = cpu_to_caam32(caam32_to_cpu(*desc) + words);
 } else {
  append_operation(desc, OP_TYPE_UNI_PROTOCOL | protid |
     OP_PCL_DKP_SRC_PTR | OP_PCL_DKP_DST_PTR |
     adata->keylen);
  append_ptr(desc, adata->key_dma);
 }
}
