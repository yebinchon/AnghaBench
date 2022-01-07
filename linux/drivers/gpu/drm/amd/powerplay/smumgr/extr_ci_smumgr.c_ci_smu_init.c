
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {struct ci_smumgr* smu_backend; } ;
struct ci_smumgr {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct ci_smumgr* kzalloc (int,int ) ;

__attribute__((used)) static int ci_smu_init(struct pp_hwmgr *hwmgr)
{
 struct ci_smumgr *ci_priv = ((void*)0);

 ci_priv = kzalloc(sizeof(struct ci_smumgr), GFP_KERNEL);

 if (ci_priv == ((void*)0))
  return -ENOMEM;

 hwmgr->smu_backend = ci_priv;

 return 0;
}
