
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct riic_dev {int base; } ;


 int readb (int) ;
 int writeb (int,int) ;

__attribute__((used)) static inline void riic_clear_set_bit(struct riic_dev *riic, u8 clear, u8 set, u8 reg)
{
 writeb((readb(riic->base + reg) & ~clear) | set, riic->base + reg);
}
