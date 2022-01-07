
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_qdma_format {int cfg; } ;


 int QDMA_CCDF_FOTMAT ;
 int cpu_to_le32 (int) ;

__attribute__((used)) static inline void
qdma_ccdf_set_format(struct fsl_qdma_format *ccdf, int offset)
{
 ccdf->cfg = cpu_to_le32(QDMA_CCDF_FOTMAT | offset);
}
