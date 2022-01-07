
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_cli {int mutex; struct nouveau_abi16* abi16; } ;
struct nouveau_abi16 {int dummy; } ;
struct drm_file {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ nouveau_abi16 (struct drm_file*) ;
 struct nouveau_cli* nouveau_cli (struct drm_file*) ;

struct nouveau_abi16 *
nouveau_abi16_get(struct drm_file *file_priv)
{
 struct nouveau_cli *cli = nouveau_cli(file_priv);
 mutex_lock(&cli->mutex);
 if (nouveau_abi16(file_priv))
  return cli->abi16;
 mutex_unlock(&cli->mutex);
 return ((void*)0);
}
