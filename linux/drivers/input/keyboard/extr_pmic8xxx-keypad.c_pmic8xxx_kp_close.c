
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmic8xxx_kp {int dummy; } ;
struct input_dev {int dummy; } ;


 struct pmic8xxx_kp* input_get_drvdata (struct input_dev*) ;
 int pmic8xxx_kp_disable (struct pmic8xxx_kp*) ;

__attribute__((used)) static void pmic8xxx_kp_close(struct input_dev *dev)
{
 struct pmic8xxx_kp *kp = input_get_drvdata(dev);

 pmic8xxx_kp_disable(kp);
}
