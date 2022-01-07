
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_guc_client {scalar_t__ doorbell_id; TYPE_1__* guc; } ;
struct TYPE_2__ {int doorbell_bitmap; } ;


 scalar_t__ GUC_DOORBELL_INVALID ;
 int test_bit (scalar_t__,int ) ;

__attribute__((used)) static bool has_doorbell(struct intel_guc_client *client)
{
 if (client->doorbell_id == GUC_DOORBELL_INVALID)
  return 0;

 return test_bit(client->doorbell_id, client->guc->doorbell_bitmap);
}
