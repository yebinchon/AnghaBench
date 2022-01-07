
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int mapped_nulls ;
 scalar_t__ memcmp (int *,int ,int) ;
 int nulls ;

__attribute__((used)) static int address_not_null(u8 *ip)
{
 return (memcmp(ip, nulls, 16) && memcmp(ip, mapped_nulls, 16));
}
