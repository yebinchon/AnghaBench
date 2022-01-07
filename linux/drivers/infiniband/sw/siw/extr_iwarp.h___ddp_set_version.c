
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct iwarp_ctrl {int ddp_rdmap_ctrl; } ;


 int DDP_MASK_VERSION ;
 int cpu_to_be16 (int) ;

__attribute__((used)) static inline void __ddp_set_version(struct iwarp_ctrl *ctrl, u8 version)
{
 ctrl->ddp_rdmap_ctrl =
  (ctrl->ddp_rdmap_ctrl & ~DDP_MASK_VERSION) |
  (cpu_to_be16((u16)version << 8) & DDP_MASK_VERSION);
}
