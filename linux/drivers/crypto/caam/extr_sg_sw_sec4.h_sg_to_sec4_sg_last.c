
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sec4_sg_entry {int dummy; } ;
struct scatterlist {int dummy; } ;


 int sg_to_sec4_set_last (struct sec4_sg_entry*) ;
 struct sec4_sg_entry* sg_to_sec4_sg (struct scatterlist*,int,struct sec4_sg_entry*,int ) ;

__attribute__((used)) static inline void sg_to_sec4_sg_last(struct scatterlist *sg, int len,
          struct sec4_sg_entry *sec4_sg_ptr,
          u16 offset)
{
 sec4_sg_ptr = sg_to_sec4_sg(sg, len, sec4_sg_ptr, offset);
 sg_to_sec4_set_last(sec4_sg_ptr);
}
