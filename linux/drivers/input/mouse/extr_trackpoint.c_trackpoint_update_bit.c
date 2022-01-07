
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ps2dev {int dummy; } ;


 int trackpoint_read (struct ps2dev*,int,int*) ;
 int trackpoint_toggle_bit (struct ps2dev*,int,int) ;

__attribute__((used)) static int trackpoint_update_bit(struct ps2dev *ps2dev,
     u8 loc, u8 mask, u8 value)
{
 int retval;
 u8 data;

 retval = trackpoint_read(ps2dev, loc, &data);
 if (retval)
  return retval;

 if (((data & mask) == mask) != !!value)
  retval = trackpoint_toggle_bit(ps2dev, loc, mask);

 return retval;
}
