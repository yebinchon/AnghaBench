
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mce {int bank; int status; } ;


 int XEC (int ,int) ;
 int report_gart_errors ;

__attribute__((used)) static bool ignore_mce(struct mce *m)
{



 if (m->bank == 4 && XEC(m->status, 0x1f) == 0x5 && !report_gart_errors)
  return 1;

 return 0;
}
