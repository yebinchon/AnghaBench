
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct idma64_chip {int dummy; } ;


 int idma64_remove (struct idma64_chip*) ;
 struct idma64_chip* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int idma64_platform_remove(struct platform_device *pdev)
{
 struct idma64_chip *chip = platform_get_drvdata(pdev);

 return idma64_remove(chip);
}
