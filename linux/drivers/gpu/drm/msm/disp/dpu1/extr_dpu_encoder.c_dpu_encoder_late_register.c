
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;


 int _dpu_encoder_init_debugfs (struct drm_encoder*) ;

__attribute__((used)) static int dpu_encoder_late_register(struct drm_encoder *encoder)
{
 return _dpu_encoder_init_debugfs(encoder);
}
