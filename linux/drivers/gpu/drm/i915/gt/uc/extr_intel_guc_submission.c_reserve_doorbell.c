
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u16 ;
struct intel_guc_client {unsigned long doorbell_id; int stage_id; TYPE_1__* guc; } ;
struct TYPE_2__ {int doorbell_bitmap; } ;


 int DRM_DEBUG_DRIVER (char*,int ,int ,unsigned long) ;
 int ENOSPC ;
 int GEM_BUG_ON (int) ;
 unsigned long GUC_DOORBELL_INVALID ;
 int GUC_NUM_DOORBELLS ;
 int __set_bit (unsigned long,int ) ;
 unsigned long find_next_zero_bit (int ,unsigned long,unsigned long) ;
 scalar_t__ is_high_priority (struct intel_guc_client*) ;
 int yesno (scalar_t__) ;

__attribute__((used)) static int reserve_doorbell(struct intel_guc_client *client)
{
 unsigned long offset;
 unsigned long end;
 u16 id;

 GEM_BUG_ON(client->doorbell_id != GUC_DOORBELL_INVALID);






 offset = 0;
 end = GUC_NUM_DOORBELLS / 2;
 if (is_high_priority(client)) {
  offset = end;
  end += offset;
 }

 id = find_next_zero_bit(client->guc->doorbell_bitmap, end, offset);
 if (id == end)
  return -ENOSPC;

 __set_bit(id, client->guc->doorbell_bitmap);
 client->doorbell_id = id;
 DRM_DEBUG_DRIVER("client %u (high prio=%s) reserved doorbell: %d\n",
    client->stage_id, yesno(is_high_priority(client)),
    id);
 return 0;
}
