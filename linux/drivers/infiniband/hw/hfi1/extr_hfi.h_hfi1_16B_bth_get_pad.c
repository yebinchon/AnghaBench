
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_other_headers {int * bth; } ;


 int IB_BTH_PAD_SHIFT ;
 int OPA_16B_BTH_PAD_MASK ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static inline u8 hfi1_16B_bth_get_pad(struct ib_other_headers *ohdr)
{
 return (u8)((be32_to_cpu(ohdr->bth[0]) >> IB_BTH_PAD_SHIFT) &
     OPA_16B_BTH_PAD_MASK);
}
