
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scpi_xfer {int node; int done; } ;
struct scpi_chan {int xfers_list; struct scpi_xfer* xfers; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_SCPI_XFERS ;
 struct scpi_xfer* devm_kcalloc (struct device*,int,int,int ) ;
 int init_completion (int *) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int scpi_alloc_xfer_list(struct device *dev, struct scpi_chan *ch)
{
 int i;
 struct scpi_xfer *xfers;

 xfers = devm_kcalloc(dev, MAX_SCPI_XFERS, sizeof(*xfers), GFP_KERNEL);
 if (!xfers)
  return -ENOMEM;

 ch->xfers = xfers;
 for (i = 0; i < MAX_SCPI_XFERS; i++, xfers++) {
  init_completion(&xfers->done);
  list_add_tail(&xfers->node, &ch->xfers_list);
 }

 return 0;
}
