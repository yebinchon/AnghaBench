
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct send_context {int credits; } ;



u32 sc_percent_to_threshold(struct send_context *sc, u32 percent)
{
 return (sc->credits * percent) / 100;
}
