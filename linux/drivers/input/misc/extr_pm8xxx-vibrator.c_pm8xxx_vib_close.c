
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm8xxx_vib {scalar_t__ active; int work; } ;
struct input_dev {int dummy; } ;


 int cancel_work_sync (int *) ;
 struct pm8xxx_vib* input_get_drvdata (struct input_dev*) ;
 int pm8xxx_vib_set (struct pm8xxx_vib*,int) ;

__attribute__((used)) static void pm8xxx_vib_close(struct input_dev *dev)
{
 struct pm8xxx_vib *vib = input_get_drvdata(dev);

 cancel_work_sync(&vib->work);
 if (vib->active)
  pm8xxx_vib_set(vib, 0);
}
