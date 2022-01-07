
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec4_sg_entry {int len; } ;
struct dpaa2_sg_entry {int dummy; } ;


 int SEC4_SG_LEN_FIN ;
 scalar_t__ caam_dpaa2 ;
 int cpu_to_caam32 (int ) ;
 int dpaa2_sg_set_final (struct dpaa2_sg_entry*,int) ;

__attribute__((used)) static inline void sg_to_sec4_set_last(struct sec4_sg_entry *sec4_sg_ptr)
{
 if (caam_dpaa2)
  dpaa2_sg_set_final((struct dpaa2_sg_entry *)sec4_sg_ptr, 1);
 else
  sec4_sg_ptr->len |= cpu_to_caam32(SEC4_SG_LEN_FIN);
}
