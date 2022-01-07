
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le16 ;


 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static inline int le16_to_int(__le16 x)
{
 return (signed short)le16_to_cpu(x);
}
