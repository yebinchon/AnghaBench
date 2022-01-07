
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_mode_config {int max_width; int max_height; int allow_fb_modifiers; int * helper_private; int * funcs; scalar_t__ min_height; scalar_t__ min_width; } ;
struct TYPE_2__ {struct drm_mode_config mode_config; } ;
struct komeda_kms_dev {TYPE_1__ base; } ;
struct komeda_dev {int dummy; } ;


 int drm_mode_config_init (TYPE_1__*) ;
 int komeda_kms_setup_crtcs (struct komeda_kms_dev*,struct komeda_dev*) ;
 int komeda_mode_config_funcs ;
 int komeda_mode_config_helpers ;

__attribute__((used)) static void komeda_kms_mode_config_init(struct komeda_kms_dev *kms,
     struct komeda_dev *mdev)
{
 struct drm_mode_config *config = &kms->base.mode_config;

 drm_mode_config_init(&kms->base);

 komeda_kms_setup_crtcs(kms, mdev);


 config->min_width = 0;
 config->min_height = 0;
 config->max_width = 4096;
 config->max_height = 4096;
 config->allow_fb_modifiers = 1;

 config->funcs = &komeda_mode_config_funcs;
 config->helper_private = &komeda_mode_config_helpers;
}
