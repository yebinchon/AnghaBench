
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_hqvdp {scalar_t__ regs; } ;


 scalar_t__ HQVDP_RD_PLUG_CONTROL ;
 scalar_t__ HQVDP_RD_PLUG_MAX_CHK ;
 scalar_t__ HQVDP_RD_PLUG_MAX_MSG ;
 scalar_t__ HQVDP_RD_PLUG_MAX_OPC ;
 scalar_t__ HQVDP_RD_PLUG_MIN_OPC ;
 scalar_t__ HQVDP_RD_PLUG_MIN_SPACE ;
 scalar_t__ HQVDP_RD_PLUG_PAGE_SIZE ;
 scalar_t__ HQVDP_WR_PLUG_CONTROL ;
 scalar_t__ HQVDP_WR_PLUG_MAX_CHK ;
 scalar_t__ HQVDP_WR_PLUG_MAX_MSG ;
 scalar_t__ HQVDP_WR_PLUG_MAX_OPC ;
 scalar_t__ HQVDP_WR_PLUG_MIN_OPC ;
 scalar_t__ HQVDP_WR_PLUG_MIN_SPACE ;
 scalar_t__ HQVDP_WR_PLUG_PAGE_SIZE ;
 int PLUG_CONTROL_ENABLE ;
 int PLUG_MAX_CHK_2X ;
 int PLUG_MAX_MSG_1X ;
 int PLUG_MAX_OPC_64 ;
 int PLUG_MIN_OPC_8 ;
 int PLUG_MIN_SPACE_1 ;
 int PLUG_PAGE_SIZE_256 ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void sti_hqvdp_init_plugs(struct sti_hqvdp *hqvdp)
{

 writel(PLUG_PAGE_SIZE_256, hqvdp->regs + HQVDP_RD_PLUG_PAGE_SIZE);
 writel(PLUG_MIN_OPC_8, hqvdp->regs + HQVDP_RD_PLUG_MIN_OPC);
 writel(PLUG_MAX_OPC_64, hqvdp->regs + HQVDP_RD_PLUG_MAX_OPC);
 writel(PLUG_MAX_CHK_2X, hqvdp->regs + HQVDP_RD_PLUG_MAX_CHK);
 writel(PLUG_MAX_MSG_1X, hqvdp->regs + HQVDP_RD_PLUG_MAX_MSG);
 writel(PLUG_MIN_SPACE_1, hqvdp->regs + HQVDP_RD_PLUG_MIN_SPACE);
 writel(PLUG_CONTROL_ENABLE, hqvdp->regs + HQVDP_RD_PLUG_CONTROL);

 writel(PLUG_PAGE_SIZE_256, hqvdp->regs + HQVDP_WR_PLUG_PAGE_SIZE);
 writel(PLUG_MIN_OPC_8, hqvdp->regs + HQVDP_WR_PLUG_MIN_OPC);
 writel(PLUG_MAX_OPC_64, hqvdp->regs + HQVDP_WR_PLUG_MAX_OPC);
 writel(PLUG_MAX_CHK_2X, hqvdp->regs + HQVDP_WR_PLUG_MAX_CHK);
 writel(PLUG_MAX_MSG_1X, hqvdp->regs + HQVDP_WR_PLUG_MAX_MSG);
 writel(PLUG_MIN_SPACE_1, hqvdp->regs + HQVDP_WR_PLUG_MIN_SPACE);
 writel(PLUG_CONTROL_ENABLE, hqvdp->regs + HQVDP_WR_PLUG_CONTROL);
}
