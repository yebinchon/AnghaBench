
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp_device {int ord; struct device* dev; } ;
struct psp_device {int name; struct sp_device* sp; struct device* dev; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 struct psp_device* devm_kzalloc (struct device*,int,int ) ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static struct psp_device *psp_alloc_struct(struct sp_device *sp)
{
 struct device *dev = sp->dev;
 struct psp_device *psp;

 psp = devm_kzalloc(dev, sizeof(*psp), GFP_KERNEL);
 if (!psp)
  return ((void*)0);

 psp->dev = dev;
 psp->sp = sp;

 snprintf(psp->name, sizeof(psp->name), "psp-%u", sp->ord);

 return psp;
}
