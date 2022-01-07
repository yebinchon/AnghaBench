
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {struct iceland_smumgr* smu_backend; } ;
struct iceland_smumgr {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct iceland_smumgr*) ;
 struct iceland_smumgr* kzalloc (int,int ) ;
 scalar_t__ smu7_init (struct pp_hwmgr*) ;

__attribute__((used)) static int iceland_smu_init(struct pp_hwmgr *hwmgr)
{
 struct iceland_smumgr *iceland_priv = ((void*)0);

 iceland_priv = kzalloc(sizeof(struct iceland_smumgr), GFP_KERNEL);

 if (iceland_priv == ((void*)0))
  return -ENOMEM;

 hwmgr->smu_backend = iceland_priv;

 if (smu7_init(hwmgr)) {
  kfree(iceland_priv);
  return -EINVAL;
 }

 return 0;
}
