
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct detected_devices_node {int list; int dev; } ;
typedef int dev_t ;


 int GFP_KERNEL ;
 int all_detected_devices ;
 int detected_devices_mutex ;
 struct detected_devices_node* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void md_autodetect_dev(dev_t dev)
{
 struct detected_devices_node *node_detected_dev;

 node_detected_dev = kzalloc(sizeof(*node_detected_dev), GFP_KERNEL);
 if (node_detected_dev) {
  node_detected_dev->dev = dev;
  mutex_lock(&detected_devices_mutex);
  list_add_tail(&node_detected_dev->list, &all_detected_devices);
  mutex_unlock(&detected_devices_mutex);
 }
}
