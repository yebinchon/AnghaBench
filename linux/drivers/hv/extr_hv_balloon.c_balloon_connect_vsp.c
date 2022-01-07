
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct hv_device {int channel; } ;
struct TYPE_8__ {int balloon; int hot_add; int hot_add_alignment; } ;
struct TYPE_9__ {TYPE_3__ cap_bits; } ;
struct TYPE_7__ {int size; void* trans_id; int type; } ;
struct TYPE_6__ {int version; } ;
struct dm_version_request {int max_page_number; scalar_t__ min_page_cnt; TYPE_4__ caps; TYPE_2__ hdr; TYPE_1__ version; scalar_t__ is_last_attempt; } ;
struct dm_capabilities {int max_page_number; scalar_t__ min_page_cnt; TYPE_4__ caps; TYPE_2__ hdr; TYPE_1__ version; scalar_t__ is_last_attempt; } ;
struct TYPE_10__ {scalar_t__ state; int host_event; int version; } ;


 int DM_CAPABILITIES_REPORT ;
 scalar_t__ DM_INIT_ERROR ;
 int DM_VERSION_REQUEST ;
 int DYNMEM_MAJOR_VERSION (int ) ;
 int DYNMEM_MINOR_VERSION (int ) ;
 int DYNMEM_PROTOCOL_VERSION_WIN10 ;
 int EPROTO ;
 int ETIMEDOUT ;
 int HZ ;
 int VM_PKT_DATA_INBAND ;
 void* atomic_inc_return (int *) ;
 int balloon_onchannelcallback ;
 TYPE_5__ dm_device ;
 int dm_ring_size ;
 int memset (struct dm_version_request*,int ,int) ;
 int pr_info (char*,int ,int ) ;
 int trans_id ;
 int vmbus_close (int ) ;
 int vmbus_open (int ,int ,int ,int *,int ,int ,struct hv_device*) ;
 int vmbus_sendpacket (int ,struct dm_version_request*,int,unsigned long,int ,int ) ;
 unsigned long wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int balloon_connect_vsp(struct hv_device *dev)
{
 struct dm_version_request version_req;
 struct dm_capabilities cap_msg;
 unsigned long t;
 int ret;

 ret = vmbus_open(dev->channel, dm_ring_size, dm_ring_size, ((void*)0), 0,
    balloon_onchannelcallback, dev);
 if (ret)
  return ret;







 memset(&version_req, 0, sizeof(struct dm_version_request));
 version_req.hdr.type = DM_VERSION_REQUEST;
 version_req.hdr.size = sizeof(struct dm_version_request);
 version_req.hdr.trans_id = atomic_inc_return(&trans_id);
 version_req.version.version = DYNMEM_PROTOCOL_VERSION_WIN10;
 version_req.is_last_attempt = 0;
 dm_device.version = version_req.version.version;

 ret = vmbus_sendpacket(dev->channel, &version_req,
          sizeof(struct dm_version_request),
          (unsigned long)((void*)0), VM_PKT_DATA_INBAND, 0);
 if (ret)
  goto out;

 t = wait_for_completion_timeout(&dm_device.host_event, 5*HZ);
 if (t == 0) {
  ret = -ETIMEDOUT;
  goto out;
 }





 if (dm_device.state == DM_INIT_ERROR) {
  ret = -EPROTO;
  goto out;
 }

 pr_info("Using Dynamic Memory protocol version %u.%u\n",
  DYNMEM_MAJOR_VERSION(dm_device.version),
  DYNMEM_MINOR_VERSION(dm_device.version));




 memset(&cap_msg, 0, sizeof(struct dm_capabilities));
 cap_msg.hdr.type = DM_CAPABILITIES_REPORT;
 cap_msg.hdr.size = sizeof(struct dm_capabilities);
 cap_msg.hdr.trans_id = atomic_inc_return(&trans_id);

 cap_msg.caps.cap_bits.balloon = 1;
 cap_msg.caps.cap_bits.hot_add = 1;





 cap_msg.caps.cap_bits.hot_add_alignment = 7;






 cap_msg.min_page_cnt = 0;
 cap_msg.max_page_number = -1;

 ret = vmbus_sendpacket(dev->channel, &cap_msg,
          sizeof(struct dm_capabilities),
          (unsigned long)((void*)0), VM_PKT_DATA_INBAND, 0);
 if (ret)
  goto out;

 t = wait_for_completion_timeout(&dm_device.host_event, 5*HZ);
 if (t == 0) {
  ret = -ETIMEDOUT;
  goto out;
 }





 if (dm_device.state == DM_INIT_ERROR) {
  ret = -EPROTO;
  goto out;
 }

 return 0;
out:
 vmbus_close(dev->channel);
 return ret;
}
