
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PVRDMA_MASK (int ) ;
 int PVRDMA_QP_ATTR_MASK_MAX ;

__attribute__((used)) static inline int ib_qp_attr_mask_to_pvrdma(int attr_mask)
{
 return attr_mask & PVRDMA_MASK(PVRDMA_QP_ATTR_MASK_MAX);
}
