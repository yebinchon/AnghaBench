
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clock ;

__attribute__((used)) static int pcf_isa_getclock(void *data)
{
 return (clock);
}
