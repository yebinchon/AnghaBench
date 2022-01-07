
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_hwseq {int dummy; } ;


 int D1VGA_CONTROL ;
 int D2VGA_CONTROL ;
 int D3VGA_CONTROL ;
 int D4VGA_CONTROL ;
 int D5VGA_CONTROL ;
 int D6VGA_CONTROL ;
 int REG_WRITE (int ,int ) ;

void dcn20_disable_vga(
 struct dce_hwseq *hws)
{
 REG_WRITE(D1VGA_CONTROL, 0);
 REG_WRITE(D2VGA_CONTROL, 0);
 REG_WRITE(D3VGA_CONTROL, 0);
 REG_WRITE(D4VGA_CONTROL, 0);
 REG_WRITE(D5VGA_CONTROL, 0);
 REG_WRITE(D6VGA_CONTROL, 0);
}
