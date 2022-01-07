
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa11x0_dma_chan {int name; } ;
struct dma_chan {int dummy; } ;


 int strcmp (int ,char const*) ;
 struct sa11x0_dma_chan* to_sa11x0_dma_chan (struct dma_chan*) ;

__attribute__((used)) static bool sa11x0_dma_filter_fn(struct dma_chan *chan, void *param)
{
 struct sa11x0_dma_chan *c = to_sa11x0_dma_chan(chan);
 const char *p = param;

 return !strcmp(c->name, p);
}
