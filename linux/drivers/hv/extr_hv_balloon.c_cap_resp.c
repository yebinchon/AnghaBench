
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_dynmem_device {int host_event; int state; } ;
struct dm_capabilities_resp_msg {int is_accepted; } ;


 int DM_INIT_ERROR ;
 int complete (int *) ;
 int pr_err (char*) ;

__attribute__((used)) static void cap_resp(struct hv_dynmem_device *dm,
   struct dm_capabilities_resp_msg *cap_resp)
{
 if (!cap_resp->is_accepted) {
  pr_err("Capabilities not accepted by host\n");
  dm->state = DM_INIT_ERROR;
 }
 complete(&dm->host_event);
}
