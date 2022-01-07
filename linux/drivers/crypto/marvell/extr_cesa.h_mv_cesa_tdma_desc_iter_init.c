
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_cesa_tdma_chain {int dummy; } ;


 int memset (struct mv_cesa_tdma_chain*,int ,int) ;

__attribute__((used)) static inline void
mv_cesa_tdma_desc_iter_init(struct mv_cesa_tdma_chain *chain)
{
 memset(chain, 0, sizeof(*chain));
}
