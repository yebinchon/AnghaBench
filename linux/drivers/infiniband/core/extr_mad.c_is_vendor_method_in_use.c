
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_reg_req {int oui; } ;
struct ib_mad_mgmt_vendor_class {struct ib_mad_mgmt_method_table** method_table; int * oui; } ;
struct ib_mad_mgmt_method_table {int dummy; } ;


 int MAX_MGMT_OUI ;
 int memcmp (int ,int ,int) ;
 scalar_t__ method_in_use (struct ib_mad_mgmt_method_table**,struct ib_mad_reg_req*) ;

__attribute__((used)) static int is_vendor_method_in_use(
  struct ib_mad_mgmt_vendor_class *vendor_class,
  struct ib_mad_reg_req *mad_reg_req)
{
 struct ib_mad_mgmt_method_table *method;
 int i;

 for (i = 0; i < MAX_MGMT_OUI; i++) {
  if (!memcmp(vendor_class->oui[i], mad_reg_req->oui, 3)) {
   method = vendor_class->method_table[i];
   if (method) {
    if (method_in_use(&method, mad_reg_req))
     return 1;
    else
     break;
   }
  }
 }
 return 0;
}
