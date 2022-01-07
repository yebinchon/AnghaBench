
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {scalar_t__ mr_valid; TYPE_2__* sig_mr; TYPE_1__* mr; } ;
struct iser_fr_desc {TYPE_3__ rsc; scalar_t__ sig_protected; } ;
struct TYPE_5__ {scalar_t__ rkey; } ;
struct TYPE_4__ {scalar_t__ rkey; } ;


 int EINVAL ;
 int iser_err (char*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int
iser_inv_desc(struct iser_fr_desc *desc, u32 rkey)
{
 if (unlikely((!desc->sig_protected && rkey != desc->rsc.mr->rkey) ||
       (desc->sig_protected && rkey != desc->rsc.sig_mr->rkey))) {
  iser_err("Bogus remote invalidation for rkey %#x\n", rkey);
  return -EINVAL;
 }

 desc->rsc.mr_valid = 0;

 return 0;
}
