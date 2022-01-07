
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct drm_connector {int dummy; } ;



__attribute__((used)) static int
sil164_encoder_create_resources(struct drm_encoder *encoder,
    struct drm_connector *connector)
{
 return 0;
}
