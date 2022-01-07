
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {scalar_t__ lcb_access_count; } ;



__attribute__((used)) static void init_lcb_access(struct hfi1_devdata *dd)
{
 dd->lcb_access_count = 0;
}
