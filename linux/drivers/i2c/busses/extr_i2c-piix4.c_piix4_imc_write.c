
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int KERNCZ_IMC_DATA ;
 int KERNCZ_IMC_IDX ;
 int outb_p (int ,int ) ;

__attribute__((used)) static void piix4_imc_write(uint8_t idx, uint8_t value)
{
 outb_p(idx, KERNCZ_IMC_IDX);
 outb_p(value, KERNCZ_IMC_DATA);
}
