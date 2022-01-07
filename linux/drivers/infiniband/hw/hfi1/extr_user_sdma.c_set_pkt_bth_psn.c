
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int __be32 ;


 int EXTENDED_PSN ;
 scalar_t__ HFI1_CAP_IS_KSET (int ) ;
 int HFI1_KDETH_BTH_SEQ_MASK ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static inline u32 set_pkt_bth_psn(__be32 bthpsn, u8 expct, u32 frags)
{
 u32 val = be32_to_cpu(bthpsn),
  mask = (HFI1_CAP_IS_KSET(EXTENDED_PSN) ? 0x7fffffffull :
   0xffffffull),
  psn = val & mask;
 if (expct)
  psn = (psn & ~HFI1_KDETH_BTH_SEQ_MASK) |
   ((psn + frags) & HFI1_KDETH_BTH_SEQ_MASK);
 else
  psn = psn + frags;
 return psn & mask;
}
