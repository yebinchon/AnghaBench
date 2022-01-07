
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CWQ_ENTRY_SIZE ;
 int CWQ_NUM_ENTRIES ;
 int ENOMEM ;
 int HV_NCS_QTYPE_CWQ ;
 int HV_NCS_QTYPE_MAU ;
 int MAU_ENTRY_SIZE ;
 int MAU_NUM_ENTRIES ;
 int * kmem_cache_create (char*,int,int,int ,int *) ;
 int kmem_cache_destroy (int *) ;
 int ** queue_cache ;

__attribute__((used)) static int queue_cache_init(void)
{
 if (!queue_cache[HV_NCS_QTYPE_MAU - 1])
  queue_cache[HV_NCS_QTYPE_MAU - 1] =
   kmem_cache_create("mau_queue",
       (MAU_NUM_ENTRIES *
        MAU_ENTRY_SIZE),
       MAU_ENTRY_SIZE, 0, ((void*)0));
 if (!queue_cache[HV_NCS_QTYPE_MAU - 1])
  return -ENOMEM;

 if (!queue_cache[HV_NCS_QTYPE_CWQ - 1])
  queue_cache[HV_NCS_QTYPE_CWQ - 1] =
   kmem_cache_create("cwq_queue",
       (CWQ_NUM_ENTRIES *
        CWQ_ENTRY_SIZE),
       CWQ_ENTRY_SIZE, 0, ((void*)0));
 if (!queue_cache[HV_NCS_QTYPE_CWQ - 1]) {
  kmem_cache_destroy(queue_cache[HV_NCS_QTYPE_MAU - 1]);
  queue_cache[HV_NCS_QTYPE_MAU - 1] = ((void*)0);
  return -ENOMEM;
 }
 return 0;
}
