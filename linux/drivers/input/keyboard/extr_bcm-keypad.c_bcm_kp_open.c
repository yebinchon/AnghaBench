
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct bcm_kp {int dummy; } ;


 int bcm_kp_start (struct bcm_kp*) ;
 struct bcm_kp* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int bcm_kp_open(struct input_dev *dev)
{
 struct bcm_kp *kp = input_get_drvdata(dev);

 return bcm_kp_start(kp);
}
