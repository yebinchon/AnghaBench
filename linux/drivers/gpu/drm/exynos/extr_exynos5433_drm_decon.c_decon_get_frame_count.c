
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct decon_context {TYPE_1__* crtc; scalar_t__ addr; } ;
struct TYPE_2__ {int i80_mode; } ;


 scalar_t__ DECON_CRFMID ;
 scalar_t__ DECON_VIDCON1 ;



 scalar_t__ VIDCON1_VSTATUS_MASK ;

 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static u32 decon_get_frame_count(struct decon_context *ctx, bool end)
{
 u32 frm, pfrm, status, cnt = 2;





 frm = readl(ctx->addr + DECON_CRFMID);
 do {
  status = readl(ctx->addr + DECON_VIDCON1);
  pfrm = frm;
  frm = readl(ctx->addr + DECON_CRFMID);
 } while (frm != pfrm && --cnt);




 if (!frm)
  return 0;

 switch (status & (VIDCON1_VSTATUS_MASK | 131)) {
 case 128:
  if (!(ctx->crtc->i80_mode))
   --frm;
  break;
 case 129:
  --frm;
  break;
 case 131:
 case 130:
  if (end)
   --frm;
  break;
 default:
  break;
 }

 return frm;
}
