
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mux {int control; } ;


 int mux_control_deselect (int ) ;

__attribute__((used)) static void iio_mux_deselect(struct mux *mux)
{
 mux_control_deselect(mux->control);
}
