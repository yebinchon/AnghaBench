
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_re_dev {int dummy; } ;


 int bnxt_re_ib_unreg (struct bnxt_re_dev*) ;

__attribute__((used)) static void bnxt_re_shutdown(void *p)
{
 struct bnxt_re_dev *rdev = p;

 if (!rdev)
  return;

 bnxt_re_ib_unreg(rdev);
}
