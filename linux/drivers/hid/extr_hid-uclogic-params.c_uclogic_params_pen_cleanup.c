
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uclogic_params_pen {int desc_ptr; } ;


 int kfree (int ) ;
 int memset (struct uclogic_params_pen*,int ,int) ;

__attribute__((used)) static void uclogic_params_pen_cleanup(struct uclogic_params_pen *pen)
{
 kfree(pen->desc_ptr);
 memset(pen, 0, sizeof(*pen));
}
