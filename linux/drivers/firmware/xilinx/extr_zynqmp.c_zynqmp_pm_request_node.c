
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum zynqmp_pm_request_ack { ____Placeholder_zynqmp_pm_request_ack } zynqmp_pm_request_ack ;


 int PM_REQUEST_NODE ;
 int zynqmp_pm_invoke_fn (int ,int const,int const,int const,int const,int *) ;

__attribute__((used)) static int zynqmp_pm_request_node(const u32 node, const u32 capabilities,
      const u32 qos,
      const enum zynqmp_pm_request_ack ack)
{
 return zynqmp_pm_invoke_fn(PM_REQUEST_NODE, node, capabilities,
       qos, ack, ((void*)0));
}
