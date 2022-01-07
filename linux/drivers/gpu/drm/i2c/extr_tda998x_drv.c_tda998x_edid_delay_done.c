
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct tda998x_priv {int edid_delay_active; int detect_work; int edid_delay_waitq; } ;


 int edid_delay_timer ;
 struct tda998x_priv* from_timer (int ,struct timer_list*,int ) ;
 struct tda998x_priv* priv ;
 int schedule_work (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void tda998x_edid_delay_done(struct timer_list *t)
{
 struct tda998x_priv *priv = from_timer(priv, t, edid_delay_timer);

 priv->edid_delay_active = 0;
 wake_up(&priv->edid_delay_waitq);
 schedule_work(&priv->detect_work);
}
