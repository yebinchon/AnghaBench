
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct hfi1_devdata {int dummy; } ;
struct TYPE_3__ {int val; int off; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EBUSY ;
 TYPE_1__* lcb_cache ;
 scalar_t__ likely (int) ;
 int read_lcb_csr (struct hfi1_devdata*,int ,int *) ;

__attribute__((used)) static void update_lcb_cache(struct hfi1_devdata *dd)
{
 int i;
 int ret;
 u64 val;

 for (i = 0; i < ARRAY_SIZE(lcb_cache); i++) {
  ret = read_lcb_csr(dd, lcb_cache[i].off, &val);


  if (likely(ret != -EBUSY))
   lcb_cache[i].val = val;
 }
}
