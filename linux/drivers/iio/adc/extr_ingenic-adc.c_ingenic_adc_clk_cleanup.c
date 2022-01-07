
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clk_unprepare (void*) ;

__attribute__((used)) static void ingenic_adc_clk_cleanup(void *data)
{
 clk_unprepare(data);
}
