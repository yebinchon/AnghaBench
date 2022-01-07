
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_pgtable_ops {int dummy; } ;
struct io_pgtable_init_fns {struct io_pgtable* (* alloc ) (struct io_pgtable_cfg*,void*) ;} ;
struct io_pgtable_cfg {int dummy; } ;
struct io_pgtable {int fmt; struct io_pgtable_ops ops; struct io_pgtable_cfg cfg; void* cookie; } ;
typedef enum io_pgtable_fmt { ____Placeholder_io_pgtable_fmt } io_pgtable_fmt ;


 int IO_PGTABLE_NUM_FMTS ;
 struct io_pgtable_init_fns** io_pgtable_init_table ;
 struct io_pgtable* stub1 (struct io_pgtable_cfg*,void*) ;

struct io_pgtable_ops *alloc_io_pgtable_ops(enum io_pgtable_fmt fmt,
         struct io_pgtable_cfg *cfg,
         void *cookie)
{
 struct io_pgtable *iop;
 const struct io_pgtable_init_fns *fns;

 if (fmt >= IO_PGTABLE_NUM_FMTS)
  return ((void*)0);

 fns = io_pgtable_init_table[fmt];
 if (!fns)
  return ((void*)0);

 iop = fns->alloc(cfg, cookie);
 if (!iop)
  return ((void*)0);

 iop->fmt = fmt;
 iop->cookie = cookie;
 iop->cfg = *cfg;

 return &iop->ops;
}
