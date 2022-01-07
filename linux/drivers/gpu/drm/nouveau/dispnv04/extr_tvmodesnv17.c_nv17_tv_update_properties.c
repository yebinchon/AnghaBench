
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv17_tv_state {int ptv_204; int* tv_enc; } ;
struct TYPE_2__ {int * tv_enc; } ;
struct nv17_tv_norm_params {TYPE_1__ tv_enc_mode; } ;
struct nv17_tv_encoder {int select_subconnector; int subconnector; int pin_mask; int hue; int saturation; struct nv17_tv_state state; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;






 struct nv17_tv_norm_params* get_tv_norm (struct drm_encoder*) ;
 void* interpolate (int ,int ,int,int ) ;
 int nv_load_ptv (struct drm_device*,struct nv17_tv_state*,int) ;
 int nv_load_tv_enc (struct drm_device*,struct nv17_tv_state*,int) ;
 struct nv17_tv_encoder* to_tv_enc (struct drm_encoder*) ;

void nv17_tv_update_properties(struct drm_encoder *encoder)
{
 struct drm_device *dev = encoder->dev;
 struct nv17_tv_encoder *tv_enc = to_tv_enc(encoder);
 struct nv17_tv_state *regs = &tv_enc->state;
 struct nv17_tv_norm_params *tv_norm = get_tv_norm(encoder);
 int subconnector = tv_enc->select_subconnector ?
      tv_enc->select_subconnector :
      tv_enc->subconnector;

 switch (subconnector) {
 case 130:
 {
  regs->ptv_204 = 0x2;


  if (tv_enc->pin_mask & 0x4)
   regs->ptv_204 |= 0x010000;
  else if (tv_enc->pin_mask & 0x2)
   regs->ptv_204 |= 0x100000;
  else
   regs->ptv_204 |= 0x110000;

  regs->tv_enc[0x7] = 0x10;
  break;
 }
 case 128:
  regs->ptv_204 = 0x11012;
  regs->tv_enc[0x7] = 0x18;
  break;

 case 131:
  regs->ptv_204 = 0x111333;
  regs->tv_enc[0x7] = 0x14;
  break;

 case 129:
  regs->ptv_204 = 0x111012;
  regs->tv_enc[0x7] = 0x18;
  break;
 }

 regs->tv_enc[0x20] = interpolate(0, tv_norm->tv_enc_mode.tv_enc[0x20],
      255, tv_enc->saturation);
 regs->tv_enc[0x22] = interpolate(0, tv_norm->tv_enc_mode.tv_enc[0x22],
      255, tv_enc->saturation);
 regs->tv_enc[0x25] = tv_enc->hue * 255 / 100;

 nv_load_ptv(dev, regs, 204);
 nv_load_tv_enc(dev, regs, 7);
 nv_load_tv_enc(dev, regs, 20);
 nv_load_tv_enc(dev, regs, 22);
 nv_load_tv_enc(dev, regs, 25);
}
