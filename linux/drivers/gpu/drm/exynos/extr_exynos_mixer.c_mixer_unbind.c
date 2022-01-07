
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mixer_context {int dummy; } ;
struct device {int dummy; } ;


 struct mixer_context* dev_get_drvdata (struct device*) ;
 int mixer_ctx_remove (struct mixer_context*) ;

__attribute__((used)) static void mixer_unbind(struct device *dev, struct device *master, void *data)
{
 struct mixer_context *ctx = dev_get_drvdata(dev);

 mixer_ctx_remove(ctx);
}
