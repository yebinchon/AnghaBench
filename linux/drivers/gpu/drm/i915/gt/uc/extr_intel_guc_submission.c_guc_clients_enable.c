
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc {int execbuf_client; } ;


 int __guc_client_enable (int ) ;

__attribute__((used)) static int guc_clients_enable(struct intel_guc *guc)
{
 return __guc_client_enable(guc->execbuf_client);
}
