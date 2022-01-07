
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct safexcel_ring_irq_data {int ring; struct safexcel_crypto_priv* priv; } ;
struct safexcel_crypto_priv {TYPE_2__* ring; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int work; } ;
struct TYPE_4__ {TYPE_1__ work_data; int workqueue; } ;


 int IRQ_HANDLED ;
 int queue_work (int ,int *) ;
 int safexcel_handle_result_descriptor (struct safexcel_crypto_priv*,int) ;

__attribute__((used)) static irqreturn_t safexcel_irq_ring_thread(int irq, void *data)
{
 struct safexcel_ring_irq_data *irq_data = data;
 struct safexcel_crypto_priv *priv = irq_data->priv;
 int ring = irq_data->ring;

 safexcel_handle_result_descriptor(priv, ring);

 queue_work(priv->ring[ring].workqueue,
     &priv->ring[ring].work_data.work);

 return IRQ_HANDLED;
}
