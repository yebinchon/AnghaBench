
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct vt8231_data {scalar_t__ addr; } ;


 int inb_p (scalar_t__) ;

__attribute__((used)) static inline int vt8231_read_value(struct vt8231_data *data, u8 reg)
{
 return inb_p(data->addr + reg);
}
