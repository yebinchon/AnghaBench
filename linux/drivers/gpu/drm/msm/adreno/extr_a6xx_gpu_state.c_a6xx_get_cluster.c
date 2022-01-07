
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct msm_gpu {int dummy; } ;
struct a6xx_gpu_state_obj {int data; struct a6xx_cluster const* handle; } ;
struct a6xx_gpu_state {int dummy; } ;
struct a6xx_crashdumper {int* ptr; int iova; } ;
struct a6xx_cluster {int sel_val; int id; int count; int * registers; int sel_reg; } ;


 int A6XX_CD_DATA_OFFSET ;
 size_t A6XX_CD_DATA_SIZE ;
 int A6XX_NUM_CONTEXTS ;
 int CRASHDUMP_FINI (int*) ;
 scalar_t__ CRASHDUMP_READ (int*,int ,int,int) ;
 scalar_t__ CRASHDUMP_WRITE (int*,int ,int) ;
 int RANGE (int *,int) ;
 int REG_A6XX_CP_APERTURE_CNTL_CD ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ a6xx_crashdumper_run (struct msm_gpu*,struct a6xx_crashdumper*) ;
 int state_kmemdup (struct a6xx_gpu_state*,int*,size_t) ;

__attribute__((used)) static void a6xx_get_cluster(struct msm_gpu *gpu,
  struct a6xx_gpu_state *a6xx_state,
  const struct a6xx_cluster *cluster,
  struct a6xx_gpu_state_obj *obj,
  struct a6xx_crashdumper *dumper)
{
 u64 *in = dumper->ptr;
 u64 out = dumper->iova + A6XX_CD_DATA_OFFSET;
 size_t datasize;
 int i, regcount = 0;


 if (cluster->sel_reg)
  in += CRASHDUMP_WRITE(in, cluster->sel_reg, cluster->sel_val);

 for (i = 0; i < A6XX_NUM_CONTEXTS; i++) {
  int j;

  in += CRASHDUMP_WRITE(in, REG_A6XX_CP_APERTURE_CNTL_CD,
   (cluster->id << 8) | (i << 4) | i);

  for (j = 0; j < cluster->count; j += 2) {
   int count = RANGE(cluster->registers, j);

   in += CRASHDUMP_READ(in, cluster->registers[j],
    count, out);

   out += count * sizeof(u32);

   if (i == 0)
    regcount += count;
  }
 }

 CRASHDUMP_FINI(in);

 datasize = regcount * A6XX_NUM_CONTEXTS * sizeof(u32);

 if (WARN_ON(datasize > A6XX_CD_DATA_SIZE))
  return;

 if (a6xx_crashdumper_run(gpu, dumper))
  return;

 obj->handle = cluster;
 obj->data = state_kmemdup(a6xx_state, dumper->ptr + A6XX_CD_DATA_OFFSET,
  datasize);
}
