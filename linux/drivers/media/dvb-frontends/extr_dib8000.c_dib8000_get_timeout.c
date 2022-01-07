
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dib8000_state {int symbol_duration; } ;
typedef enum timeout_mode { ____Placeholder_timeout_mode } timeout_mode ;


 int SYMBOL_DEPENDENT_ON ;
 unsigned long jiffies ;
 unsigned long usecs_to_jiffies (int) ;

__attribute__((used)) static unsigned long dib8000_get_timeout(struct dib8000_state *state, u32 delay, enum timeout_mode mode)
{
 if (mode == SYMBOL_DEPENDENT_ON)
  delay *= state->symbol_duration;

 return jiffies + usecs_to_jiffies(delay * 100);
}
