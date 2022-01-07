
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_fdma_chan {TYPE_1__* fdev; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int ,char*) ;
 int is_slave_direction (int) ;
 struct st_fdma_chan* to_st_fdma_chan (struct dma_chan*) ;

__attribute__((used)) static inline struct st_fdma_chan *st_fdma_prep_common(struct dma_chan *chan,
  size_t len, enum dma_transfer_direction direction)
{
 struct st_fdma_chan *fchan;

 if (!chan || !len)
  return ((void*)0);

 fchan = to_st_fdma_chan(chan);

 if (!is_slave_direction(direction)) {
  dev_err(fchan->fdev->dev, "bad direction?\n");
  return ((void*)0);
 }

 return fchan;
}
