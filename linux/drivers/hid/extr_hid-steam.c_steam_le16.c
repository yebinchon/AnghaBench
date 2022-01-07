
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s16 ;
typedef int __le16 ;


 int le16_to_cpup (int *) ;

__attribute__((used)) static inline s16 steam_le16(u8 *data)
{
 s16 x = (s16) le16_to_cpup((__le16 *)data);

 return x == -32768 ? -32767 : x;
}
