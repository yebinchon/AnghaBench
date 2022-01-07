
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zynqmp_pm_query_data {scalar_t__ qid; int arg3; int arg2; int arg1; } ;


 scalar_t__ PM_QID_CLOCK_GET_NAME ;
 int PM_QUERY_DATA ;
 int zynqmp_pm_invoke_fn (int ,scalar_t__,int ,int ,int ,int *) ;

__attribute__((used)) static int zynqmp_pm_query_data(struct zynqmp_pm_query_data qdata, u32 *out)
{
 int ret;

 ret = zynqmp_pm_invoke_fn(PM_QUERY_DATA, qdata.qid, qdata.arg1,
      qdata.arg2, qdata.arg3, out);






 return qdata.qid == PM_QID_CLOCK_GET_NAME ? 0 : ret;
}
