
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int KERNCZ_IMC_DATA ;
 int KERNCZ_IMC_IDX ;
 int inb_p (int ) ;
 int outb_p (int ,int ) ;

__attribute__((used)) static uint8_t piix4_imc_read(uint8_t idx)
{
 outb_p(idx, KERNCZ_IMC_IDX);
 return inb_p(KERNCZ_IMC_DATA);
}
