
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_fence {int dummy; } ;
struct nouveau_channel {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static int
nv04_fence_sync(struct nouveau_fence *fence,
  struct nouveau_channel *prev, struct nouveau_channel *chan)
{
 return -ENODEV;
}
