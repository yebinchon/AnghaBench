
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ib_sge {scalar_t__ length; } ;



__attribute__((used)) static inline uint32_t ocrdma_sglist_len(struct ib_sge *sg_list, int num_sge)
{
 uint32_t total_len = 0, i;

 for (i = 0; i < num_sge; i++)
  total_len += sg_list[i].length;
 return total_len;
}
