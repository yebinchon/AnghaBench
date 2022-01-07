
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hfi1_16b_header {int* lrh; } ;


 int OPA_16B_AGE_MASK ;
 int OPA_16B_AGE_SHIFT ;

__attribute__((used)) static inline u8 hfi1_16B_get_age(struct hfi1_16b_header *hdr)
{
 return (u8)((hdr->lrh[3] & OPA_16B_AGE_MASK) >> OPA_16B_AGE_SHIFT);
}
