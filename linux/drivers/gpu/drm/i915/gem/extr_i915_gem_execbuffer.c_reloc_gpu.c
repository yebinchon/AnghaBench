
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct reloc_cache {int rq_size; int * rq_cmd; int rq; } ;
struct i915_vma {int dummy; } ;
struct i915_execbuffer {int engine; struct reloc_cache reloc_cache; } ;


 int ENODEV ;
 int * ERR_PTR (int) ;
 int EWOULDBLOCK ;
 int PAGE_SIZE ;
 int __reloc_gpu_alloc (struct i915_execbuffer*,struct i915_vma*,unsigned int) ;
 scalar_t__ eb_use_cmdparser (struct i915_execbuffer*) ;
 int intel_engine_can_store_dword (int ) ;
 int reloc_gpu_flush (struct reloc_cache*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u32 *reloc_gpu(struct i915_execbuffer *eb,
        struct i915_vma *vma,
        unsigned int len)
{
 struct reloc_cache *cache = &eb->reloc_cache;
 u32 *cmd;

 if (cache->rq_size > PAGE_SIZE/sizeof(u32) - (len + 1))
  reloc_gpu_flush(cache);

 if (unlikely(!cache->rq)) {
  int err;


  if (eb_use_cmdparser(eb))
   return ERR_PTR(-EWOULDBLOCK);

  if (!intel_engine_can_store_dword(eb->engine))
   return ERR_PTR(-ENODEV);

  err = __reloc_gpu_alloc(eb, vma, len);
  if (unlikely(err))
   return ERR_PTR(err);
 }

 cmd = cache->rq_cmd + cache->rq_size;
 cache->rq_size += len;

 return cmd;
}
