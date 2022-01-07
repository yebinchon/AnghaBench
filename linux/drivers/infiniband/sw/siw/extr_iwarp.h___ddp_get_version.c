
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwarp_ctrl {int ddp_rdmap_ctrl; } ;


 int DDP_MASK_VERSION ;
 int be16_to_cpu (int) ;

__attribute__((used)) static inline u8 __ddp_get_version(struct iwarp_ctrl *ctrl)
{
 return be16_to_cpu(ctrl->ddp_rdmap_ctrl & DDP_MASK_VERSION) >> 8;
}
