
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hfi1_devdata {int dummy; } ;
typedef int buf ;


 int dd_dev_info (struct hfi1_devdata*,char*,int ) ;
 int lcb_err_string (char*,int,int ) ;

__attribute__((used)) static void handle_lcb_err(struct hfi1_devdata *dd, u32 unused, u64 reg)
{
 char buf[96];

 dd_dev_info(dd, "LCB Error: %s\n",
      lcb_err_string(buf, sizeof(buf), reg));
}
