
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vidi_context {int connected; int lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct vidi_context* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t vidi_show_connection(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct vidi_context *ctx = dev_get_drvdata(dev);
 int rc;

 mutex_lock(&ctx->lock);

 rc = sprintf(buf, "%d\n", ctx->connected);

 mutex_unlock(&ctx->lock);

 return rc;
}
