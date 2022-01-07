
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc_client {int dummy; } ;
struct intel_guc {int execbuf_client; } ;


 struct intel_guc_client* fetch_and_zero (int *) ;
 int guc_client_free (struct intel_guc_client*) ;

__attribute__((used)) static void guc_clients_destroy(struct intel_guc *guc)
{
 struct intel_guc_client *client;

 client = fetch_and_zero(&guc->execbuf_client);
 if (client)
  guc_client_free(client);
}
