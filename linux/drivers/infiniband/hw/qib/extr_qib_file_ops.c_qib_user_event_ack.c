
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_ctxtdata {int * user_event_mask; } ;


 int _QIB_EVENT_DISARM_BUFS_BIT ;
 int _QIB_MAX_EVENT_BIT ;
 int clear_bit (int,int *) ;
 int disarm_req_delay (struct qib_ctxtdata*) ;
 int qib_disarm_piobufs_ifneeded (struct qib_ctxtdata*) ;
 int test_bit (int,unsigned long*) ;

__attribute__((used)) static int qib_user_event_ack(struct qib_ctxtdata *rcd, int subctxt,
         unsigned long events)
{
 int ret = 0, i;

 for (i = 0; i <= _QIB_MAX_EVENT_BIT; i++) {
  if (!test_bit(i, &events))
   continue;
  if (i == _QIB_EVENT_DISARM_BUFS_BIT) {
   (void)qib_disarm_piobufs_ifneeded(rcd);
   ret = disarm_req_delay(rcd);
  } else
   clear_bit(i, &rcd->user_event_mask[subctxt]);
 }
 return ret;
}
