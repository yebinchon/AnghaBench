
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hideep_ts {TYPE_1__* client; } ;
typedef int __be32 ;
struct TYPE_2__ {int dev; } ;


 int be32_to_cpu (int ) ;
 int dev_err (int *,char*,int ,int) ;
 int hideep_pgm_r_mem (struct hideep_ts*,int ,int *,int) ;

__attribute__((used)) static int hideep_pgm_r_reg(struct hideep_ts *ts, u32 addr, u32 *val)
{
 __be32 data;
 int error;

 error = hideep_pgm_r_mem(ts, addr, &data, 1);
 if (error) {
  dev_err(&ts->client->dev,
   "read of register %#08x failed: %d\n",
   addr, error);
  return error;
 }

 *val = be32_to_cpu(data);
 return 0;
}
