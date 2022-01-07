
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct device {int dummy; } ;
struct buffer_array {unsigned int num_of_buffers; int* nents; unsigned int* total_data_len; int* is_last; scalar_t__** mlli_nents; int * type; scalar_t__* offset; TYPE_1__* entry; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int buffer_dma; } ;


 int DMA_BUFF_TYPE ;
 int dev_dbg (struct device*,char*,unsigned int,int *,unsigned int,int) ;

__attribute__((used)) static void cc_add_buffer_entry(struct device *dev,
    struct buffer_array *sgl_data,
    dma_addr_t buffer_dma, unsigned int buffer_len,
    bool is_last_entry, u32 *mlli_nents)
{
 unsigned int index = sgl_data->num_of_buffers;

 dev_dbg(dev, "index=%u single_buff=%pad buffer_len=0x%08X is_last=%d\n",
  index, &buffer_dma, buffer_len, is_last_entry);
 sgl_data->nents[index] = 1;
 sgl_data->entry[index].buffer_dma = buffer_dma;
 sgl_data->offset[index] = 0;
 sgl_data->total_data_len[index] = buffer_len;
 sgl_data->type[index] = DMA_BUFF_TYPE;
 sgl_data->is_last[index] = is_last_entry;
 sgl_data->mlli_nents[index] = mlli_nents;
 if (sgl_data->mlli_nents[index])
  *sgl_data->mlli_nents[index] = 0;
 sgl_data->num_of_buffers++;
}
