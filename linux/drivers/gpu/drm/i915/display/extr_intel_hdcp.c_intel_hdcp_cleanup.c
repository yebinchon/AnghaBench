
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int streams; } ;
struct TYPE_4__ {int mutex; TYPE_1__ port_data; int shim; } ;
struct intel_connector {TYPE_2__ hdcp; } ;


 int kfree (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void intel_hdcp_cleanup(struct intel_connector *connector)
{
 if (!connector->hdcp.shim)
  return;

 mutex_lock(&connector->hdcp.mutex);
 kfree(connector->hdcp.port_data.streams);
 mutex_unlock(&connector->hdcp.mutex);
}
