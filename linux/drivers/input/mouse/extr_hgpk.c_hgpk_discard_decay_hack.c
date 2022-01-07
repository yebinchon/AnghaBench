
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct hgpk_data* private; } ;
struct hgpk_data {int xlast; int xbigj; int xsaw_secondary; int ylast; int ybigj; int ysaw_secondary; int recalib_wq; } ;


 int abs (int) ;
 scalar_t__ approx_half (int,int) ;
 scalar_t__ jumpy_delay ;
 int msecs_to_jiffies (scalar_t__) ;
 int psmouse_queue_work (struct psmouse*,int *,int ) ;
 int psmouse_warn (struct psmouse*,char*,...) ;
 int recalib_delta ;

__attribute__((used)) static int hgpk_discard_decay_hack(struct psmouse *psmouse, int x, int y)
{
 struct hgpk_data *priv = psmouse->private;
 int avx, avy;
 bool do_recal = 0;

 avx = abs(x);
 avy = abs(y);


 if (avx > recalib_delta ||
  (avx > recalib_delta / 2 && ((avx / 4) > priv->xlast))) {
  psmouse_warn(psmouse, "detected %dpx jump in x\n", x);
  priv->xbigj = avx;
 } else if (approx_half(avx, priv->xbigj)) {
  psmouse_warn(psmouse, "detected secondary %dpx jump in x\n", x);
  priv->xbigj = avx;
  priv->xsaw_secondary++;
 } else {
  if (priv->xbigj && priv->xsaw_secondary > 1)
   do_recal = 1;
  priv->xbigj = 0;
  priv->xsaw_secondary = 0;
 }

 if (avy > recalib_delta ||
  (avy > recalib_delta / 2 && ((avy / 4) > priv->ylast))) {
  psmouse_warn(psmouse, "detected %dpx jump in y\n", y);
  priv->ybigj = avy;
 } else if (approx_half(avy, priv->ybigj)) {
  psmouse_warn(psmouse, "detected secondary %dpx jump in y\n", y);
  priv->ybigj = avy;
  priv->ysaw_secondary++;
 } else {
  if (priv->ybigj && priv->ysaw_secondary > 1)
   do_recal = 1;
  priv->ybigj = 0;
  priv->ysaw_secondary = 0;
 }

 priv->xlast = avx;
 priv->ylast = avy;

 if (do_recal && jumpy_delay) {
  psmouse_warn(psmouse, "scheduling recalibration\n");
  psmouse_queue_work(psmouse, &priv->recalib_wq,
    msecs_to_jiffies(jumpy_delay));
 }

 return priv->xbigj || priv->ybigj;
}
