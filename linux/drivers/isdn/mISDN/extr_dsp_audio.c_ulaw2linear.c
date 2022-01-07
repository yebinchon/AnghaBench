
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline short int ulaw2linear(unsigned char ulaw)
{
 short mu, e, f, y;
 static short etab[] = {0, 132, 396, 924, 1980, 4092, 8316, 16764};

 mu = 255 - ulaw;
 e = (mu & 0x70) / 16;
 f = mu & 0x0f;
 y = f * (1 << (e + 3));
 y += etab[e];
 if (mu & 0x80)
  y = -y;
 return y;
}
