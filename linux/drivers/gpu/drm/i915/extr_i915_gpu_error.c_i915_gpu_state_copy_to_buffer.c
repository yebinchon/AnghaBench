
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {scalar_t__ dma_address; size_t length; size_t offset; } ;
struct i915_gpu_state {int fit; struct scatterlist* sgl; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;


 int GEM_BUG_ON (int) ;
 struct scatterlist* READ_ONCE (int ) ;
 int WRITE_ONCE (int ,struct scatterlist*) ;
 int err_print_to_sgl (struct i915_gpu_state*) ;
 int memcpy (char*,scalar_t__,size_t) ;
 size_t min (size_t,size_t) ;
 scalar_t__ page_address (int ) ;
 struct scatterlist* sg_chain_ptr (struct scatterlist*) ;
 int sg_is_chain (struct scatterlist*) ;
 int sg_is_last (int ) ;
 int sg_page (struct scatterlist*) ;

ssize_t i915_gpu_state_copy_to_buffer(struct i915_gpu_state *error,
          char *buf, loff_t off, size_t rem)
{
 struct scatterlist *sg;
 size_t count;
 loff_t pos;
 int err;

 if (!error || !rem)
  return 0;

 err = err_print_to_sgl(error);
 if (err)
  return err;

 sg = READ_ONCE(error->fit);
 if (!sg || off < sg->dma_address)
  sg = error->sgl;
 if (!sg)
  return 0;

 pos = sg->dma_address;
 count = 0;
 do {
  size_t len, start;

  if (sg_is_chain(sg)) {
   sg = sg_chain_ptr(sg);
   GEM_BUG_ON(sg_is_chain(sg));
  }

  len = sg->length;
  if (pos + len <= off) {
   pos += len;
   continue;
  }

  start = sg->offset;
  if (pos < off) {
   GEM_BUG_ON(off - pos > len);
   len -= off - pos;
   start += off - pos;
   pos = off;
  }

  len = min(len, rem);
  GEM_BUG_ON(!len || len > sg->length);

  memcpy(buf, page_address(sg_page(sg)) + start, len);

  count += len;
  pos += len;

  buf += len;
  rem -= len;
  if (!rem) {
   WRITE_ONCE(error->fit, sg);
   break;
  }
 } while (!sg_is_last(sg++));

 return count;
}
