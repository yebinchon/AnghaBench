
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct amd64_pvt {int dummy; } ;


 int CS_EVEN_PRIMARY ;
 int CS_ODD_PRIMARY ;
 int CS_ODD_SECONDARY ;
 scalar_t__ csrow_enabled (int,int ,struct amd64_pvt*) ;
 scalar_t__ csrow_sec_enabled (int,int ,struct amd64_pvt*) ;

__attribute__((used)) static int f17_get_cs_mode(int dimm, u8 ctrl, struct amd64_pvt *pvt)
{
 int cs_mode = 0;

 if (csrow_enabled(2 * dimm, ctrl, pvt))
  cs_mode |= CS_EVEN_PRIMARY;

 if (csrow_enabled(2 * dimm + 1, ctrl, pvt))
  cs_mode |= CS_ODD_PRIMARY;


 if (csrow_sec_enabled(2 * dimm + 1, ctrl, pvt))
  cs_mode |= CS_ODD_SECONDARY;

 return cs_mode;
}
