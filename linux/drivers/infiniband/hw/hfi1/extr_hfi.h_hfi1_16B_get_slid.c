
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_16b_header {int* lrh; } ;


 int OPA_16B_LID_MASK ;
 int OPA_16B_SLID_HIGH_SHIFT ;
 int OPA_16B_SLID_MASK ;
 int OPA_16B_SLID_SHIFT ;

__attribute__((used)) static inline u32 hfi1_16B_get_slid(struct hfi1_16b_header *hdr)
{
 return (u32)((hdr->lrh[0] & OPA_16B_LID_MASK) |
       (((hdr->lrh[2] & OPA_16B_SLID_MASK) >>
       OPA_16B_SLID_HIGH_SHIFT) << OPA_16B_SLID_SHIFT));
}
