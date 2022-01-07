
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6e8aa0 {int dummy; } ;


 int s6e8aa0_dcs_write_seq_static (struct s6e8aa0*,int,int,int,int) ;

__attribute__((used)) static void s6e8aa0_display_condition_set(struct s6e8aa0 *ctx)
{
 s6e8aa0_dcs_write_seq_static(ctx, 0xf2, 0x80, 0x03, 0x0d);
}
