
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vegam_smumgr {int dummy; } ;
struct pp_hwmgr {struct vegam_smumgr* smu_backend; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct vegam_smumgr*) ;
 struct vegam_smumgr* kzalloc (int,int ) ;
 scalar_t__ smu7_init (struct pp_hwmgr*) ;

__attribute__((used)) static int vegam_smu_init(struct pp_hwmgr *hwmgr)
{
 struct vegam_smumgr *smu_data;

 smu_data = kzalloc(sizeof(struct vegam_smumgr), GFP_KERNEL);
 if (smu_data == ((void*)0))
  return -ENOMEM;

 hwmgr->smu_backend = smu_data;

 if (smu7_init(hwmgr)) {
  kfree(smu_data);
  return -EINVAL;
 }

 return 0;
}
