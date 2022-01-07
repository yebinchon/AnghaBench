
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vadc_priv {int lock; int dev; int complete; scalar_t__ poll_eoc; } ;
struct vadc_channel_prop {int avg_samples; } ;


 int BIT (int ) ;
 int ETIMEDOUT ;
 int VADC_CONV_REQ ;
 int VADC_CONV_REQ_SET ;
 int VADC_CONV_TIME_MIN_US ;
 int dev_err (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 int vadc_configure (struct vadc_priv*,struct vadc_channel_prop*) ;
 int vadc_poll_wait_eoc (struct vadc_priv*,int) ;
 int vadc_read_result (struct vadc_priv*,int *) ;
 int vadc_set_state (struct vadc_priv*,int) ;
 int vadc_write (struct vadc_priv*,int ,int ) ;
 int wait_for_completion_timeout (int *,unsigned int) ;

__attribute__((used)) static int vadc_do_conversion(struct vadc_priv *vadc,
         struct vadc_channel_prop *prop, u16 *data)
{
 unsigned int timeout;
 int ret;

 mutex_lock(&vadc->lock);

 ret = vadc_configure(vadc, prop);
 if (ret)
  goto unlock;

 if (!vadc->poll_eoc)
  reinit_completion(&vadc->complete);

 ret = vadc_set_state(vadc, 1);
 if (ret)
  goto unlock;

 ret = vadc_write(vadc, VADC_CONV_REQ, VADC_CONV_REQ_SET);
 if (ret)
  goto err_disable;

 timeout = BIT(prop->avg_samples) * VADC_CONV_TIME_MIN_US * 2;

 if (vadc->poll_eoc) {
  ret = vadc_poll_wait_eoc(vadc, timeout);
 } else {
  ret = wait_for_completion_timeout(&vadc->complete, timeout);
  if (!ret) {
   ret = -ETIMEDOUT;
   goto err_disable;
  }


  ret = vadc_poll_wait_eoc(vadc, VADC_CONV_TIME_MIN_US);
  if (ret)
   goto err_disable;
 }

 ret = vadc_read_result(vadc, data);

err_disable:
 vadc_set_state(vadc, 0);
 if (ret)
  dev_err(vadc->dev, "conversion failed\n");
unlock:
 mutex_unlock(&vadc->lock);
 return ret;
}
