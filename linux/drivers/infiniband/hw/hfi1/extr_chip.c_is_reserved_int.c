
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;
typedef int name ;


 int dd_dev_err (struct hfi1_devdata*,char*,int ) ;
 int is_reserved_name (char*,int,unsigned int) ;

__attribute__((used)) static void is_reserved_int(struct hfi1_devdata *dd, unsigned int source)
{
 char name[64];

 dd_dev_err(dd, "unexpected %s interrupt\n",
     is_reserved_name(name, sizeof(name), source));
}
