
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hfi1_devdata {int dummy; } ;


 int dd_dev_err (struct hfi1_devdata*,char*,char const*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int invalid_header(struct hfi1_devdata *dd, const char *what,
     u32 actual, u32 expected)
{
 if (actual == expected)
  return 0;

 dd_dev_err(dd,
     "invalid firmware header field %s: expected 0x%x, actual 0x%x\n",
     what, expected, actual);
 return 1;
}
