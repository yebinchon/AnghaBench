
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int div_u64 (int,unsigned long long) ;

__attribute__((used)) static long long bucket_percentage(unsigned long long bucket,
       unsigned long long total)
{
 int p = bucket * 100;

 p = div_u64(p, total);

 return p;
}
