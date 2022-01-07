
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct intel_timeline {int dummy; } ;
struct __igt_sync {scalar_t__ expected; int seqno; scalar_t__ set; int name; } ;


 int EINVAL ;
 scalar_t__ __intel_timeline_sync_is_later (struct intel_timeline*,int ,int ) ;
 int __intel_timeline_sync_set (struct intel_timeline*,int ,int ) ;
 int pr_err (char*,char const*,int ,int ,int ,int ) ;
 int yesno (scalar_t__) ;

__attribute__((used)) static int __igt_sync(struct intel_timeline *tl,
        u64 ctx,
        const struct __igt_sync *p,
        const char *name)
{
 int ret;

 if (__intel_timeline_sync_is_later(tl, ctx, p->seqno) != p->expected) {
  pr_err("%s: %s(ctx=%llu, seqno=%u) expected passed %s but failed\n",
         name, p->name, ctx, p->seqno, yesno(p->expected));
  return -EINVAL;
 }

 if (p->set) {
  ret = __intel_timeline_sync_set(tl, ctx, p->seqno);
  if (ret)
   return ret;
 }

 return 0;
}
