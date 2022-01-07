
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc_client {scalar_t__ priority; } ;


 scalar_t__ GUC_CLIENT_PRIORITY_HIGH ;
 scalar_t__ GUC_CLIENT_PRIORITY_KMD_HIGH ;

__attribute__((used)) static inline bool is_high_priority(struct intel_guc_client *client)
{
 return (client->priority == GUC_CLIENT_PRIORITY_KMD_HIGH ||
  client->priority == GUC_CLIENT_PRIORITY_HIGH);
}
