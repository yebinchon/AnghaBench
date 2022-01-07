
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;



__attribute__((used)) static inline u16 extract_syndrome(u64 status)
{
 return ((status >> 47) & 0xff) | ((status >> 16) & 0xff00);
}
