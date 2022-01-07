
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kstrndup (char const*,int,int ) ;
 int kstrtol (char*,int ,long*) ;
 char* nvkm_stropt (char const*,char const*,int*) ;

long
nvkm_longopt(const char *optstr, const char *opt, long value)
{
 long result = value;
 int arglen;
 char *s;

 optstr = nvkm_stropt(optstr, opt, &arglen);
 if (optstr && (s = kstrndup(optstr, arglen, GFP_KERNEL))) {
  int ret = kstrtol(s, 0, &value);
  if (ret == 0)
   result = value;
  kfree(s);
 }

 return result;
}
