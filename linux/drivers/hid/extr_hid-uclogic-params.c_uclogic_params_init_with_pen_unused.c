
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uclogic_params {int pen_unused; } ;


 int memset (struct uclogic_params*,int ,int) ;

__attribute__((used)) static void uclogic_params_init_with_pen_unused(struct uclogic_params *params)
{
 memset(params, 0, sizeof(*params));
 params->pen_unused = 1;
}
