
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compress {int pool; } ;


 int ALLOW_FAIL ;
 scalar_t__ pool_init (int *,int ) ;

__attribute__((used)) static bool compress_init(struct compress *c)
{
 return pool_init(&c->pool, ALLOW_FAIL) == 0;
}
