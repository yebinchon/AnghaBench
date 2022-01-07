
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mdata; int ddata; int opcfg; int pcfg; int test; int cydata; } ;
struct cyttsp4_sysinfo {int btn_rec_data; int xy_data; int xy_mode; int btn; TYPE_1__ si_ptrs; } ;
struct cyttsp4 {struct cyttsp4_sysinfo sysinfo; } ;


 int kfree (int ) ;

__attribute__((used)) static void cyttsp4_free_si_ptrs(struct cyttsp4 *cd)
{
 struct cyttsp4_sysinfo *si = &cd->sysinfo;

 if (!si)
  return;

 kfree(si->si_ptrs.cydata);
 kfree(si->si_ptrs.test);
 kfree(si->si_ptrs.pcfg);
 kfree(si->si_ptrs.opcfg);
 kfree(si->si_ptrs.ddata);
 kfree(si->si_ptrs.mdata);
 kfree(si->btn);
 kfree(si->xy_mode);
 kfree(si->xy_data);
 kfree(si->btn_rec_data);
}
