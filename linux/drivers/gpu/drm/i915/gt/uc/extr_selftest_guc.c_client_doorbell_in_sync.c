
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc_client {int doorbell_id; int guc; } ;


 scalar_t__ doorbell_ok (int ,int ) ;

__attribute__((used)) static bool client_doorbell_in_sync(struct intel_guc_client *client)
{
 return !client || doorbell_ok(client->guc, client->doorbell_id);
}
