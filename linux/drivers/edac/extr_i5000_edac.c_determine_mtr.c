
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i5000_pvt {int* b0_mtr; int* b1_mtr; } ;


 int CHANNELS_PER_BRANCH ;

__attribute__((used)) static int determine_mtr(struct i5000_pvt *pvt, int slot, int channel)
{
 int mtr;

 if (channel < CHANNELS_PER_BRANCH)
  mtr = pvt->b0_mtr[slot];
 else
  mtr = pvt->b1_mtr[slot];

 return mtr;
}
