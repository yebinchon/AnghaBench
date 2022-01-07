
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct hfi1_devdata {int dummy; } ;


 int dd_dev_info (struct hfi1_devdata*,char*,char const*,int,int) ;

__attribute__((used)) static void nonzero_msg(struct hfi1_devdata *dd, int idx, const char *what,
   u16 limit)
{
 if (limit != 0)
  dd_dev_info(dd, "Invalid %s limit %d on VL %d, ignoring\n",
       what, (int)limit, idx);
}
