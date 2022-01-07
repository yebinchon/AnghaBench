
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max3191x_chip {scalar_t__ mode; } ;


 scalar_t__ STATUS_BYTE_ENABLED ;

__attribute__((used)) static unsigned int max3191x_wordlen(struct max3191x_chip *max3191x)
{
 return max3191x->mode == STATUS_BYTE_ENABLED ? 2 : 1;
}
