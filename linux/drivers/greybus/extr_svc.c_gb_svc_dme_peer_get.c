
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct gb_svc_dme_peer_get_response {int attr_value; int result_code; } ;
struct gb_svc_dme_peer_get_request {void* selector; void* attr; int intf_id; } ;
struct gb_svc {int dev; int connection; } ;
typedef int response ;
typedef int request ;


 int EREMOTEIO ;
 int GB_SVC_TYPE_DME_PEER_GET ;
 void* cpu_to_le16 (int) ;
 int dev_err (int *,char*,int ,int,int,int) ;
 int gb_operation_sync (int ,int ,struct gb_svc_dme_peer_get_request*,int,struct gb_svc_dme_peer_get_response*,int) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

int gb_svc_dme_peer_get(struct gb_svc *svc, u8 intf_id, u16 attr, u16 selector,
   u32 *value)
{
 struct gb_svc_dme_peer_get_request request;
 struct gb_svc_dme_peer_get_response response;
 u16 result;
 int ret;

 request.intf_id = intf_id;
 request.attr = cpu_to_le16(attr);
 request.selector = cpu_to_le16(selector);

 ret = gb_operation_sync(svc->connection, GB_SVC_TYPE_DME_PEER_GET,
    &request, sizeof(request),
    &response, sizeof(response));
 if (ret) {
  dev_err(&svc->dev, "failed to get DME attribute (%u 0x%04x %u): %d\n",
   intf_id, attr, selector, ret);
  return ret;
 }

 result = le16_to_cpu(response.result_code);
 if (result) {
  dev_err(&svc->dev, "UniPro error while getting DME attribute (%u 0x%04x %u): %u\n",
   intf_id, attr, selector, result);
  return -EREMOTEIO;
 }

 if (value)
  *value = le32_to_cpu(response.attr_value);

 return 0;
}
