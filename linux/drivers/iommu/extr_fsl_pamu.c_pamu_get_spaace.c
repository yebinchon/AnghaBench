
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct paace {size_t fspi; int impl_attr; } ;


 int PAACE_IA_WCE ;
 int get_bf (int ,int ) ;
 int pr_debug (char*) ;
 struct paace* spaact ;

__attribute__((used)) static struct paace *pamu_get_spaace(struct paace *paace, u32 wnum)
{
 u32 subwin_cnt;
 struct paace *spaace = ((void*)0);

 subwin_cnt = 1UL << (get_bf(paace->impl_attr, PAACE_IA_WCE) + 1);

 if (wnum < subwin_cnt)
  spaace = &spaact[paace->fspi + wnum];
 else
  pr_debug("secondary paace out of bounds\n");

 return spaace;
}
