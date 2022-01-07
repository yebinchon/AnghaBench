
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_qdma_format {int cfg; } ;


 int QDMA_CCDF_MASK ;
 int QDMA_CCDF_OFFSET ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline int
qdma_ccdf_get_offset(const struct fsl_qdma_format *ccdf)
{
 return (le32_to_cpu(ccdf->cfg) & QDMA_CCDF_MASK) >> QDMA_CCDF_OFFSET;
}
