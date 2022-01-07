
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct host1x_reloc {int dummy; } ;
struct host1x_job_unpin_data {int dummy; } ;
struct host1x_job_gather {int dummy; } ;
struct host1x_job {int * addr_phys; int * gather_addr_phys; int * reloc_addr_phys; void* gathers; void* unpins; void* relocs; struct host1x_channel* channel; int ref; } ;
struct host1x_channel {int dummy; } ;
typedef int dma_addr_t ;


 int GFP_KERNEL ;
 int ULONG_MAX ;
 int kref_init (int *) ;
 struct host1x_job* kzalloc (int,int ) ;

struct host1x_job *host1x_job_alloc(struct host1x_channel *ch,
        u32 num_cmdbufs, u32 num_relocs)
{
 struct host1x_job *job = ((void*)0);
 unsigned int num_unpins = num_cmdbufs + num_relocs;
 u64 total;
 void *mem;


 total = sizeof(struct host1x_job) +
  (u64)num_relocs * sizeof(struct host1x_reloc) +
  (u64)num_unpins * sizeof(struct host1x_job_unpin_data) +
  (u64)num_cmdbufs * sizeof(struct host1x_job_gather) +
  (u64)num_unpins * sizeof(dma_addr_t) +
  (u64)num_unpins * sizeof(u32 *);
 if (total > ULONG_MAX)
  return ((void*)0);

 mem = job = kzalloc(total, GFP_KERNEL);
 if (!job)
  return ((void*)0);

 kref_init(&job->ref);
 job->channel = ch;


 mem += sizeof(struct host1x_job);
 job->relocs = num_relocs ? mem : ((void*)0);
 mem += num_relocs * sizeof(struct host1x_reloc);
 job->unpins = num_unpins ? mem : ((void*)0);
 mem += num_unpins * sizeof(struct host1x_job_unpin_data);
 job->gathers = num_cmdbufs ? mem : ((void*)0);
 mem += num_cmdbufs * sizeof(struct host1x_job_gather);
 job->addr_phys = num_unpins ? mem : ((void*)0);

 job->reloc_addr_phys = job->addr_phys;
 job->gather_addr_phys = &job->addr_phys[num_relocs];

 return job;
}
