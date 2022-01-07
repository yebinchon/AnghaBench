
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cword {int dummy; } ;



__attribute__((used)) static inline u8 *rep_xcrypt_cbc(const u8 *input, u8 *output, void *key,
     u8 *iv, struct cword *control_word, int count)
{
 asm volatile (".byte 0xf3,0x0f,0xa7,0xd0"
        : "+S" (input), "+D" (output), "+a" (iv)
        : "d" (control_word), "b" (key), "c" (count));
 return iv;
}
