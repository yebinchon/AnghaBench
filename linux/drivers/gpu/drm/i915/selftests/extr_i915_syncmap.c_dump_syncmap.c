
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_syncmap {int dummy; } ;


 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int check_syncmap_free (struct i915_syncmap**) ;
 int i915_syncmap_free (struct i915_syncmap**) ;
 scalar_t__ i915_syncmap_print_to_buf (struct i915_syncmap*,char*,int ) ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 int pr_err (char*,char*) ;

__attribute__((used)) static int dump_syncmap(struct i915_syncmap *sync, int err)
{
 char *buf;

 if (!err)
  return check_syncmap_free(&sync);

 buf = kmalloc(PAGE_SIZE, GFP_KERNEL);
 if (!buf)
  goto skip;

 if (i915_syncmap_print_to_buf(sync, buf, PAGE_SIZE))
  pr_err("%s", buf);

 kfree(buf);

skip:
 i915_syncmap_free(&sync);
 return err;
}
