
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adi {int idx; int ret; int* data; } ;



__attribute__((used)) static inline int adi_get_bits(struct adi *adi, int count)
{
 int bits = 0;
 int i;
 if ((adi->idx += count) > adi->ret) return 0;
 for (i = 0; i < count; i++)
  bits |= ((adi->data[adi->idx - i] >> 5) & 1) << i;
 return bits;
}
