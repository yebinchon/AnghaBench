
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msu_buffer {void* (* assign ) (struct device*,int*) ;} ;
struct msc {int mode; int buf_mutex; struct msu_buffer const* mbuf; void* mbuf_priv; int do_irq; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ARRAY_SIZE (int ) ;
 int CAP_SYS_RAWIO ;
 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 int capable (int ) ;
 struct msc* dev_get_drvdata (struct device*) ;
 int kfree (char*) ;
 char* kstrndup (char const*,size_t,int ) ;
 int match_string (int ,int ,char*) ;
 char* memchr (char const*,char,size_t) ;
 int msc_buffer_unassign (struct msc*) ;
 int msc_buffer_unlocked_free_unless_used (struct msc*) ;
 int msc_mode ;
 struct msu_buffer* msu_buffer_get (char*) ;
 int msu_buffer_put (struct msu_buffer const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 void* stub1 (struct device*,int*) ;

__attribute__((used)) static ssize_t
mode_store(struct device *dev, struct device_attribute *attr, const char *buf,
    size_t size)
{
 const struct msu_buffer *mbuf = ((void*)0);
 struct msc *msc = dev_get_drvdata(dev);
 size_t len = size;
 char *cp, *mode;
 int i, ret;

 if (!capable(CAP_SYS_RAWIO))
  return -EPERM;

 cp = memchr(buf, '\n', len);
 if (cp)
  len = cp - buf;

 mode = kstrndup(buf, len, GFP_KERNEL);
 if (!mode)
  return -ENOMEM;

 i = match_string(msc_mode, ARRAY_SIZE(msc_mode), mode);
 if (i >= 0) {
  kfree(mode);
  goto found;
 }


 if (!msc->do_irq) {
  kfree(mode);
  return -EINVAL;
 }

 mbuf = msu_buffer_get(mode);
 kfree(mode);
 if (mbuf)
  goto found;

 return -EINVAL;

found:
 mutex_lock(&msc->buf_mutex);
 ret = 0;


 if (mbuf && mbuf == msc->mbuf) {

  msu_buffer_put(mbuf);
  goto unlock;
 }

 ret = msc_buffer_unlocked_free_unless_used(msc);
 if (ret)
  goto unlock;

 if (mbuf) {
  void *mbuf_priv = mbuf->assign(dev, &i);

  if (!mbuf_priv) {
   ret = -ENOMEM;
   goto unlock;
  }

  msc_buffer_unassign(msc);
  msc->mbuf_priv = mbuf_priv;
  msc->mbuf = mbuf;
 } else {
  msc_buffer_unassign(msc);
 }

 msc->mode = i;

unlock:
 if (ret && mbuf)
  msu_buffer_put(mbuf);
 mutex_unlock(&msc->buf_mutex);

 return ret ? ret : size;
}
