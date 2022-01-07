
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int inb (unsigned long) ;

__attribute__((used)) static u8 ide_inb(unsigned long port)
{
 return (u8) inb(port);
}
