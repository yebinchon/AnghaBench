
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dmatest_data {int cnt; scalar_t__* raw; scalar_t__* aligned; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ PTR_ALIGN (scalar_t__,int ) ;
 int __dmatest_free_test_data (struct dmatest_data*,unsigned int) ;
 void* kcalloc (int,int,int ) ;
 scalar_t__ kmalloc (int ,int ) ;

__attribute__((used)) static int dmatest_alloc_test_data(struct dmatest_data *d,
  unsigned int buf_size, u8 align)
{
 unsigned int i = 0;

 d->raw = kcalloc(d->cnt + 1, sizeof(u8 *), GFP_KERNEL);
 if (!d->raw)
  return -ENOMEM;

 d->aligned = kcalloc(d->cnt + 1, sizeof(u8 *), GFP_KERNEL);
 if (!d->aligned)
  goto err;

 for (i = 0; i < d->cnt; i++) {
  d->raw[i] = kmalloc(buf_size + align, GFP_KERNEL);
  if (!d->raw[i])
   goto err;


  if (align)
   d->aligned[i] = PTR_ALIGN(d->raw[i], align);
  else
   d->aligned[i] = d->raw[i];
 }

 return 0;
err:
 __dmatest_free_test_data(d, i);
 return -ENOMEM;
}
