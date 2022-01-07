
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mma8452_data {unsigned int ctrl_reg1; } ;


 unsigned int MMA8452_CTRL_DR_MASK ;
 unsigned int MMA8452_CTRL_DR_SHIFT ;

__attribute__((used)) static unsigned int mma8452_get_odr_index(struct mma8452_data *data)
{
 return (data->ctrl_reg1 & MMA8452_CTRL_DR_MASK) >>
   MMA8452_CTRL_DR_SHIFT;
}
