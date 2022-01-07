
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hideep_ts {TYPE_1__* client; } ;
typedef int __be32 ;
struct TYPE_2__ {int dev; } ;


 int cpu_to_be32 (int ) ;
 int dev_err (int *,char*,int ,int ,int) ;
 int hideep_pgm_w_mem (struct hideep_ts*,int ,int *,int) ;

__attribute__((used)) static int hideep_pgm_w_reg(struct hideep_ts *ts, u32 addr, u32 val)
{
 __be32 data = cpu_to_be32(val);
 int error;

 error = hideep_pgm_w_mem(ts, addr, &data, 1);
 if (error) {
  dev_err(&ts->client->dev,
   "write to register %#08x (%#08x) failed: %d\n",
   addr, val, error);
  return error;
 }

 return 0;
}
