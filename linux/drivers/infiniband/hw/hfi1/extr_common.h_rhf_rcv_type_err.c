
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int RHF_RCV_TYPE_ERR_MASK ;
 int RHF_RCV_TYPE_ERR_SHIFT ;

__attribute__((used)) static inline u32 rhf_rcv_type_err(u64 rhf)
{
 return (rhf >> RHF_RCV_TYPE_ERR_SHIFT) & RHF_RCV_TYPE_ERR_MASK;
}
