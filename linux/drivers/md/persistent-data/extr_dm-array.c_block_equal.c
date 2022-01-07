
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le64 ;


 int memcmp (void const*,void const*,int) ;

__attribute__((used)) static int block_equal(void *context, const void *value1, const void *value2)
{
 return !memcmp(value1, value2, sizeof(__le64));
}
