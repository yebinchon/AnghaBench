
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tc_data {int regmap; } ;


 int regmap_read_poll_timeout (int ,unsigned int,unsigned int,int,unsigned long,int ) ;

__attribute__((used)) static inline int tc_poll_timeout(struct tc_data *tc, unsigned int addr,
      unsigned int cond_mask,
      unsigned int cond_value,
      unsigned long sleep_us, u64 timeout_us)
{
 unsigned int val;

 return regmap_read_poll_timeout(tc->regmap, addr, val,
     (val & cond_mask) == cond_value,
     sleep_us, timeout_us);
}
