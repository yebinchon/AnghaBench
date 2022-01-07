
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_channel_list {int allocated_channels; } ;
struct host1x_channel {int id; int cdma; struct device* dev; int submitlock; int refcount; } ;
struct host1x {struct host1x_channel_list channel_list; } ;
struct device {int parent; } ;


 struct host1x_channel* acquire_unused_channel (struct host1x*) ;
 int clear_bit (int ,int ) ;
 int dev_err (struct device*,char*) ;
 struct host1x* dev_get_drvdata (int ) ;
 int host1x_cdma_init (int *) ;
 int host1x_hw_channel_init (struct host1x*,struct host1x_channel*,int ) ;
 int kref_init (int *) ;
 int mutex_init (int *) ;

struct host1x_channel *host1x_channel_request(struct device *dev)
{
 struct host1x *host = dev_get_drvdata(dev->parent);
 struct host1x_channel_list *chlist = &host->channel_list;
 struct host1x_channel *channel;
 int err;

 channel = acquire_unused_channel(host);
 if (!channel)
  return ((void*)0);

 kref_init(&channel->refcount);
 mutex_init(&channel->submitlock);
 channel->dev = dev;

 err = host1x_hw_channel_init(host, channel, channel->id);
 if (err < 0)
  goto fail;

 err = host1x_cdma_init(&channel->cdma);
 if (err < 0)
  goto fail;

 return channel;

fail:
 clear_bit(channel->id, chlist->allocated_channels);

 dev_err(dev, "failed to initialize channel\n");

 return ((void*)0);
}
