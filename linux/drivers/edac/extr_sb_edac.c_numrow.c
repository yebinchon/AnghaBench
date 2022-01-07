
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int RANK_WIDTH_BITS (int ) ;
 int edac_dbg (int ,char*,int,unsigned int,int ) ;

__attribute__((used)) static inline int numrow(u32 mtr)
{
 int rows = (RANK_WIDTH_BITS(mtr) + 12);

 if (rows < 13 || rows > 18) {
  edac_dbg(0, "Invalid number of rows: %d (should be between 14 and 17) raw value = %x (%04x)\n",
    rows, (unsigned int)RANK_WIDTH_BITS(mtr), mtr);
  return -EINVAL;
 }

 return 1 << rows;
}
