
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwarp_ctrl {int ddp_rdmap_ctrl; } ;


 int RDMAP_MASK_VERSION ;
 int cpu_to_be16 (int) ;

__attribute__((used)) static inline void __rdmap_set_version(struct iwarp_ctrl *ctrl, u8 version)
{
 ctrl->ddp_rdmap_ctrl = (ctrl->ddp_rdmap_ctrl & ~RDMAP_MASK_VERSION) |
          (cpu_to_be16(version << 6) & RDMAP_MASK_VERSION);
}
