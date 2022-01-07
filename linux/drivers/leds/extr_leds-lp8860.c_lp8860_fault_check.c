
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp8860_led {int regmap; } ;


 int LP8860_CLEAR_FAULTS ;
 int LP8860_FAULT ;
 int LP8860_FAULT_CLEAR ;
 int LP8860_LED_FAULT ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int lp8860_fault_check(struct lp8860_led *led)
{
 int ret, fault;
 unsigned int read_buf;

 ret = regmap_read(led->regmap, LP8860_LED_FAULT, &read_buf);
 if (ret)
  goto out;

 fault = read_buf;

 ret = regmap_read(led->regmap, LP8860_FAULT, &read_buf);
 if (ret)
  goto out;

 fault |= read_buf;


 if (fault)
  ret = regmap_write(led->regmap, LP8860_FAULT_CLEAR,
   LP8860_CLEAR_FAULTS);
out:
 return ret;
}
