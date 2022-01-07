
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct dht11 {size_t num_edges; int completion; int gpiod; TYPE_1__* edges; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int value; int ts; } ;


 size_t DHT11_EDGES_PER_READ ;
 int IRQ_HANDLED ;
 int complete (int *) ;
 int gpiod_get_value (int ) ;
 struct dht11* iio_priv (struct iio_dev*) ;
 int ktime_get_boottime_ns () ;

__attribute__((used)) static irqreturn_t dht11_handle_irq(int irq, void *data)
{
 struct iio_dev *iio = data;
 struct dht11 *dht11 = iio_priv(iio);


 if (dht11->num_edges < DHT11_EDGES_PER_READ && dht11->num_edges >= 0) {
  dht11->edges[dht11->num_edges].ts = ktime_get_boottime_ns();
  dht11->edges[dht11->num_edges++].value =
      gpiod_get_value(dht11->gpiod);

  if (dht11->num_edges >= DHT11_EDGES_PER_READ)
   complete(&dht11->completion);
 }

 return IRQ_HANDLED;
}
