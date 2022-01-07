
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_10__ {unsigned long start_page; unsigned long page_cnt; } ;
struct TYPE_11__ {TYPE_3__ finfo; } ;
struct TYPE_8__ {unsigned long start_page; unsigned long page_cnt; } ;
struct TYPE_9__ {TYPE_1__ finfo; } ;
struct TYPE_12__ {TYPE_4__ ha_region_range; TYPE_2__ ha_page_range; } ;
struct hv_dynmem_device {TYPE_7__* dev; int state; int num_pages_added; int host_specified_ha_region; TYPE_5__ ha_wrk; } ;
struct TYPE_13__ {int size; int trans_id; int type; } ;
struct dm_hot_add_response {scalar_t__ page_count; int result; TYPE_6__ hdr; } ;
struct TYPE_14__ {int channel; } ;


 int DM_INITIALIZED ;
 int DM_MEM_HOT_ADD_RESPONSE ;
 unsigned long HA_CHUNK ;
 int VM_PKT_DATA_INBAND ;
 int atomic_inc_return (int *) ;
 struct hv_dynmem_device dm_device ;
 scalar_t__ do_hot_add ;
 int memset (struct dm_hot_add_response*,int ,int) ;
 int pr_err (char*) ;
 scalar_t__ process_hot_add (unsigned long,unsigned long,unsigned long,unsigned long) ;
 int trans_id ;
 int vmbus_sendpacket (int ,struct dm_hot_add_response*,int,unsigned long,int ,int ) ;

__attribute__((used)) static void hot_add_req(struct work_struct *dummy)
{
 struct dm_hot_add_response resp;




 struct hv_dynmem_device *dm = &dm_device;

 memset(&resp, 0, sizeof(struct dm_hot_add_response));
 resp.hdr.type = DM_MEM_HOT_ADD_RESPONSE;
 resp.hdr.size = sizeof(struct dm_hot_add_response);
 if (resp.page_count > 0)
  resp.result = 1;
 else if (!do_hot_add)
  resp.result = 1;
 else
  resp.result = 0;

 if (!do_hot_add || (resp.page_count == 0))
  pr_err("Memory hot add failed\n");

 dm->state = DM_INITIALIZED;
 resp.hdr.trans_id = atomic_inc_return(&trans_id);
 vmbus_sendpacket(dm->dev->channel, &resp,
   sizeof(struct dm_hot_add_response),
   (unsigned long)((void*)0),
   VM_PKT_DATA_INBAND, 0);
}
