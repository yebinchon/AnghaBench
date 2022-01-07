
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_mgmt_method_table {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 struct ib_mad_mgmt_method_table* kzalloc (int,int ) ;

__attribute__((used)) static int allocate_method_table(struct ib_mad_mgmt_method_table **method)
{

 *method = kzalloc(sizeof **method, GFP_ATOMIC);
 return (*method) ? 0 : (-ENOMEM);
}
