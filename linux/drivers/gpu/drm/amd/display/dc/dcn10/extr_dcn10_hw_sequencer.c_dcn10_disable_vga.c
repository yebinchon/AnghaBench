
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_hwseq {int dummy; } ;


 int D1VGA_CONTROL ;
 int D1VGA_MODE_ENABLE ;
 int D2VGA_CONTROL ;
 int D2VGA_MODE_ENABLE ;
 int D3VGA_CONTROL ;
 int D3VGA_MODE_ENABLE ;
 int D4VGA_CONTROL ;
 int D4VGA_MODE_ENABLE ;
 int REG_GET (int ,int ,unsigned int*) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_WRITE (int ,int ) ;
 int VGA_TEST_CONTROL ;
 int VGA_TEST_ENABLE ;
 int VGA_TEST_RENDER_START ;

__attribute__((used)) static void dcn10_disable_vga(
 struct dce_hwseq *hws)
{
 unsigned int in_vga1_mode = 0;
 unsigned int in_vga2_mode = 0;
 unsigned int in_vga3_mode = 0;
 unsigned int in_vga4_mode = 0;

 REG_GET(D1VGA_CONTROL, D1VGA_MODE_ENABLE, &in_vga1_mode);
 REG_GET(D2VGA_CONTROL, D2VGA_MODE_ENABLE, &in_vga2_mode);
 REG_GET(D3VGA_CONTROL, D3VGA_MODE_ENABLE, &in_vga3_mode);
 REG_GET(D4VGA_CONTROL, D4VGA_MODE_ENABLE, &in_vga4_mode);

 if (in_vga1_mode == 0 && in_vga2_mode == 0 &&
   in_vga3_mode == 0 && in_vga4_mode == 0)
  return;

 REG_WRITE(D1VGA_CONTROL, 0);
 REG_WRITE(D2VGA_CONTROL, 0);
 REG_WRITE(D3VGA_CONTROL, 0);
 REG_WRITE(D4VGA_CONTROL, 0);
 REG_UPDATE(VGA_TEST_CONTROL, VGA_TEST_ENABLE, 1);
 REG_UPDATE(VGA_TEST_CONTROL, VGA_TEST_RENDER_START, 1);
}
