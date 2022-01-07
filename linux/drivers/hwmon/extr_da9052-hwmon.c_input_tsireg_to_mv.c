
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052_hwmon {int tsiref_mv; } ;


 int DIV_ROUND_CLOSEST (int,int) ;

__attribute__((used)) static inline int input_tsireg_to_mv(struct da9052_hwmon *hwmon, int value)
{
 return DIV_ROUND_CLOSEST(value * hwmon->tsiref_mv, 1023);
}
