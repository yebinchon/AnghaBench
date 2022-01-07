
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int name; } ;
struct iio_chan_spec {scalar_t__ type; } ;
struct dht11 {scalar_t__ timestamp; int num_edges; int temperature; int humidity; int lock; int dev; int irq; int completion; int gpiod; } ;


 int DHT11_AMBIG_HIGH ;
 int DHT11_AMBIG_LOW ;
 scalar_t__ DHT11_DATA_VALID_TIME ;
 int DHT11_EDGES_PER_READ ;
 int DHT11_EDGES_PREAMBLE ;
 int DHT11_MIN_TIMERES ;
 int DHT11_START_TRANSMISSION_MAX ;
 int DHT11_START_TRANSMISSION_MIN ;
 int EAGAIN ;
 int EINVAL ;
 int ETIMEDOUT ;
 int HZ ;
 scalar_t__ IIO_HUMIDITYRELATIVE ;
 scalar_t__ IIO_TEMP ;
 int IIO_VAL_INT ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*,int) ;
 int dht11_decode (struct dht11*,int) ;
 int dht11_edges_print (struct dht11*) ;
 int dht11_handle_irq ;
 int free_irq (int ,struct iio_dev*) ;
 int gpiod_direction_input (int ) ;
 int gpiod_direction_output (int ,int ) ;
 struct dht11* iio_priv (struct iio_dev*) ;
 scalar_t__ ktime_get_boottime_ns () ;
 int ktime_get_resolution_ns () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 int request_irq (int ,int ,int,int ,struct iio_dev*) ;
 int usleep_range (int ,int ) ;
 int wait_for_completion_killable_timeout (int *,int ) ;

__attribute__((used)) static int dht11_read_raw(struct iio_dev *iio_dev,
     const struct iio_chan_spec *chan,
   int *val, int *val2, long m)
{
 struct dht11 *dht11 = iio_priv(iio_dev);
 int ret, timeres, offset;

 mutex_lock(&dht11->lock);
 if (dht11->timestamp + DHT11_DATA_VALID_TIME < ktime_get_boottime_ns()) {
  timeres = ktime_get_resolution_ns();
  dev_dbg(dht11->dev, "current timeresolution: %dns\n", timeres);
  if (timeres > DHT11_MIN_TIMERES) {
   dev_err(dht11->dev, "timeresolution %dns too low\n",
    timeres);




   ret = -EAGAIN;
   goto err;
  }
  if (timeres > DHT11_AMBIG_LOW && timeres < DHT11_AMBIG_HIGH)
   dev_warn(dht11->dev,
     "timeresolution: %dns - decoding ambiguous\n",
     timeres);

  reinit_completion(&dht11->completion);

  dht11->num_edges = 0;
  ret = gpiod_direction_output(dht11->gpiod, 0);
  if (ret)
   goto err;
  usleep_range(DHT11_START_TRANSMISSION_MIN,
        DHT11_START_TRANSMISSION_MAX);
  ret = gpiod_direction_input(dht11->gpiod);
  if (ret)
   goto err;

  ret = request_irq(dht11->irq, dht11_handle_irq,
      IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
      iio_dev->name, iio_dev);
  if (ret)
   goto err;

  ret = wait_for_completion_killable_timeout(&dht11->completion,
          HZ);

  free_irq(dht11->irq, iio_dev);





  if (ret == 0 && dht11->num_edges < DHT11_EDGES_PER_READ - 1) {
   dev_err(dht11->dev, "Only %d signal edges detected\n",
    dht11->num_edges);
   ret = -ETIMEDOUT;
  }
  if (ret < 0)
   goto err;

  offset = DHT11_EDGES_PREAMBLE +
    dht11->num_edges - DHT11_EDGES_PER_READ;
  for (; offset >= 0; --offset) {
   ret = dht11_decode(dht11, offset);
   if (!ret)
    break;
  }

  if (ret)
   goto err;
 }

 ret = IIO_VAL_INT;
 if (chan->type == IIO_TEMP)
  *val = dht11->temperature;
 else if (chan->type == IIO_HUMIDITYRELATIVE)
  *val = dht11->humidity;
 else
  ret = -EINVAL;
err:
 dht11->num_edges = -1;
 mutex_unlock(&dht11->lock);
 return ret;
}
