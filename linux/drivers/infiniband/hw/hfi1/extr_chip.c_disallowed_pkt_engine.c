
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEES (int ) ;
 int TX_SDMA0_DISALLOWED_PACKET ;

__attribute__((used)) static inline int disallowed_pkt_engine(int posn)
{
 return posn - SEES(TX_SDMA0_DISALLOWED_PACKET);
}
