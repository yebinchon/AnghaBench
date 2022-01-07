
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at_xdmac {int dummy; } ;


 int AT_XDMAC_GD ;
 int AT_XDMAC_GID ;
 int AT_XDMAC_GS ;
 scalar_t__ at_xdmac_read (struct at_xdmac*,int ) ;
 int at_xdmac_write (struct at_xdmac*,int ,long) ;
 int cpu_relax () ;

__attribute__((used)) static void at_xdmac_off(struct at_xdmac *atxdmac)
{
 at_xdmac_write(atxdmac, AT_XDMAC_GD, -1L);


 while (at_xdmac_read(atxdmac, AT_XDMAC_GS))
  cpu_relax();

 at_xdmac_write(atxdmac, AT_XDMAC_GID, -1L);
}
