
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smscore_buffer_t {int offset_in_common; scalar_t__ phys; int * p; } ;
typedef scalar_t__ dma_addr_t ;


 int GFP_KERNEL ;
 struct smscore_buffer_t* kzalloc (int,int ) ;

__attribute__((used)) static struct
smscore_buffer_t *smscore_createbuffer(u8 *buffer, void *common_buffer,
           dma_addr_t common_buffer_phys)
{
 struct smscore_buffer_t *cb;

 cb = kzalloc(sizeof(*cb), GFP_KERNEL);
 if (!cb)
  return ((void*)0);

 cb->p = buffer;
 cb->offset_in_common = buffer - (u8 *) common_buffer;
 if (common_buffer_phys)
  cb->phys = common_buffer_phys + cb->offset_in_common;

 return cb;
}
