
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int pport; } ;


 int __count_port_discards (int ) ;

__attribute__((used)) static void count_port_inactive(struct hfi1_devdata *dd)
{
 __count_port_discards(dd->pport);
}
