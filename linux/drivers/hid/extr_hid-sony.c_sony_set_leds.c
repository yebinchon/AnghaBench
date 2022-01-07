
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sony_sc {int quirks; } ;


 int BUZZ_CONTROLLER ;
 int SONY_WORKER_STATE ;
 int buzz_set_leds (struct sony_sc*) ;
 int sony_schedule_work (struct sony_sc*,int ) ;

__attribute__((used)) static void sony_set_leds(struct sony_sc *sc)
{
 if (!(sc->quirks & BUZZ_CONTROLLER))
  sony_schedule_work(sc, SONY_WORKER_STATE);
 else
  buzz_set_leds(sc);
}
