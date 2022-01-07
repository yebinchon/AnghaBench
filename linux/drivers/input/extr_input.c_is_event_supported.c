
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ test_bit (unsigned int,unsigned long*) ;

__attribute__((used)) static inline int is_event_supported(unsigned int code,
         unsigned long *bm, unsigned int max)
{
 return code <= max && test_bit(code, bm);
}
