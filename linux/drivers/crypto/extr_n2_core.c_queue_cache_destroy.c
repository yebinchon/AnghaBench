
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HV_NCS_QTYPE_CWQ ;
 int HV_NCS_QTYPE_MAU ;
 int kmem_cache_destroy (int *) ;
 int ** queue_cache ;

__attribute__((used)) static void queue_cache_destroy(void)
{
 kmem_cache_destroy(queue_cache[HV_NCS_QTYPE_MAU - 1]);
 kmem_cache_destroy(queue_cache[HV_NCS_QTYPE_CWQ - 1]);
 queue_cache[HV_NCS_QTYPE_MAU - 1] = ((void*)0);
 queue_cache[HV_NCS_QTYPE_CWQ - 1] = ((void*)0);
}
