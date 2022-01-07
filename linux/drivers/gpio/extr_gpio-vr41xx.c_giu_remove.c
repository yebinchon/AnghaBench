
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int * giu_base ;

__attribute__((used)) static int giu_remove(struct platform_device *pdev)
{
 if (giu_base) {
  giu_base = ((void*)0);
 }

 return 0;
}
