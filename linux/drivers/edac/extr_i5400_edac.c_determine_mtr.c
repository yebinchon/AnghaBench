
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i5400_pvt {int* b0_mtr; int* b1_mtr; } ;


 int CHANNELS_PER_BRANCH ;
 int DIMMS_PER_CHANNEL ;
 int edac_dbg (int ,char*,int) ;

__attribute__((used)) static int determine_mtr(struct i5400_pvt *pvt, int dimm, int channel)
{
 int mtr;
 int n;




 n = dimm;

 if (n >= DIMMS_PER_CHANNEL) {
  edac_dbg(0, "ERROR: trying to access an invalid dimm: %d\n",
    dimm);
  return 0;
 }

 if (channel < CHANNELS_PER_BRANCH)
  mtr = pvt->b0_mtr[n];
 else
  mtr = pvt->b1_mtr[n];

 return mtr;
}
