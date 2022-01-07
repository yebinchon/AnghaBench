
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_guc_client {int doorbell_id; TYPE_1__* guc; } ;
struct TYPE_2__ {int doorbell_bitmap; } ;


 int GEM_BUG_ON (int) ;
 int GUC_DOORBELL_INVALID ;
 int __clear_bit (int ,int ) ;
 int has_doorbell (struct intel_guc_client*) ;

__attribute__((used)) static void unreserve_doorbell(struct intel_guc_client *client)
{
 GEM_BUG_ON(!has_doorbell(client));

 __clear_bit(client->doorbell_id, client->guc->doorbell_bitmap);
 client->doorbell_id = GUC_DOORBELL_INVALID;
}
