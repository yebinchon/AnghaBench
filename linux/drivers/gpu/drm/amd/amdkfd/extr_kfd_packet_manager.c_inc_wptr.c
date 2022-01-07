
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int WARN (int,char*) ;

__attribute__((used)) static inline void inc_wptr(unsigned int *wptr, unsigned int increment_bytes,
    unsigned int buffer_size_bytes)
{
 unsigned int temp = *wptr + increment_bytes / sizeof(uint32_t);

 WARN((temp * sizeof(uint32_t)) > buffer_size_bytes,
      "Runlist IB overflow");
 *wptr = temp;
}
