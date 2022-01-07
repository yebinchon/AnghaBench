
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opt3001 {int int_time; } ;


 int IIO_VAL_INT_PLUS_MICRO ;

__attribute__((used)) static int opt3001_get_int_time(struct opt3001 *opt, int *val, int *val2)
{
 *val = 0;
 *val2 = opt->int_time;

 return IIO_VAL_INT_PLUS_MICRO;
}
