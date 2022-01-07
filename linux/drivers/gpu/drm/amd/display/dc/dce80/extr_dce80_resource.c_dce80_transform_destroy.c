
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transform {int dummy; } ;


 int TO_DCE_TRANSFORM (struct transform*) ;
 int kfree (int ) ;

__attribute__((used)) static void dce80_transform_destroy(struct transform **xfm)
{
 kfree(TO_DCE_TRANSFORM(*xfm));
 *xfm = ((void*)0);
}
