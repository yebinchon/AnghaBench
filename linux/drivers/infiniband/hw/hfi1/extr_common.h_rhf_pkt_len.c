
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int RHF_PKT_LEN_SHIFT ;
 int RHF_PKT_LEN_SMASK ;

__attribute__((used)) static inline u32 rhf_pkt_len(u64 rhf)
{
 return ((rhf & RHF_PKT_LEN_SMASK) >> RHF_PKT_LEN_SHIFT) << 2;
}
