
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyapa {scalar_t__ state; } ;


 scalar_t__ CYAPA_STATE_BL_BUSY ;
 int EAGAIN ;
 int ETIMEDOUT ;
 int cyapa_get_state (struct cyapa*) ;
 int msleep (int) ;

int cyapa_poll_state(struct cyapa *cyapa, unsigned int timeout)
{
 int error;
 int tries = timeout / 100;

 do {
  error = cyapa_get_state(cyapa);
  if (!error && cyapa->state > CYAPA_STATE_BL_BUSY)
   return 0;

  msleep(100);
 } while (tries--);

 return (error == -EAGAIN || error == -ETIMEDOUT) ? -ETIMEDOUT : error;
}
