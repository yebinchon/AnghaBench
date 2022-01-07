
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fsl_qdma_format {int data; } ;


 int U64_MAX ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static inline u64
qdma_ccdf_addr_get64(const struct fsl_qdma_format *ccdf)
{
 return le64_to_cpu(ccdf->data) & (U64_MAX >> 24);
}
