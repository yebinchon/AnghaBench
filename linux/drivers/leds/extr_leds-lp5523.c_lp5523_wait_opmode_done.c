
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int usleep_range (int,int) ;

__attribute__((used)) static inline void lp5523_wait_opmode_done(void)
{
 usleep_range(1000, 2000);
}
