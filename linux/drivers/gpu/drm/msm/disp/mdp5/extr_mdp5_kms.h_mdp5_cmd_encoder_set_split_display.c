
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static inline int mdp5_cmd_encoder_set_split_display(
 struct drm_encoder *encoder, struct drm_encoder *slave_encoder)
{
 return -EINVAL;
}
