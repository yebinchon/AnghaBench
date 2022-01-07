
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isascii (int) ;
 scalar_t__ isprint (int) ;

__attribute__((used)) static char printable_char(int c)
{
 return isascii(c) && isprint(c) ? c : '?';
}
