
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_therm {struct nvkm_fan* fan; } ;
struct nvkm_fan {char* type; int set; int get; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_fan* kzalloc (int,int ) ;
 int nvkm_fannil_get ;
 int nvkm_fannil_set ;

int
nvkm_fannil_create(struct nvkm_therm *therm)
{
 struct nvkm_fan *priv;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 therm->fan = priv;
 if (!priv)
  return -ENOMEM;

 priv->type = "none / external";
 priv->get = nvkm_fannil_get;
 priv->set = nvkm_fannil_set;
 return 0;
}
