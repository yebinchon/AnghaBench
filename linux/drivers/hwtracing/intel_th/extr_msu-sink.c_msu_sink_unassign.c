
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msu_sink_private {struct msu_sink_private* sgts; } ;


 int kfree (struct msu_sink_private*) ;

__attribute__((used)) static void msu_sink_unassign(void *data)
{
 struct msu_sink_private *priv = data;

 kfree(priv->sgts);
 kfree(priv);
}
