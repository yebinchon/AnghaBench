
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sp2 {TYPE_1__* client; } ;
struct dvb_ca_en50221 {struct sp2* data; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int) ;

int sp2_ci_slot_shutdown(struct dvb_ca_en50221 *en50221, int slot)
{
 struct sp2 *s = en50221->data;

 dev_dbg(&s->client->dev, "slot:%d\n", slot);


 return 0;
}
