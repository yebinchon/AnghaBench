
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phys_sge_pairs {int dummy; } ;
struct dsgl_walk {struct phys_sge_pairs* to; scalar_t__ nents; struct cpl_rx_phys_dsgl* dsgl; } ;
struct cpl_rx_phys_dsgl {int dummy; } ;



__attribute__((used)) static inline void dsgl_walk_init(struct dsgl_walk *walk,
       struct cpl_rx_phys_dsgl *dsgl)
{
 walk->dsgl = dsgl;
 walk->nents = 0;
 walk->to = (struct phys_sge_pairs *)(dsgl + 1);
}
