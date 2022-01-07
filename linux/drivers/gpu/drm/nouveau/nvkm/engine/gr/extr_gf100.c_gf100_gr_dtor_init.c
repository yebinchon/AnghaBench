
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gf100_gr_pack {int dummy; } ;


 int vfree (struct gf100_gr_pack*) ;

__attribute__((used)) static void
gf100_gr_dtor_init(struct gf100_gr_pack *pack)
{
 vfree(pack);
}
