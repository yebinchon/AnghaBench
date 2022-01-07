
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ib_unregister_client (int *) ;
 int opa_vnic_client ;

__attribute__((used)) static void opa_vnic_deinit(void)
{
 ib_unregister_client(&opa_vnic_client);
}
