
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct host1x_job_gather {int words; size_t offset; int base; int bo; } ;
struct host1x_job {unsigned int num_gathers; size_t gather_copy_size; int gather_copy; void* gather_copy_mapped; struct host1x_job_gather* gathers; int class; scalar_t__ num_relocs; int relocs; } ;
struct host1x_firewall {scalar_t__ num_relocs; int class; int reloc; struct device* dev; struct host1x_job* job; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 void* dma_alloc_wc (struct device*,size_t,int *,int ) ;
 void* host1x_bo_mmap (int ) ;
 int host1x_bo_munmap (int ,void*) ;
 int memcpy (void*,void*,int) ;
 scalar_t__ validate (struct host1x_firewall*,struct host1x_job_gather*) ;

__attribute__((used)) static inline int copy_gathers(struct host1x_job *job, struct device *dev)
{
 struct host1x_firewall fw;
 size_t size = 0;
 size_t offset = 0;
 unsigned int i;

 fw.job = job;
 fw.dev = dev;
 fw.reloc = job->relocs;
 fw.num_relocs = job->num_relocs;
 fw.class = job->class;

 for (i = 0; i < job->num_gathers; i++) {
  struct host1x_job_gather *g = &job->gathers[i];

  size += g->words * sizeof(u32);
 }





 job->gather_copy_mapped = dma_alloc_wc(dev, size, &job->gather_copy,
            GFP_NOWAIT);


 if (!job->gather_copy_mapped)
  job->gather_copy_mapped = dma_alloc_wc(dev, size,
             &job->gather_copy,
             GFP_KERNEL);
 if (!job->gather_copy_mapped)
  return -ENOMEM;

 job->gather_copy_size = size;

 for (i = 0; i < job->num_gathers; i++) {
  struct host1x_job_gather *g = &job->gathers[i];
  void *gather;


  gather = host1x_bo_mmap(g->bo);
  memcpy(job->gather_copy_mapped + offset, gather + g->offset,
         g->words * sizeof(u32));
  host1x_bo_munmap(g->bo, gather);


  g->base = job->gather_copy;
  g->offset = offset;


  if (validate(&fw, g))
   return -EINVAL;

  offset += g->words * sizeof(u32);
 }


 if (fw.num_relocs)
  return -EINVAL;

 return 0;
}
