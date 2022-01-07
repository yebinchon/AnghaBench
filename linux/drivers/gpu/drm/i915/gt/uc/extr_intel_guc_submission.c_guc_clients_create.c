
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc_client {int dummy; } ;
struct intel_guc {struct intel_guc_client* execbuf_client; } ;


 int DRM_ERROR (char*) ;
 int GEM_BUG_ON (struct intel_guc_client*) ;
 int GUC_CLIENT_PRIORITY_KMD_NORMAL ;
 scalar_t__ IS_ERR (struct intel_guc_client*) ;
 int PTR_ERR (struct intel_guc_client*) ;
 struct intel_guc_client* guc_client_alloc (struct intel_guc*,int ) ;

__attribute__((used)) static int guc_clients_create(struct intel_guc *guc)
{
 struct intel_guc_client *client;

 GEM_BUG_ON(guc->execbuf_client);

 client = guc_client_alloc(guc, GUC_CLIENT_PRIORITY_KMD_NORMAL);
 if (IS_ERR(client)) {
  DRM_ERROR("Failed to create GuC client for submission!\n");
  return PTR_ERR(client);
 }
 guc->execbuf_client = client;

 return 0;
}
