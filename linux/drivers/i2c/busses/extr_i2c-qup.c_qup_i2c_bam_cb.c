
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qup_i2c_dev {int xfer; } ;


 int complete (int *) ;

__attribute__((used)) static void qup_i2c_bam_cb(void *data)
{
 struct qup_i2c_dev *qup = data;

 complete(&qup->xfer);
}
