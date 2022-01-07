
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmc_drvdata {int dummy; } ;
struct etr_buf {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* alloc ) (struct tmc_drvdata*,struct etr_buf*,int,void**) ;} ;


 int EINVAL ;



 TYPE_1__** etr_buf_ops ;
 int stub1 (struct tmc_drvdata*,struct etr_buf*,int,void**) ;

__attribute__((used)) static inline int tmc_etr_mode_alloc_buf(int mode,
      struct tmc_drvdata *drvdata,
      struct etr_buf *etr_buf, int node,
      void **pages)
{
 int rc = -EINVAL;

 switch (mode) {
 case 128:
 case 129:
 case 130:
  if (etr_buf_ops[mode] && etr_buf_ops[mode]->alloc)
   rc = etr_buf_ops[mode]->alloc(drvdata, etr_buf,
            node, pages);
  if (!rc)
   etr_buf->ops = etr_buf_ops[mode];
  return rc;
 default:
  return -EINVAL;
 }
}
