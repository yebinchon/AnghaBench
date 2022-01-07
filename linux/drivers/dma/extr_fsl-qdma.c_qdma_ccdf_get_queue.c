
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fsl_qdma_format {int cfg8b_w1; } ;


 int U8_MAX ;

__attribute__((used)) static inline u8
qdma_ccdf_get_queue(const struct fsl_qdma_format *ccdf)
{
 return ccdf->cfg8b_w1 & U8_MAX;
}
