
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tonga_smumgr {int dummy; } ;
struct pp_hwmgr {struct tonga_smumgr* smu_backend; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct tonga_smumgr*) ;
 struct tonga_smumgr* kzalloc (int,int ) ;
 scalar_t__ smu7_init (struct pp_hwmgr*) ;

__attribute__((used)) static int tonga_smu_init(struct pp_hwmgr *hwmgr)
{
 struct tonga_smumgr *tonga_priv = ((void*)0);

 tonga_priv = kzalloc(sizeof(struct tonga_smumgr), GFP_KERNEL);
 if (tonga_priv == ((void*)0))
  return -ENOMEM;

 hwmgr->smu_backend = tonga_priv;

 if (smu7_init(hwmgr)) {
  kfree(tonga_priv);
  return -EINVAL;
 }

 return 0;
}
