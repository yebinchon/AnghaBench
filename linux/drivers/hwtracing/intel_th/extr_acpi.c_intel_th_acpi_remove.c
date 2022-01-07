
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct intel_th {int dummy; } ;


 int intel_th_free (struct intel_th*) ;
 struct intel_th* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int intel_th_acpi_remove(struct platform_device *pdev)
{
 struct intel_th *th = platform_get_drvdata(pdev);

 intel_th_free(th);

 return 0;
}
