
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_LED_HALTED ;
 int ledtrig_cpu (int ) ;

__attribute__((used)) static void ledtrig_cpu_syscore_shutdown(void)
{
 ledtrig_cpu(CPU_LED_HALTED);
}
