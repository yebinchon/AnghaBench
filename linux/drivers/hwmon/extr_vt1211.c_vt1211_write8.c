
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct vt1211_data {scalar_t__ addr; } ;


 int outb (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void vt1211_write8(struct vt1211_data *data, u8 reg, u8 val)
{
 outb(val, data->addr + reg);
}
