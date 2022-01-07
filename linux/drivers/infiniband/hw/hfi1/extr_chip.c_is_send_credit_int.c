
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;


 int sc_group_release_update (struct hfi1_devdata*,unsigned int) ;

__attribute__((used)) static void is_send_credit_int(struct hfi1_devdata *dd, unsigned int source)
{
 sc_group_release_update(dd, source);
}
