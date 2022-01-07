
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dc_link {struct amdgpu_dm_connector* priv; } ;
struct TYPE_3__ {int hw_mutex; } ;
struct TYPE_4__ {TYPE_1__ aux; } ;
struct amdgpu_dm_connector {TYPE_2__ dm_dp_aux; } ;


 int BUG_ON (char*) ;
 int dc_link_is_dp_sink_present (struct dc_link*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

bool dm_helpers_is_dp_sink_present(struct dc_link *link)
{
 bool dp_sink_present;
 struct amdgpu_dm_connector *aconnector = link->priv;

 if (!aconnector) {
  BUG_ON("Failed to found connector for link!");
  return 1;
 }

 mutex_lock(&aconnector->dm_dp_aux.aux.hw_mutex);
 dp_sink_present = dc_link_is_dp_sink_present(link);
 mutex_unlock(&aconnector->dm_dp_aux.aux.hw_mutex);
 return dp_sink_present;
}
