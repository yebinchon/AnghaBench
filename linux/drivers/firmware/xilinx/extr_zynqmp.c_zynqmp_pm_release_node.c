
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PM_RELEASE_NODE ;
 int zynqmp_pm_invoke_fn (int ,int const,int ,int ,int ,int *) ;

__attribute__((used)) static int zynqmp_pm_release_node(const u32 node)
{
 return zynqmp_pm_invoke_fn(PM_RELEASE_NODE, node, 0, 0, 0, ((void*)0));
}
