
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_device {int regulator; } ;


 int regulator_disable (int ) ;

__attribute__((used)) static void panfrost_regulator_fini(struct panfrost_device *pfdev)
{
 regulator_disable(pfdev->regulator);
}
