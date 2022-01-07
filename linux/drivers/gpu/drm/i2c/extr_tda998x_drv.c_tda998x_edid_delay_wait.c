
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda998x_priv {int edid_delay_active; int edid_delay_waitq; } ;


 int wait_event_killable (int ,int) ;

__attribute__((used)) static int tda998x_edid_delay_wait(struct tda998x_priv *priv)
{
 return wait_event_killable(priv->edid_delay_waitq, !priv->edid_delay_active);
}
