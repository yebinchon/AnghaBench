
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct decon_context {int dummy; } ;


 int BLENDERQ_ALPHA0 ;
 int BLENDERQ_ALPHA_A ;
 int BLENDERQ_A_FUNC_F (int) ;
 int BLENDERQ_B_FUNC_F (int) ;
 int BLENDERQ_ONE ;
 int BLENDERQ_ONE_MINUS_ALPHA_A ;
 int DECON_BLENDERQx (unsigned int) ;
 unsigned int DRM_BLEND_ALPHA_OPAQUE ;



 int decon_set_bits (struct decon_context*,int ,int,int) ;

__attribute__((used)) static void decon_win_set_bldeq(struct decon_context *ctx, unsigned int win,
    unsigned int alpha, unsigned int pixel_alpha)
{
 u32 mask = BLENDERQ_A_FUNC_F(0xf) | BLENDERQ_B_FUNC_F(0xf);
 u32 val = 0;

 switch (pixel_alpha) {
 case 129:
 case 130:
  val |= BLENDERQ_A_FUNC_F(BLENDERQ_ALPHA_A);
  val |= BLENDERQ_B_FUNC_F(BLENDERQ_ONE_MINUS_ALPHA_A);
  break;
 case 128:
 default:
  if (alpha != DRM_BLEND_ALPHA_OPAQUE) {
   val |= BLENDERQ_A_FUNC_F(BLENDERQ_ALPHA0);
   val |= BLENDERQ_B_FUNC_F(BLENDERQ_ONE_MINUS_ALPHA_A);
  } else {
   val |= BLENDERQ_A_FUNC_F(BLENDERQ_ONE);
   val |= BLENDERQ_B_FUNC_F(BLENDERQ_ONE_MINUS_ALPHA_A);
  }
  break;
 }
 decon_set_bits(ctx, DECON_BLENDERQx(win), mask, val);
}
