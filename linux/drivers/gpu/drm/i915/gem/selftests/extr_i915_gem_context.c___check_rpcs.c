
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int GEN8_RPCS_SS_CNT_ENABLE ;
 int GEN8_RPCS_SS_CNT_MASK ;
 int GEN8_RPCS_SS_CNT_SHIFT ;
 int GEN8_RPCS_S_CNT_ENABLE ;
 int pr_err (char*,char const*,char const*,int,...) ;
 int pr_info (char*,int,int,char*,int,char*) ;

__attribute__((used)) static int
__check_rpcs(const char *name, u32 rpcs, int slices, unsigned int expected,
      const char *prefix, const char *suffix)
{
 if (slices == expected)
  return 0;

 if (slices < 0) {
  pr_err("%s: %s read slice count failed with %d%s\n",
         name, prefix, slices, suffix);
  return slices;
 }

 pr_err("%s: %s slice count %d is not %u%s\n",
        name, prefix, slices, expected, suffix);

 pr_info("RPCS=0x%x; %u%sx%u%s\n",
  rpcs, slices,
  (rpcs & GEN8_RPCS_S_CNT_ENABLE) ? "*" : "",
  (rpcs & GEN8_RPCS_SS_CNT_MASK) >> GEN8_RPCS_SS_CNT_SHIFT,
  (rpcs & GEN8_RPCS_SS_CNT_ENABLE) ? "*" : "");

 return -EINVAL;
}
