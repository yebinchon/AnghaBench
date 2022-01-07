
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
typedef int gfp_t ;


 void* kzalloc (size_t,int ) ;

__attribute__((used)) static inline void *alloc_req_buf(int nents, int extralen, gfp_t gfp)
{
 size_t size;

 size = sizeof(struct scatterlist) * nents;
 size += extralen;

 return kzalloc(size, gfp);
}
