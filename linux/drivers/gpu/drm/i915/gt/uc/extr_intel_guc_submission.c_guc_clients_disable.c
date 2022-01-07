
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc {scalar_t__ execbuf_client; } ;


 int __guc_client_disable (scalar_t__) ;

__attribute__((used)) static void guc_clients_disable(struct intel_guc *guc)
{
 if (guc->execbuf_client)
  __guc_client_disable(guc->execbuf_client);
}
