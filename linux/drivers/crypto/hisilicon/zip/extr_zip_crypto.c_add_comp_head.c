
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scatterlist {int dummy; } ;


 int ENOMEM ;
 int * TO_HEAD (int ) ;
 int TO_HEAD_SIZE (int ) ;
 int sg_copy_from_buffer (struct scatterlist*,int ,int const*,int) ;
 int sg_nents (struct scatterlist*) ;

__attribute__((used)) static int add_comp_head(struct scatterlist *dst, u8 req_type)
{
 int head_size = TO_HEAD_SIZE(req_type);
 const u8 *head = TO_HEAD(req_type);
 int ret;

 ret = sg_copy_from_buffer(dst, sg_nents(dst), head, head_size);
 if (ret != head_size)
  return -ENOMEM;

 return head_size;
}
