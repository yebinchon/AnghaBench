
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct hgpk_data* private; } ;
struct hgpk_data {int x_tally; int y_tally; int spew_flag; int recalib_wq; int spew_count; } ;






 int SPEW_WATCH_COUNT ;
 int abs (int) ;
 int hgpk_reset_spew_detection (struct hgpk_data*) ;
 int msecs_to_jiffies (int ) ;
 int psmouse_queue_work (struct psmouse*,int *,int ) ;
 int psmouse_warn (struct psmouse*,char*,int,int) ;
 int spew_delay ;

__attribute__((used)) static void hgpk_spewing_hack(struct psmouse *psmouse,
         int l, int r, int x, int y)
{
 struct hgpk_data *priv = psmouse->private;



 if (l || r)
  return;


 if (!spew_delay)
  return;

 if (abs(x) > 3 || abs(y) > 3) {

  hgpk_reset_spew_detection(priv);
  return;
 }



 priv->x_tally += x;
 priv->y_tally += y;

 switch (priv->spew_flag) {
 case 130:

  priv->spew_flag = 131;



 case 131:
  priv->spew_count++;

  if (priv->spew_count < SPEW_WATCH_COUNT)
   break;


  priv->spew_flag = 128;



 case 128:




  if (abs(priv->x_tally) < 3 && abs(priv->y_tally) < 3) {
   psmouse_warn(psmouse, "packet spew detected (%d,%d)\n",
         priv->x_tally, priv->y_tally);
   priv->spew_flag = 129;
   psmouse_queue_work(psmouse, &priv->recalib_wq,
        msecs_to_jiffies(spew_delay));
  }

  break;
 case 129:


  break;
 }
}
