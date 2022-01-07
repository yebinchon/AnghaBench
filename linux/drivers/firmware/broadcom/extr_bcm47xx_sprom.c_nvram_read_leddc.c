
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int buf ;


 int get_nvram_var (char const*,int *,char const*,char*,int,int) ;
 int kstrtou32 (int ,int ,int*) ;
 int pr_warn (char*,char const*,char const*,char*,int) ;
 int strim (char*) ;

__attribute__((used)) static void nvram_read_leddc(const char *prefix, const char *name,
        u8 *leddc_on_time, u8 *leddc_off_time,
        bool fallback)
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

 if (val == 0xffff || val == 0xffffffff)
  return;

 *leddc_on_time = val & 0xff;
 *leddc_off_time = (val >> 16) & 0xff;
}
