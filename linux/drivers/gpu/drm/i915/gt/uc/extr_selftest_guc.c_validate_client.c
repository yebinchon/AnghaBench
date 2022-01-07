
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc_client {int priority; scalar_t__ doorbell_id; } ;


 int EINVAL ;
 scalar_t__ GUC_DOORBELL_INVALID ;

__attribute__((used)) static int validate_client(struct intel_guc_client *client, int client_priority)
{
 if (client->priority != client_priority ||
     client->doorbell_id == GUC_DOORBELL_INVALID)
  return -EINVAL;
 else
  return 0;
}
