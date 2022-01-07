
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dal_logger {int dummy; } ;
struct TYPE_3__ {int value; } ;
struct TYPE_4__ {TYPE_1__ x; } ;


 int LOG_GAMMA_WRITE (char*,...) ;
 int MAX_HW_POINTS ;
 TYPE_2__* coordinates_x ;

void log_x_points_distribution(struct dal_logger *logger)
{
 int i = 0;

 if (logger != ((void*)0)) {
  LOG_GAMMA_WRITE("Log X Distribution\n");

  for (i = 0; i < MAX_HW_POINTS; i++)
   LOG_GAMMA_WRITE("%llu\n", coordinates_x[i].x.value);
 }
}
