
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend_private {scalar_t__ release_jiffies; TYPE_1__* dvbdev; } ;
struct dvb_frontend {scalar_t__ exit; struct dvb_frontend_private* frontend_priv; } ;
struct TYPE_2__ {int writers; } ;


 scalar_t__ DVB_FE_NO_EXIT ;
 int HZ ;
 int dvb_shutdown_timeout ;
 int jiffies ;
 scalar_t__ time_after_eq (int ,scalar_t__) ;

__attribute__((used)) static int dvb_frontend_is_exiting(struct dvb_frontend *fe)
{
 struct dvb_frontend_private *fepriv = fe->frontend_priv;

 if (fe->exit != DVB_FE_NO_EXIT)
  return 1;

 if (fepriv->dvbdev->writers == 1)
  if (time_after_eq(jiffies, fepriv->release_jiffies +
      dvb_shutdown_timeout * HZ))
   return 1;

 return 0;
}
