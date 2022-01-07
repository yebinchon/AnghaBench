
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scatterlist {int dummy; } ;


 size_t EINVAL ;


 size_t TO_HEAD_SIZE (int const) ;
 size_t get_gzip_head_size (struct scatterlist*) ;
 int pr_err (char*) ;

__attribute__((used)) static size_t get_comp_head_size(struct scatterlist *src, u8 req_type)
{
 switch (req_type) {
 case 128:
  return TO_HEAD_SIZE(128);
 case 129:
  return get_gzip_head_size(src);
 default:
  pr_err("request type does not support!\n");
  return -EINVAL;
 }
}
