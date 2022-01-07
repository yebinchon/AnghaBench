
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv_cesa_req {int dummy; } ;


 int CESA_SA_INT_ACC0_IDMA_DONE ;
 int CESA_SA_INT_IDMA_OWN_ERR ;
 int EINPROGRESS ;
 int EINVAL ;

__attribute__((used)) static inline int mv_cesa_dma_process(struct mv_cesa_req *dreq,
          u32 status)
{
 if (!(status & CESA_SA_INT_ACC0_IDMA_DONE))
  return -EINPROGRESS;

 if (status & CESA_SA_INT_IDMA_OWN_ERR)
  return -EINVAL;

 return 0;
}
