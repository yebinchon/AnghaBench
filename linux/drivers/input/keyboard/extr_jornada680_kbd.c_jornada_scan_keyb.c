
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCDR ;
 int PDCR ;
 int PDDR ;
 int PECR ;
 int PEDR ;
 int PFDR ;
 int PGDR ;
 int PHDR ;
 void* __raw_readb (int ) ;
 int __raw_readw (int ) ;
 int __raw_writeb (int,int ) ;
 int __raw_writew (unsigned short,int ) ;
 int udelay (int) ;

__attribute__((used)) static void jornada_scan_keyb(unsigned char *s)
{
 int i;
 unsigned short ec_static, dc_static;
 unsigned char matrix_switch[] = {
  0xfd, 0xff,
  0xdf, 0xff,
  0x7f, 0xff,
  0xff, 0xfe,
  0xff, 0xfd,
  0xff, 0xf7,
  0xff, 0xbf,
  0xff, 0x7f,
 }, *t = matrix_switch;






 unsigned short matrix_PDE[] = {
  0xcc04, 0xf0cf,
  0xc40c, 0xf0cf,
  0x4c0c, 0xf0cf,
  0xcc0c, 0xf0cd,
  0xcc0c, 0xf0c7,
  0xcc0c, 0xf04f,
  0xcc0c, 0xd0cf,
  0xcc0c, 0x70cf,
 }, *y = matrix_PDE;


 dc_static = (__raw_readw(PDCR) & (~0xcc0c));
 ec_static = (__raw_readw(PECR) & (~0xf0cf));

 for (i = 0; i < 8; i++) {

  __raw_writew((dc_static | *y++), PDCR);
  __raw_writew((ec_static | *y++), PECR);
  udelay(5);


  __raw_writeb(*t++, PDDR);
  __raw_writeb(*t++, PEDR);
  udelay(50);


  *s++ = __raw_readb(PCDR);
  *s++ = __raw_readb(PFDR);
 }

 __raw_writeb(0xff, PDDR);
 __raw_writeb(0xff, PEDR);


 __raw_writew((dc_static | (0x5555 & 0xcc0c)),PDCR);
 __raw_writew((ec_static | (0x5555 & 0xf0cf)),PECR);


 *s++ = __raw_readb(PGDR);
 *s++ = __raw_readb(PHDR);
}
