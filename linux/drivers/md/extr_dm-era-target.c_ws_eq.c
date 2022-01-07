
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeset_metadata {int dummy; } ;


 int memcmp (void const*,void const*,int) ;

__attribute__((used)) static int ws_eq(void *context, const void *value1, const void *value2)
{
 return !memcmp(value1, value2, sizeof(struct writeset_metadata));
}
