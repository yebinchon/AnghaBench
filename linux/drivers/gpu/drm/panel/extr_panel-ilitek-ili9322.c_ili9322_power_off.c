
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ili9322 {int supplies; } ;


 int ARRAY_SIZE (int ) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static int ili9322_power_off(struct ili9322 *ili)
{
 return regulator_bulk_disable(ARRAY_SIZE(ili->supplies), ili->supplies);
}
