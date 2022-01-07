
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_finger {int abs_y; int abs_x; } ;
struct applespi_data {void* tp_dim_max_y; void* tp_dim_min_y; void* tp_dim_max_x; void* tp_dim_min_x; } ;


 int le16_to_int (int ) ;
 void* max (void*,int ) ;
 void* min (void*,int ) ;

__attribute__((used)) static void applespi_debug_update_dimensions(struct applespi_data *applespi,
          const struct tp_finger *f)
{
 applespi->tp_dim_min_x = min(applespi->tp_dim_min_x,
         le16_to_int(f->abs_x));
 applespi->tp_dim_max_x = max(applespi->tp_dim_max_x,
         le16_to_int(f->abs_x));
 applespi->tp_dim_min_y = min(applespi->tp_dim_min_y,
         le16_to_int(f->abs_y));
 applespi->tp_dim_max_y = max(applespi->tp_dim_max_y,
         le16_to_int(f->abs_y));
}
