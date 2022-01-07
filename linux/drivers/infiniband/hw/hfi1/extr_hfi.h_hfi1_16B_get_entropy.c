
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hfi1_16b_header {int* lrh; } ;


 int OPA_16B_ENTROPY_MASK ;

__attribute__((used)) static inline u16 hfi1_16B_get_entropy(struct hfi1_16b_header *hdr)
{
 return (u16)(hdr->lrh[3] & OPA_16B_ENTROPY_MASK);
}
