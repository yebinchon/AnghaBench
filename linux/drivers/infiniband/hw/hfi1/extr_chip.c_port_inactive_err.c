
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ SEES (int ) ;
 int TX_INCORRECT_LINK_STATE ;
 int TX_LINKDOWN ;

__attribute__((used)) static inline int port_inactive_err(u64 posn)
{
 return (posn >= SEES(TX_LINKDOWN) &&
  posn <= SEES(TX_INCORRECT_LINK_STATE));
}
