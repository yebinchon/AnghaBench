
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgd_dev {int dummy; } ;


 int unlock_srbm (struct kgd_dev*) ;

__attribute__((used)) static void release_queue(struct kgd_dev *kgd)
{
 unlock_srbm(kgd);
}
