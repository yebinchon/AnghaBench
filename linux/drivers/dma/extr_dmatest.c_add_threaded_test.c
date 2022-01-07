
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmatest_params {int polled; int transfer_size; int alignment; int norandom; int noverify; int timeout; int pq_sources; int xor_sources; int iterations; int max_channels; int threads_per_chan; int device; int channel; int buf_size; } ;
struct dmatest_info {struct dmatest_params params; } ;


 int DMA_MEMCPY ;
 int DMA_MEMSET ;
 int DMA_PQ ;
 int DMA_XOR ;
 int alignment ;
 int iterations ;
 int max_channels ;
 int norandom ;
 int noverify ;
 int polled ;
 int pq_sources ;
 int request_channels (struct dmatest_info*,int ) ;
 int strim (int ) ;
 int strlcpy (int ,int ,int) ;
 int test_buf_size ;
 int test_channel ;
 int test_device ;
 int threads_per_chan ;
 int timeout ;
 int transfer_size ;
 int xor_sources ;

__attribute__((used)) static void add_threaded_test(struct dmatest_info *info)
{
 struct dmatest_params *params = &info->params;


 params->buf_size = test_buf_size;
 strlcpy(params->channel, strim(test_channel), sizeof(params->channel));
 strlcpy(params->device, strim(test_device), sizeof(params->device));
 params->threads_per_chan = threads_per_chan;
 params->max_channels = max_channels;
 params->iterations = iterations;
 params->xor_sources = xor_sources;
 params->pq_sources = pq_sources;
 params->timeout = timeout;
 params->noverify = noverify;
 params->norandom = norandom;
 params->alignment = alignment;
 params->transfer_size = transfer_size;
 params->polled = polled;

 request_channels(info, DMA_MEMCPY);
 request_channels(info, DMA_MEMSET);
 request_channels(info, DMA_XOR);
 request_channels(info, DMA_PQ);
}
