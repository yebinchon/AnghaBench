
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_LED_START ;
 int ledtrig_cpu (int ) ;

__attribute__((used)) static int ledtrig_online_cpu(unsigned int cpu)
{
 ledtrig_cpu(CPU_LED_START);
 return 0;
}
