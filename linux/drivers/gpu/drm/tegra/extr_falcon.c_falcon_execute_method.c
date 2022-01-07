
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct falcon {int dummy; } ;


 int FALCON_UCLASS_METHOD_DATA ;
 int FALCON_UCLASS_METHOD_OFFSET ;
 int falcon_writel (struct falcon*,int,int ) ;

void falcon_execute_method(struct falcon *falcon, u32 method, u32 data)
{
 falcon_writel(falcon, method >> 2, FALCON_UCLASS_METHOD_OFFSET);
 falcon_writel(falcon, data, FALCON_UCLASS_METHOD_DATA);
}
