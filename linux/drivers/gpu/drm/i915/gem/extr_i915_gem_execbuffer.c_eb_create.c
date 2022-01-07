
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_execbuffer {unsigned int buffer_count; unsigned int lut_size; int buckets; TYPE_1__* args; } ;
struct hlist_head {int dummy; } ;
typedef int gfp_t ;
struct TYPE_2__ {int flags; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int I915_EXEC_HANDLE_LUT ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 int ilog2 (unsigned int) ;
 int kzalloc (int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int eb_create(struct i915_execbuffer *eb)
{
 if (!(eb->args->flags & I915_EXEC_HANDLE_LUT)) {
  unsigned int size = 1 + ilog2(eb->buffer_count);
  do {
   gfp_t flags;







   flags = GFP_KERNEL;
   if (size > 1)
    flags |= __GFP_NORETRY | __GFP_NOWARN;

   eb->buckets = kzalloc(sizeof(struct hlist_head) << size,
           flags);
   if (eb->buckets)
    break;
  } while (--size);

  if (unlikely(!size))
   return -ENOMEM;

  eb->lut_size = size;
 } else {
  eb->lut_size = -eb->buffer_count;
 }

 return 0;
}
