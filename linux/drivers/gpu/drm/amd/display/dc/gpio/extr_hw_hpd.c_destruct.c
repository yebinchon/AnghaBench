
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_hpd {int dummy; } ;


 int dal_hw_hpd_destruct (struct hw_hpd*) ;

__attribute__((used)) static void destruct(
 struct hw_hpd *hpd)
{
 dal_hw_hpd_destruct(hpd);
}
