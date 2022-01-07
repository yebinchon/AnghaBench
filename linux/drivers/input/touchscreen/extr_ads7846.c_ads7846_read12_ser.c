
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct spi_device {int dummy; } ;
struct ser_req {int sample; int msg; TYPE_1__* xfer; int scratch; scalar_t__ ref_off; scalar_t__ command; scalar_t__ ref_on; } ;
struct device {int dummy; } ;
struct ads7846 {int lock; int vref_delay_usecs; scalar_t__ use_internal; } ;
struct TYPE_3__ {int len; int * rx_buf; scalar_t__* tx_buf; int delay_usecs; } ;


 unsigned int ADS_PD10_ADC_ON ;
 unsigned int ADS_PD10_REF_ON ;
 int CS_CHANGE (TYPE_1__) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ PWRDOWN ;
 scalar_t__ REF_ON ;
 int ads7846_restart (struct ads7846*) ;
 int ads7846_stop (struct ads7846*) ;
 int be16_to_cpu (int ) ;
 struct ads7846* dev_get_drvdata (struct device*) ;
 int kfree (struct ser_req*) ;
 struct ser_req* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_message_add_tail (TYPE_1__*,int *) ;
 int spi_message_init (int *) ;
 int spi_sync (struct spi_device*,int *) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static int ads7846_read12_ser(struct device *dev, unsigned command)
{
 struct spi_device *spi = to_spi_device(dev);
 struct ads7846 *ts = dev_get_drvdata(dev);
 struct ser_req *req;
 int status;

 req = kzalloc(sizeof *req, GFP_KERNEL);
 if (!req)
  return -ENOMEM;

 spi_message_init(&req->msg);


 if (ts->use_internal) {
  req->ref_on = REF_ON;
  req->xfer[0].tx_buf = &req->ref_on;
  req->xfer[0].len = 1;
  spi_message_add_tail(&req->xfer[0], &req->msg);

  req->xfer[1].rx_buf = &req->scratch;
  req->xfer[1].len = 2;


  req->xfer[1].delay_usecs = ts->vref_delay_usecs;
  spi_message_add_tail(&req->xfer[1], &req->msg);


  command |= ADS_PD10_REF_ON;
 }


 command |= ADS_PD10_ADC_ON;


 req->command = (u8) command;
 req->xfer[2].tx_buf = &req->command;
 req->xfer[2].len = 1;
 spi_message_add_tail(&req->xfer[2], &req->msg);

 req->xfer[3].rx_buf = &req->sample;
 req->xfer[3].len = 2;
 spi_message_add_tail(&req->xfer[3], &req->msg);




 req->ref_off = PWRDOWN;
 req->xfer[4].tx_buf = &req->ref_off;
 req->xfer[4].len = 1;
 spi_message_add_tail(&req->xfer[4], &req->msg);

 req->xfer[5].rx_buf = &req->scratch;
 req->xfer[5].len = 2;
 CS_CHANGE(req->xfer[5]);
 spi_message_add_tail(&req->xfer[5], &req->msg);

 mutex_lock(&ts->lock);
 ads7846_stop(ts);
 status = spi_sync(spi, &req->msg);
 ads7846_restart(ts);
 mutex_unlock(&ts->lock);

 if (status == 0) {

  status = be16_to_cpu(req->sample);
  status = status >> 3;
  status &= 0x0fff;
 }

 kfree(req);
 return status;
}
