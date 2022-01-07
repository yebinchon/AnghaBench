
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_encoder {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {struct intel_encoder* encoder; } ;


 TYPE_1__* to_intel_connector (struct drm_connector*) ;

__attribute__((used)) static inline struct intel_encoder *
intel_attached_encoder(struct drm_connector *connector)
{
 return to_intel_connector(connector)->encoder;
}
