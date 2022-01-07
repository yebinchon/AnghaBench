
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct input {void* target_id; void* cmpl_ring; void* req_type; } ;
struct bnxt_re_dev {int dummy; } ;


 void* cpu_to_le16 (int ) ;

__attribute__((used)) static void bnxt_re_init_hwrm_hdr(struct bnxt_re_dev *rdev, struct input *hdr,
      u16 opcd, u16 crid, u16 trid)
{
 hdr->req_type = cpu_to_le16(opcd);
 hdr->cmpl_ring = cpu_to_le16(crid);
 hdr->target_id = cpu_to_le16(trid);
}
