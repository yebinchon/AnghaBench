
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {int dummy; } ;
struct TYPE_3__ {int possible_crtcs; } ;
struct ast_encoder {TYPE_1__ base; } ;


 int DRM_MODE_ENCODER_DAC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ast_enc_funcs ;
 int ast_enc_helper_funcs ;
 int drm_encoder_helper_add (TYPE_1__*,int *) ;
 int drm_encoder_init (struct drm_device*,TYPE_1__*,int *,int ,int *) ;
 struct ast_encoder* kzalloc (int,int ) ;

__attribute__((used)) static int ast_encoder_init(struct drm_device *dev)
{
 struct ast_encoder *ast_encoder;

 ast_encoder = kzalloc(sizeof(struct ast_encoder), GFP_KERNEL);
 if (!ast_encoder)
  return -ENOMEM;

 drm_encoder_init(dev, &ast_encoder->base, &ast_enc_funcs,
    DRM_MODE_ENCODER_DAC, ((void*)0));
 drm_encoder_helper_add(&ast_encoder->base, &ast_enc_helper_funcs);

 ast_encoder->base.possible_crtcs = 1;
 return 0;
}
