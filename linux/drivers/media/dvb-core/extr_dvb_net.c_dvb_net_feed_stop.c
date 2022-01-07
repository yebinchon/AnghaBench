
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct net_device {int name; } ;
struct dvb_net_priv {scalar_t__ feedtype; int multi_num; int mutex; TYPE_2__* tsfeed; TYPE_1__* demux; TYPE_5__* secfeed; int ** multi_secfilter; int * secfilter; } ;
struct TYPE_11__ {int (* release_filter ) (TYPE_5__*,int *) ;int (* stop_filtering ) (TYPE_5__*) ;scalar_t__ is_filtering; } ;
struct TYPE_10__ {int (* stop_filtering ) (TYPE_2__*) ;scalar_t__ is_filtering; } ;
struct TYPE_9__ {int (* release_ts_feed ) (TYPE_1__*,TYPE_2__*) ;int (* release_section_feed ) (TYPE_1__*,TYPE_5__*) ;} ;


 scalar_t__ DVB_NET_FEEDTYPE_MPE ;
 scalar_t__ DVB_NET_FEEDTYPE_ULE ;
 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_dbg (struct net_device*,char*,...) ;
 struct dvb_net_priv* netdev_priv (struct net_device*) ;
 int pr_err (char*,int ) ;
 int stub1 (TYPE_5__*) ;
 int stub2 (TYPE_5__*,int *) ;
 int stub3 (TYPE_5__*,int *) ;
 int stub4 (TYPE_1__*,TYPE_5__*) ;
 int stub5 (TYPE_2__*) ;
 int stub6 (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int dvb_net_feed_stop(struct net_device *dev)
{
 struct dvb_net_priv *priv = netdev_priv(dev);
 int i, ret = 0;

 mutex_lock(&priv->mutex);
 if (priv->feedtype == DVB_NET_FEEDTYPE_MPE) {
  if (priv->secfeed) {
   if (priv->secfeed->is_filtering) {
    netdev_dbg(dev, "stop secfeed\n");
    priv->secfeed->stop_filtering(priv->secfeed);
   }

   if (priv->secfilter) {
    netdev_dbg(dev, "release secfilter\n");
    priv->secfeed->release_filter(priv->secfeed,
             priv->secfilter);
    priv->secfilter=((void*)0);
   }

   for (i=0; i<priv->multi_num; i++) {
    if (priv->multi_secfilter[i]) {
     netdev_dbg(dev, "release multi_filter[%d]\n",
         i);
     priv->secfeed->release_filter(priv->secfeed,
              priv->multi_secfilter[i]);
     priv->multi_secfilter[i] = ((void*)0);
    }
   }

   priv->demux->release_section_feed(priv->demux, priv->secfeed);
   priv->secfeed = ((void*)0);
  } else
   pr_err("%s: no feed to stop\n", dev->name);
 } else if (priv->feedtype == DVB_NET_FEEDTYPE_ULE) {
  if (priv->tsfeed) {
   if (priv->tsfeed->is_filtering) {
    netdev_dbg(dev, "stop tsfeed\n");
    priv->tsfeed->stop_filtering(priv->tsfeed);
   }
   priv->demux->release_ts_feed(priv->demux, priv->tsfeed);
   priv->tsfeed = ((void*)0);
  }
  else
   pr_err("%s: no ts feed to stop\n", dev->name);
 } else
  ret = -EINVAL;
 mutex_unlock(&priv->mutex);
 return ret;
}
