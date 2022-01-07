
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_device {int channels; struct device* dev; int device_terminate_all; int device_config; int device_tx_status; int device_issue_pending; int device_free_chan_resources; int device_alloc_chan_resources; int device_prep_slave_sg; } ;
struct device {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int moxart_alloc_chan_resources ;
 int moxart_free_chan_resources ;
 int moxart_issue_pending ;
 int moxart_prep_slave_sg ;
 int moxart_slave_config ;
 int moxart_terminate_all ;
 int moxart_tx_status ;

__attribute__((used)) static void moxart_dma_init(struct dma_device *dma, struct device *dev)
{
 dma->device_prep_slave_sg = moxart_prep_slave_sg;
 dma->device_alloc_chan_resources = moxart_alloc_chan_resources;
 dma->device_free_chan_resources = moxart_free_chan_resources;
 dma->device_issue_pending = moxart_issue_pending;
 dma->device_tx_status = moxart_tx_status;
 dma->device_config = moxart_slave_config;
 dma->device_terminate_all = moxart_terminate_all;
 dma->dev = dev;

 INIT_LIST_HEAD(&dma->channels);
}
