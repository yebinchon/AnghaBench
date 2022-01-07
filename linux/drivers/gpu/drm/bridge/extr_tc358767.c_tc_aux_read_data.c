
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tc_data {int regmap; } ;


 int ALIGN (size_t,int) ;
 int DP0_AUXRDATA (int ) ;
 int DP_AUX_MAX_PAYLOAD_BYTES ;
 int memcpy (void*,int *,size_t) ;
 int regmap_raw_read (int ,int ,int *,int) ;

__attribute__((used)) static int tc_aux_read_data(struct tc_data *tc, void *data, size_t size)
{
 u32 auxrdata[DP_AUX_MAX_PAYLOAD_BYTES / sizeof(u32)];
 int ret, count = ALIGN(size, sizeof(u32));

 ret = regmap_raw_read(tc->regmap, DP0_AUXRDATA(0), auxrdata, count);
 if (ret)
  return ret;

 memcpy(data, auxrdata, size);

 return size;
}
