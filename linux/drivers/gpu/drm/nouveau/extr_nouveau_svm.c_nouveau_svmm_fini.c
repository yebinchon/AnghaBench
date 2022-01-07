
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_svmm {int mirror; } ;


 int hmm_mirror_unregister (int *) ;
 int kfree (struct nouveau_svmm*) ;

void
nouveau_svmm_fini(struct nouveau_svmm **psvmm)
{
 struct nouveau_svmm *svmm = *psvmm;
 if (svmm) {
  hmm_mirror_unregister(&svmm->mirror);
  kfree(*psvmm);
  *psvmm = ((void*)0);
 }
}
