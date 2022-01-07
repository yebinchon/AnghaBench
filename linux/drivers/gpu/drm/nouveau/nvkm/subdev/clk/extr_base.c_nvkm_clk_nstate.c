
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_clk {scalar_t__ allow_reclock; } ;


 int kstrtol (char const*,int ,long*) ;
 int nvkm_clk_ustate_update (struct nvkm_clk*,long) ;
 scalar_t__ strncasecmpz (char const*,char*,int) ;

__attribute__((used)) static int
nvkm_clk_nstate(struct nvkm_clk *clk, const char *mode, int arglen)
{
 int ret = 1;

 if (clk->allow_reclock && !strncasecmpz(mode, "auto", arglen))
  return -2;

 if (strncasecmpz(mode, "disabled", arglen)) {
  char save = mode[arglen];
  long v;

  ((char *)mode)[arglen] = '\0';
  if (!kstrtol(mode, 0, &v)) {
   ret = nvkm_clk_ustate_update(clk, v);
   if (ret < 0)
    ret = 1;
  }
  ((char *)mode)[arglen] = save;
 }

 return ret - 2;
}
