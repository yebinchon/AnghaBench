
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iw_cm_id {int * provider_data; int device; } ;


 int kfree (int *) ;
 int siw_dbg (int ,char*) ;
 int siw_drop_listeners (struct iw_cm_id*) ;

int siw_destroy_listen(struct iw_cm_id *id)
{
 if (!id->provider_data) {
  siw_dbg(id->device, "no cep(s)\n");
  return 0;
 }
 siw_drop_listeners(id);
 kfree(id->provider_data);
 id->provider_data = ((void*)0);

 return 0;
}
