
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_svm_fault {int client; int gpc; int hub; int inst; } ;
struct nouveau_svm {int dummy; } ;


 int nouveau_svm_fault_cancel (struct nouveau_svm*,int ,int ,int ,int ) ;

__attribute__((used)) static void
nouveau_svm_fault_cancel_fault(struct nouveau_svm *svm,
          struct nouveau_svm_fault *fault)
{
 nouveau_svm_fault_cancel(svm, fault->inst,
          fault->hub,
          fault->gpc,
          fault->client);
}
