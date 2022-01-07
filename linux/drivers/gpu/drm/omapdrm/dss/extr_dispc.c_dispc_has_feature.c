
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dispc_device {TYPE_1__* feat; } ;
typedef enum dispc_feature_id { ____Placeholder_dispc_feature_id } dispc_feature_id ;
struct TYPE_2__ {unsigned int num_features; int* features; } ;



__attribute__((used)) static bool dispc_has_feature(struct dispc_device *dispc,
         enum dispc_feature_id id)
{
 unsigned int i;

 for (i = 0; i < dispc->feat->num_features; i++) {
  if (dispc->feat->features[i] == id)
   return 1;
 }

 return 0;
}
