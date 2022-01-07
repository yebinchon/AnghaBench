
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
typedef int buf ;


 int HZIP_GZIP_HEAD_BUF ;
 size_t __get_gzip_head_size (char*) ;
 int sg_copy_to_buffer (struct scatterlist*,int ,char*,int) ;
 int sg_nents (struct scatterlist*) ;

__attribute__((used)) static size_t get_gzip_head_size(struct scatterlist *sgl)
{
 char buf[HZIP_GZIP_HEAD_BUF];

 sg_copy_to_buffer(sgl, sg_nents(sgl), buf, sizeof(buf));

 return __get_gzip_head_size(buf);
}
