
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int L4_BUSY ;
 int L4_PORT ;
 unsigned int L4_TIMEOUT ;
 int inb (int ) ;

__attribute__((used)) static int l4_wait_ready(void)
{
 unsigned int t = L4_TIMEOUT;

 while ((inb(L4_PORT) & L4_BUSY) && t > 0) t--;
 return -(t <= 0);
}
