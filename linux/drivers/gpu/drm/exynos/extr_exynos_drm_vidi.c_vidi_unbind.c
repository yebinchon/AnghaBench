
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vidi_context {int timer; } ;
struct device {int dummy; } ;


 int del_timer_sync (int *) ;
 struct vidi_context* dev_get_drvdata (struct device*) ;

__attribute__((used)) static void vidi_unbind(struct device *dev, struct device *master, void *data)
{
 struct vidi_context *ctx = dev_get_drvdata(dev);

 del_timer_sync(&ctx->timer);
}
