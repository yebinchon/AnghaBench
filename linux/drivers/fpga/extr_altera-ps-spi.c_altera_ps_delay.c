
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int udelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static inline void altera_ps_delay(int delay_us)
{
 if (delay_us > 10)
  usleep_range(delay_us, delay_us + 5);
 else
  udelay(delay_us);
}
