
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_hdcp {int check_work; int cp_irq_queue; int cp_irq_count; int shim; } ;
struct intel_connector {struct intel_hdcp hdcp; } ;


 int atomic_inc (int *) ;
 int schedule_delayed_work (int *,int ) ;
 int wake_up_all (int *) ;

void intel_hdcp_handle_cp_irq(struct intel_connector *connector)
{
 struct intel_hdcp *hdcp = &connector->hdcp;

 if (!hdcp->shim)
  return;

 atomic_inc(&connector->hdcp.cp_irq_count);
 wake_up_all(&connector->hdcp.cp_irq_queue);

 schedule_delayed_work(&hdcp->check_work, 0);
}
