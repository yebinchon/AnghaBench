
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedr_dev {int enet_state; } ;


 int IB_EVENT_PORT_ERR ;
 int QEDR_ENET_STATE_BIT ;
 int QEDR_PORT ;
 int qedr_ib_dispatch_event (struct qedr_dev*,int ,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void qedr_close(struct qedr_dev *dev)
{
 if (test_and_clear_bit(QEDR_ENET_STATE_BIT, &dev->enet_state))
  qedr_ib_dispatch_event(dev, QEDR_PORT, IB_EVENT_PORT_ERR);
}
