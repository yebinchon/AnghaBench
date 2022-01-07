
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ulptx_walk {scalar_t__ last_sg_len; int * last_sg; int pair; scalar_t__ pair_idx; scalar_t__ nents; struct ulptx_sgl* sgl; } ;
struct ulptx_sgl {int sge; } ;



__attribute__((used)) static inline void ulptx_walk_init(struct ulptx_walk *walk,
       struct ulptx_sgl *ulp)
{
 walk->sgl = ulp;
 walk->nents = 0;
 walk->pair_idx = 0;
 walk->pair = ulp->sge;
 walk->last_sg = ((void*)0);
 walk->last_sg_len = 0;
}
