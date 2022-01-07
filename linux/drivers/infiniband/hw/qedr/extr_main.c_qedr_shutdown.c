
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedr_dev {int dummy; } ;


 int qedr_close (struct qedr_dev*) ;
 int qedr_remove (struct qedr_dev*) ;

__attribute__((used)) static void qedr_shutdown(struct qedr_dev *dev)
{
 qedr_close(dev);
 qedr_remove(dev);
}
