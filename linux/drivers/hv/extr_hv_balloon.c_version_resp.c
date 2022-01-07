
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hv_dynmem_device {scalar_t__ next_version; scalar_t__ version; int host_event; int state; TYPE_3__* dev; } ;
struct dm_version_response {scalar_t__ is_accepted; } ;
struct TYPE_5__ {scalar_t__ version; } ;
struct TYPE_4__ {int size; int trans_id; int type; } ;
struct dm_version_request {int is_last_attempt; TYPE_2__ version; TYPE_1__ hdr; } ;
struct TYPE_6__ {int channel; } ;


 int DM_INIT_ERROR ;
 int DM_VERSION_REQUEST ;
 scalar_t__ DYNMEM_PROTOCOL_VERSION_WIN7 ;

 int VM_PKT_DATA_INBAND ;
 int atomic_inc_return (int *) ;
 int complete (int *) ;
 int memset (struct dm_version_request*,int ,int) ;
 int trans_id ;
 int vmbus_sendpacket (int ,struct dm_version_request*,int,unsigned long,int ,int ) ;

__attribute__((used)) static void version_resp(struct hv_dynmem_device *dm,
   struct dm_version_response *vresp)
{
 struct dm_version_request version_req;
 int ret;

 if (vresp->is_accepted) {





  complete(&dm->host_event);
  return;
 }







 if (dm->next_version == 0)
  goto version_error;

 memset(&version_req, 0, sizeof(struct dm_version_request));
 version_req.hdr.type = DM_VERSION_REQUEST;
 version_req.hdr.size = sizeof(struct dm_version_request);
 version_req.hdr.trans_id = atomic_inc_return(&trans_id);
 version_req.version.version = dm->next_version;
 dm->version = version_req.version.version;





 switch (version_req.version.version) {
 case 128:
  dm->next_version = DYNMEM_PROTOCOL_VERSION_WIN7;
  version_req.is_last_attempt = 0;
  break;
 default:
  dm->next_version = 0;
  version_req.is_last_attempt = 1;
 }

 ret = vmbus_sendpacket(dm->dev->channel, &version_req,
    sizeof(struct dm_version_request),
    (unsigned long)((void*)0),
    VM_PKT_DATA_INBAND, 0);

 if (ret)
  goto version_error;

 return;

version_error:
 dm->state = DM_INIT_ERROR;
 complete(&dm->host_event);
}
