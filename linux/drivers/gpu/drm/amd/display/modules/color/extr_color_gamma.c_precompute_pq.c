
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_x_point {int x; } ;
struct fixed31_32 {int dummy; } ;


 int MAX_HW_POINTS ;
 int compute_pq (struct fixed31_32,int *) ;
 struct hw_x_point* coordinates_x ;
 struct fixed31_32 dc_fixpt_from_fraction (int,int) ;
 struct fixed31_32 dc_fixpt_mul (int ,struct fixed31_32) ;
 int dc_fixpt_zero ;
 int * pq_table ;

void precompute_pq(void)
{
 int i;
 struct fixed31_32 x;
 const struct hw_x_point *coord_x = coordinates_x + 32;
 struct fixed31_32 scaling_factor =
   dc_fixpt_from_fraction(80, 10000);


 for (i = 0; i < 32; i++)
  pq_table[i] = dc_fixpt_zero;

 for (i = 32; i <= MAX_HW_POINTS; i++) {
  x = dc_fixpt_mul(coord_x->x, scaling_factor);
  compute_pq(x, &pq_table[i]);
  ++coord_x;
 }
}
