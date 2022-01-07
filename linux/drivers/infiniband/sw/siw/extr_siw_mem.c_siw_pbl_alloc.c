
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct siw_pble {int dummy; } ;
struct siw_pbl {int max_buf; } ;


 int EINVAL ;
 int ENOMEM ;
 struct siw_pbl* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct siw_pbl* kzalloc (int,int ) ;

struct siw_pbl *siw_pbl_alloc(u32 num_buf)
{
 struct siw_pbl *pbl;
 int buf_size = sizeof(*pbl);

 if (num_buf == 0)
  return ERR_PTR(-EINVAL);

 buf_size += ((num_buf - 1) * sizeof(struct siw_pble));

 pbl = kzalloc(buf_size, GFP_KERNEL);
 if (!pbl)
  return ERR_PTR(-ENOMEM);

 pbl->max_buf = num_buf;

 return pbl;
}
