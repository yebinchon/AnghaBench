
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdi_device {int dummy; } ;
struct device_node {struct sdi_device* data; } ;


 int kfree (struct sdi_device*) ;
 int sdi_uninit_output (struct sdi_device*) ;

void sdi_uninit_port(struct device_node *port)
{
 struct sdi_device *sdi = port->data;

 if (!sdi)
  return;

 sdi_uninit_output(sdi);
 kfree(sdi);
}
