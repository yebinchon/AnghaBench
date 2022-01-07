
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
struct dvb_ca_private {unsigned int slot_count; struct dvb_ca_private* slot_info; TYPE_1__ rx_buffer; int dvbdev; } ;


 int dvb_free_device (int ) ;
 int kfree (struct dvb_ca_private*) ;
 int vfree (int ) ;

__attribute__((used)) static void dvb_ca_private_free(struct dvb_ca_private *ca)
{
 unsigned int i;

 dvb_free_device(ca->dvbdev);
 for (i = 0; i < ca->slot_count; i++)
  vfree(ca->slot_info[i].rx_buffer.data);

 kfree(ca->slot_info);
 kfree(ca);
}
