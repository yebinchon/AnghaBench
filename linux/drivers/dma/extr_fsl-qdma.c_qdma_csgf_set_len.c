
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_qdma_format {int cfg; } ;


 int QDMA_SG_LEN_MASK ;
 int cpu_to_le32 (int) ;

__attribute__((used)) static inline void qdma_csgf_set_len(struct fsl_qdma_format *csgf, int len)
{
 csgf->cfg = cpu_to_le32(len & QDMA_SG_LEN_MASK);
}
