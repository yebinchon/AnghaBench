
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct intel_timeline {int dummy; } ;
struct __igt_sync {char* member_0; int member_1; int member_2; int member_3; scalar_t__ name; } ;


 scalar_t__ BIT_ULL (int) ;
 int ENODEV ;
 int INT_MAX ;
 int UINT_MAX ;
 int __igt_sync (struct intel_timeline*,scalar_t__,struct __igt_sync const*,char*) ;
 int mock_timeline_fini (struct intel_timeline*) ;
 int mock_timeline_init (struct intel_timeline*,int ) ;

__attribute__((used)) static int igt_sync(void *arg)
{
 const struct __igt_sync pass[] = {
  { "unset", 0, 0, 0 },
  { "new", 0, 0, 1 },
  { "0a", 0, 1, 1 },
  { "1a", 1, 0, 1 },
  { "1b", 1, 1, 1 },
  { "0b", 0, 1, 0 },
  { "2a", 2, 0, 1 },
  { "4", 4, 0, 1 },
  { "INT_MAX", INT_MAX, 0, 1 },
  { "INT_MAX-1", INT_MAX-1, 1, 0 },
  { "INT_MAX+1", (u32)INT_MAX+1, 0, 1 },
  { "INT_MAX", INT_MAX, 1, 0 },
  { "UINT_MAX", UINT_MAX, 0, 1 },
  { "wrap", 0, 0, 1 },
  { "unwrap", UINT_MAX, 1, 0 },
  {},
 }, *p;
 struct intel_timeline tl;
 int order, offset;
 int ret = -ENODEV;

 mock_timeline_init(&tl, 0);
 for (p = pass; p->name; p++) {
  for (order = 1; order < 64; order++) {
   for (offset = -1; offset <= (order > 1); offset++) {
    u64 ctx = BIT_ULL(order) + offset;

    ret = __igt_sync(&tl, ctx, p, "1");
    if (ret)
     goto out;
   }
  }
 }
 mock_timeline_fini(&tl);

 mock_timeline_init(&tl, 0);
 for (order = 1; order < 64; order++) {
  for (offset = -1; offset <= (order > 1); offset++) {
   u64 ctx = BIT_ULL(order) + offset;

   for (p = pass; p->name; p++) {
    ret = __igt_sync(&tl, ctx, p, "2");
    if (ret)
     goto out;
   }
  }
 }

out:
 mock_timeline_fini(&tl);
 return ret;
}
