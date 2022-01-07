
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extcon_dev {int dummy; } ;


 int kfree (struct extcon_dev*) ;

void extcon_dev_free(struct extcon_dev *edev)
{
 kfree(edev);
}
