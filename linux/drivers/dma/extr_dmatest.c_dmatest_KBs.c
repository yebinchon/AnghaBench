
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s64 ;


 unsigned long long FIXPT_TO_INT (int ) ;
 int dmatest_persec (int ,unsigned long long) ;

__attribute__((used)) static unsigned long long dmatest_KBs(s64 runtime, unsigned long long len)
{
 return FIXPT_TO_INT(dmatest_persec(runtime, len >> 10));
}
