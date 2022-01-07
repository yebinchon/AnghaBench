
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_vid {scalar_t__ regs; } ;


 scalar_t__ VID_ALP ;
 int VID_ALP_OPAQUE ;
 scalar_t__ VID_BC ;
 int VID_BC_DFLT ;
 scalar_t__ VID_CSAT ;
 int VID_CSAT_DFLT ;
 scalar_t__ VID_CTL ;
 int VID_CTL_IGNORE ;
 int VID_CTL_PSI_ENABLE ;
 scalar_t__ VID_TINT ;
 int VID_TINT_DFLT ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void sti_vid_init(struct sti_vid *vid)
{

 writel(VID_CTL_PSI_ENABLE | VID_CTL_IGNORE, vid->regs + VID_CTL);


 writel(VID_ALP_OPAQUE, vid->regs + VID_ALP);


 writel(VID_BC_DFLT, vid->regs + VID_BC);
 writel(VID_TINT_DFLT, vid->regs + VID_TINT);
 writel(VID_CSAT_DFLT, vid->regs + VID_CSAT);
}
