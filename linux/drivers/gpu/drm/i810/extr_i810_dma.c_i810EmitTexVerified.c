
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int * dev_private; } ;
typedef int drm_i810_private_t ;


 int ADVANCE_LP_RING () ;
 int BEGIN_LP_RING (int) ;
 unsigned int GFX_OP_MAP_INFO ;
 size_t I810_TEXREG_MI1 ;
 size_t I810_TEXREG_MI2 ;
 size_t I810_TEXREG_MI3 ;
 int I810_TEX_SETUP_SIZE ;
 int OUT_RING (unsigned int volatile) ;
 int RING_LOCALS ;
 int printk (char*) ;

__attribute__((used)) static void i810EmitTexVerified(struct drm_device *dev, volatile unsigned int *code)
{
 drm_i810_private_t *dev_priv = dev->dev_private;
 int i, j = 0;
 unsigned int tmp;
 RING_LOCALS;

 BEGIN_LP_RING(I810_TEX_SETUP_SIZE);

 OUT_RING(GFX_OP_MAP_INFO);
 OUT_RING(code[I810_TEXREG_MI1]);
 OUT_RING(code[I810_TEXREG_MI2]);
 OUT_RING(code[I810_TEXREG_MI3]);

 for (i = 4; i < I810_TEX_SETUP_SIZE; i++) {
  tmp = code[i];

  if ((tmp & (7 << 29)) == (3 << 29) &&
      (tmp & (0x1f << 24)) < (0x1d << 24)) {
   OUT_RING(tmp);
   j++;
  } else
   printk("texture state dropped!!!\n");
 }

 if (j & 1)
  OUT_RING(0);

 ADVANCE_LP_RING();
}
