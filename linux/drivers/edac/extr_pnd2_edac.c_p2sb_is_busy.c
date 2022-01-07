
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int P2SB_BUSY ;
 int P2SB_READ (int ,int ,int*) ;
 int P2SB_STAT_OFF ;
 int word ;

__attribute__((used)) static bool p2sb_is_busy(u16 *status)
{
 P2SB_READ(word, P2SB_STAT_OFF, status);

 return !!(*status & P2SB_BUSY);
}
