
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct insert_page {int vm; int level; int offset; int addr; } ;


 int bxt_vtd_ggtt_wa (int ) ;
 int gen8_ggtt_insert_page (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int bxt_vtd_ggtt_insert_page__cb(void *_arg)
{
 struct insert_page *arg = _arg;

 gen8_ggtt_insert_page(arg->vm, arg->addr, arg->offset, arg->level, 0);
 bxt_vtd_ggtt_wa(arg->vm);

 return 0;
}
