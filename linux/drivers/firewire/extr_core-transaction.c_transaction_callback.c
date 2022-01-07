
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transaction_callback_data {int rcode; int done; int payload; } ;
struct fw_card {int dummy; } ;


 int RCODE_COMPLETE ;
 int complete (int *) ;
 int memcpy (int ,void*,size_t) ;

__attribute__((used)) static void transaction_callback(struct fw_card *card, int rcode,
     void *payload, size_t length, void *data)
{
 struct transaction_callback_data *d = data;

 if (rcode == RCODE_COMPLETE)
  memcpy(d->payload, payload, length);
 d->rcode = rcode;
 complete(&d->done);
}
