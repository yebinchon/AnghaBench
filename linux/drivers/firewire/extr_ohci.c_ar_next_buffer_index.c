
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AR_BUFFERS ;

__attribute__((used)) static inline unsigned int ar_next_buffer_index(unsigned int index)
{
 return (index + 1) % AR_BUFFERS;
}
