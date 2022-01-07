
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rot_context {int dummy; } ;




 int ROT_CONTROL ;
 int ROT_CONTROL_FMT_MASK ;
 int ROT_CONTROL_FMT_RGB888 ;
 int ROT_CONTROL_FMT_YCBCR420_2P ;
 int rot_read (int ) ;
 int rot_write (int,int ) ;

__attribute__((used)) static void rotator_src_set_fmt(struct rot_context *rot, u32 fmt)
{
 u32 val;

 val = rot_read(ROT_CONTROL);
 val &= ~ROT_CONTROL_FMT_MASK;

 switch (fmt) {
 case 129:
  val |= ROT_CONTROL_FMT_YCBCR420_2P;
  break;
 case 128:
  val |= ROT_CONTROL_FMT_RGB888;
  break;
 }

 rot_write(val, ROT_CONTROL);
}
