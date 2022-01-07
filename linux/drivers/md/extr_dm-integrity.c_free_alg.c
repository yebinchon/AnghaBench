
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alg_spec {int key; int alg_string; } ;


 int kzfree (int ) ;
 int memset (struct alg_spec*,int ,int) ;

__attribute__((used)) static void free_alg(struct alg_spec *a)
{
 kzfree(a->alg_string);
 kzfree(a->key);
 memset(a, 0, sizeof *a);
}
