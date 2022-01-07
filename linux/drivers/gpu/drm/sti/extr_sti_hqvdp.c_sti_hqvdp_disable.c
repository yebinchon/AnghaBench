
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
struct sti_hqvdp {int vtg_registered; TYPE_1__ plane; int clk_pix_main; scalar_t__ regs; int vtg_nb; int vtg; } ;


 int DRM_DEBUG_DRIVER (char*,...) ;
 int DRM_ERROR (char*) ;
 scalar_t__ HQVDP_MBX_INFO_XP70 ;
 scalar_t__ HQVDP_MBX_NEXT_CMD ;
 int INFO_XP70_FW_READY ;
 int POLL_DELAY_MS ;
 int POLL_MAX_ATTEMPT ;
 int STI_PLANE_DISABLED ;
 int clk_disable_unprepare (int ) ;
 int msleep (int ) ;
 int readl (scalar_t__) ;
 int sti_plane_to_str (TYPE_1__*) ;
 scalar_t__ sti_vtg_unregister_client (int ,int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void sti_hqvdp_disable(struct sti_hqvdp *hqvdp)
{
 int i;

 DRM_DEBUG_DRIVER("%s\n", sti_plane_to_str(&hqvdp->plane));


 if (sti_vtg_unregister_client(hqvdp->vtg, &hqvdp->vtg_nb))
  DRM_DEBUG_DRIVER("Warning: cannot unregister VTG notifier\n");


 writel(0, hqvdp->regs + HQVDP_MBX_NEXT_CMD);

 for (i = 0; i < POLL_MAX_ATTEMPT; i++) {
  if (readl(hqvdp->regs + HQVDP_MBX_INFO_XP70)
    & INFO_XP70_FW_READY)
   break;
  msleep(POLL_DELAY_MS);
 }


 clk_disable_unprepare(hqvdp->clk_pix_main);

 if (i == POLL_MAX_ATTEMPT)
  DRM_ERROR("XP70 could not revert to idle\n");

 hqvdp->plane.status = STI_PLANE_DISABLED;
 hqvdp->vtg_registered = 0;
}
