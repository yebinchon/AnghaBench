
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;
typedef int __le32 ;


 int QLOGIC_IB_RHF_L_USE_EGR ;
 int __le32_to_cpu (int const) ;

__attribute__((used)) static inline __u32 qib_hdrget_use_egr_buf(const __le32 *rbuf)
{
 return __le32_to_cpu(rbuf[0]) & QLOGIC_IB_RHF_L_USE_EGR;
}
