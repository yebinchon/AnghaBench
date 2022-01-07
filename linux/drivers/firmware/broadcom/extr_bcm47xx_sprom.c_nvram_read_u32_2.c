
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef int buf ;


 int get_nvram_var (char const*,int *,char const*,char*,int,int) ;
 int kstrtou32 (int ,int ,int*) ;
 int pr_warn (char*,char const*,char const*,char*,int) ;
 int strim (char*) ;

__attribute__((used)) static void nvram_read_u32_2(const char *prefix, const char *name,
        u16 *val_lo, u16 *val_hi, bool fallback)
{
 char buf[100];
 int err;
 u32 val;

 err = get_nvram_var(prefix, ((void*)0), name, buf, sizeof(buf), fallback);
 if (err < 0)
  return;
 err = kstrtou32(strim(buf), 0, &val);
 if (err) {
  pr_warn("can not parse nvram name %s%s with value %s got %i\n",
   prefix, name, buf, err);
  return;
 }
 *val_lo = (val & 0x0000FFFFU);
 *val_hi = (val & 0xFFFF0000U) >> 16;
}
