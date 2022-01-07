
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct drm_property {int dummy; } ;
struct drm_connector {int dummy; } ;



__attribute__((used)) static int
dce_virtual_set_property(struct drm_connector *connector,
    struct drm_property *property,
    uint64_t val)
{
 return 0;
}
