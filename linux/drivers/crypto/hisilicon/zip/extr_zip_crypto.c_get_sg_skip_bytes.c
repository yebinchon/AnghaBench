
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 int GFP_KERNEL ;
 int SPLIT_NUM ;
 int sg_split (struct scatterlist*,int ,int ,int,size_t*,struct scatterlist**,int*,int ) ;

__attribute__((used)) static int get_sg_skip_bytes(struct scatterlist *sgl, size_t bytes,
        size_t remains, struct scatterlist **out)
{

 size_t split_sizes[2];
 int out_mapped_nents[2];

 split_sizes[0] = bytes;
 split_sizes[1] = remains;

 return sg_split(sgl, 0, 0, 2, split_sizes, out,
   out_mapped_nents, GFP_KERNEL);
}
