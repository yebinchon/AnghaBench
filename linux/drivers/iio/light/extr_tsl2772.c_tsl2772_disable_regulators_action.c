
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsl2772_chip {int supplies; } ;


 int ARRAY_SIZE (int ) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static void tsl2772_disable_regulators_action(void *_data)
{
 struct tsl2772_chip *chip = _data;

 regulator_bulk_disable(ARRAY_SIZE(chip->supplies), chip->supplies);
}
