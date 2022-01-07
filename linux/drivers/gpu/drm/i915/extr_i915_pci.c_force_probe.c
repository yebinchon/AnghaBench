
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ alpha_support; } ;


 int DRM_INFO (char*,scalar_t__) ;
 int GFP_KERNEL ;
 TYPE_1__ i915_modparams ;
 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;
 scalar_t__ kstrtou16 (char*,int,scalar_t__*) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static bool force_probe(u16 device_id, const char *devices)
{
 char *s, *p, *tok;
 bool ret;


 if (i915_modparams.alpha_support) {
  DRM_INFO("i915.alpha_support is deprecated, use i915.force_probe=%04x instead\n",
    device_id);
  return 1;
 }

 if (!devices || !*devices)
  return 0;


 if (strcmp(devices, "*") == 0)
  return 1;

 s = kstrdup(devices, GFP_KERNEL);
 if (!s)
  return 0;

 for (p = s, ret = 0; (tok = strsep(&p, ",")) != ((void*)0); ) {
  u16 val;

  if (kstrtou16(tok, 16, &val) == 0 && val == device_id) {
   ret = 1;
   break;
  }
 }

 kfree(s);

 return ret;
}
