
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mxl {TYPE_1__* base; } ;
struct TYPE_2__ {int adr; int i2c; } ;


 int i2c_read (int ,int ,int *,int) ;

__attribute__((used)) static int i2cread(struct mxl *state, u8 *data, int len)
{
 return i2c_read(state->base->i2c, state->base->adr, data, len);
}
