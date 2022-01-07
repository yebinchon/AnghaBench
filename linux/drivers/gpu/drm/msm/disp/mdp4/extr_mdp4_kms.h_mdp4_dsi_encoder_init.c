
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct drm_device {int dummy; } ;


 int ENODEV ;
 struct drm_encoder* ERR_PTR (int ) ;

__attribute__((used)) static inline struct drm_encoder *mdp4_dsi_encoder_init(struct drm_device *dev)
{
 return ERR_PTR(-ENODEV);
}
