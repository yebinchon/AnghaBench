
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int LINK_SPEED_12_5G ;
 int LINK_SPEED_25G ;

__attribute__((used)) static inline u16 get_link_speed(u16 link_speed)
{
 return (link_speed == 1) ?
   LINK_SPEED_12_5G : LINK_SPEED_25G;
}
