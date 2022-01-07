
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static inline u64 generic_id(u64 timestamp, unsigned int part, int count)
{
 return (timestamp * 100 + part) * 1000 + count;
}
