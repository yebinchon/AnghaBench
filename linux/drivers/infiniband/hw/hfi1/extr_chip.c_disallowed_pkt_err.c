
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEES (int ) ;
 int TX_SDMA0_DISALLOWED_PACKET ;
 int TX_SDMA15_DISALLOWED_PACKET ;

__attribute__((used)) static inline int disallowed_pkt_err(int posn)
{
 return (posn >= SEES(TX_SDMA0_DISALLOWED_PACKET) &&
  posn <= SEES(TX_SDMA15_DISALLOWED_PACKET));
}
