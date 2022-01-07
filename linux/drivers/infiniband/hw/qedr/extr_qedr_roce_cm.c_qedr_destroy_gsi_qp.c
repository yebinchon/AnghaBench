
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedr_dev {int dummy; } ;


 int qedr_ll2_stop (struct qedr_dev*) ;

int qedr_destroy_gsi_qp(struct qedr_dev *dev)
{
 return qedr_ll2_stop(dev);
}
