
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_mcast {int backoff; scalar_t__ delay_until; } ;
struct ipoib_dev_priv {int mcast_task; int wq; int flags; } ;


 int HZ ;
 int IPOIB_FLAG_OPER_UP ;
 int IPOIB_MAX_BACKOFF_SECONDS ;
 int cancel_delayed_work (int *) ;
 scalar_t__ jiffies ;
 int queue_delayed_work (int ,int *,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void __ipoib_mcast_schedule_join_thread(struct ipoib_dev_priv *priv,
            struct ipoib_mcast *mcast,
            bool delay)
{
 if (!test_bit(IPOIB_FLAG_OPER_UP, &priv->flags))
  return;





 cancel_delayed_work(&priv->mcast_task);
 if (mcast && delay) {



  mcast->backoff *= 2;
  if (mcast->backoff > IPOIB_MAX_BACKOFF_SECONDS)
   mcast->backoff = IPOIB_MAX_BACKOFF_SECONDS;
  mcast->delay_until = jiffies + (mcast->backoff * HZ);







  queue_delayed_work(priv->wq, &priv->mcast_task, 0);
 } else if (delay) {





  queue_delayed_work(priv->wq, &priv->mcast_task, HZ);
 } else
  queue_delayed_work(priv->wq, &priv->mcast_task, 0);
}
