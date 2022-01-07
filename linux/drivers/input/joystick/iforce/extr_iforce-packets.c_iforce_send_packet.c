
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {int head; int tail; void** buf; } ;
struct iforce {TYPE_3__* xport_ops; int xmit_lock; TYPE_2__ xmit; TYPE_1__* dev; } ;
struct TYPE_6__ {int (* xmit ) (struct iforce*) ;} ;
struct TYPE_4__ {int dev; } ;


 int CIRC_SPACE (int,int,int ) ;
 int CIRC_SPACE_TO_END (int,int,int ) ;
 void* HI (int ) ;
 void* LO (int ) ;
 int XMIT_INC (int,int) ;
 int XMIT_SIZE ;
 int dev_warn (int *,char*) ;
 int memcpy (void**,unsigned char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct iforce*) ;

int iforce_send_packet(struct iforce *iforce, u16 cmd, unsigned char* data)
{

 int n = LO(cmd);
 int c;
 int empty;
 int head, tail;
 unsigned long flags;




 spin_lock_irqsave(&iforce->xmit_lock, flags);

 head = iforce->xmit.head;
 tail = iforce->xmit.tail;


 if (CIRC_SPACE(head, tail, XMIT_SIZE) < n+2) {
  dev_warn(&iforce->dev->dev,
    "not enough space in xmit buffer to send new packet\n");
  spin_unlock_irqrestore(&iforce->xmit_lock, flags);
  return -1;
 }

 empty = head == tail;
 XMIT_INC(iforce->xmit.head, n+2);




 iforce->xmit.buf[head] = HI(cmd);
 XMIT_INC(head, 1);
 iforce->xmit.buf[head] = LO(cmd);
 XMIT_INC(head, 1);

 c = CIRC_SPACE_TO_END(head, tail, XMIT_SIZE);
 if (n < c) c=n;

 memcpy(&iforce->xmit.buf[head],
        data,
        c);
 if (n != c) {
  memcpy(&iforce->xmit.buf[0],
         data + c,
         n - c);
 }
 XMIT_INC(head, n);

 spin_unlock_irqrestore(&iforce->xmit_lock, flags);



 if (empty)
  iforce->xport_ops->xmit(iforce);

 return 0;
}
