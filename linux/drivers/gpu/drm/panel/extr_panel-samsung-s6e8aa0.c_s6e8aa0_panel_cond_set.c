
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6e8aa0 {int version; } ;


 int s6e8aa0_dcs_write_seq_static (struct s6e8aa0*,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int) ;
 int s6e8aa0_panel_cond_set_v142 (struct s6e8aa0*) ;

__attribute__((used)) static void s6e8aa0_panel_cond_set(struct s6e8aa0 *ctx)
{
 if (ctx->version < 142)
  s6e8aa0_dcs_write_seq_static(ctx,
   0xf8, 0x19, 0x35, 0x00, 0x00, 0x00, 0x94, 0x00,
   0x3c, 0x78, 0x10, 0x27, 0x08, 0x6e, 0x00, 0x00,
   0x00, 0x00, 0x04, 0x08, 0x6e, 0x00, 0x00, 0x00,
   0x00, 0x07, 0x07, 0x23, 0x6e, 0xc0, 0xc1, 0x01,
   0x81, 0xc1, 0x00, 0xc3, 0xf6, 0xf6, 0xc1
  );
 else
  s6e8aa0_panel_cond_set_v142(ctx);
}
