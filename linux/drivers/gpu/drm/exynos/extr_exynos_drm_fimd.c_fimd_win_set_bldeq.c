
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimd_context {int dummy; } ;


 int BLENDEQ_ALPHA0 ;
 int BLENDEQ_ALPHA_A ;
 int BLENDEQ_A_FUNC_F (int) ;
 int BLENDEQ_B_FUNC_F (int) ;
 int BLENDEQ_ONE ;
 int BLENDEQ_ONE_MINUS_ALPHA_A ;
 int BLENDEQx (unsigned int) ;
 unsigned int DRM_BLEND_ALPHA_OPAQUE ;



 int fimd_set_bits (struct fimd_context*,int ,int,int) ;

__attribute__((used)) static void fimd_win_set_bldeq(struct fimd_context *ctx, unsigned int win,
          unsigned int alpha, unsigned int pixel_alpha)
{
 u32 mask = BLENDEQ_A_FUNC_F(0xf) | BLENDEQ_B_FUNC_F(0xf);
 u32 val = 0;

 switch (pixel_alpha) {
 case 129:
 case 130:
  val |= BLENDEQ_A_FUNC_F(BLENDEQ_ALPHA_A);
  val |= BLENDEQ_B_FUNC_F(BLENDEQ_ONE_MINUS_ALPHA_A);
  break;
 case 128:
 default:
  if (alpha != DRM_BLEND_ALPHA_OPAQUE) {
   val |= BLENDEQ_A_FUNC_F(BLENDEQ_ALPHA0);
   val |= BLENDEQ_B_FUNC_F(BLENDEQ_ONE_MINUS_ALPHA_A);
  } else {
   val |= BLENDEQ_A_FUNC_F(BLENDEQ_ONE);
   val |= BLENDEQ_B_FUNC_F(BLENDEQ_ONE_MINUS_ALPHA_A);
  }
  break;
 }
 fimd_set_bits(ctx, BLENDEQx(win), mask, val);
}
