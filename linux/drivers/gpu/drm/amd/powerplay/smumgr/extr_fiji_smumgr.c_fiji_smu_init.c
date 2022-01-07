
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {struct fiji_smumgr* smu_backend; } ;
struct fiji_smumgr {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct fiji_smumgr*) ;
 struct fiji_smumgr* kzalloc (int,int ) ;
 scalar_t__ smu7_init (struct pp_hwmgr*) ;

__attribute__((used)) static int fiji_smu_init(struct pp_hwmgr *hwmgr)
{
 struct fiji_smumgr *fiji_priv = ((void*)0);

 fiji_priv = kzalloc(sizeof(struct fiji_smumgr), GFP_KERNEL);

 if (fiji_priv == ((void*)0))
  return -ENOMEM;

 hwmgr->smu_backend = fiji_priv;

 if (smu7_init(hwmgr)) {
  kfree(fiji_priv);
  return -EINVAL;
 }

 return 0;
}
