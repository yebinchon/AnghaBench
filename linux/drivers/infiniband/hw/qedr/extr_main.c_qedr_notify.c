
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedr_dev {int dummy; } ;
typedef enum qede_rdma_event { ____Placeholder_qede_rdma_event } qede_rdma_event ;






 int pr_err (char*) ;
 int qedr_close (struct qedr_dev*) ;
 int qedr_mac_address_change (struct qedr_dev*) ;
 int qedr_open (struct qedr_dev*) ;
 int qedr_shutdown (struct qedr_dev*) ;

__attribute__((used)) static void qedr_notify(struct qedr_dev *dev, enum qede_rdma_event event)
{
 switch (event) {
 case 128:
  qedr_open(dev);
  break;
 case 129:
  qedr_close(dev);
  break;
 case 130:
  qedr_shutdown(dev);
  break;
 case 131:
  qedr_mac_address_change(dev);
  break;
 default:
  pr_err("Event not supported\n");
 }
}
