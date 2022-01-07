
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ioatdma_chan {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int * chanerr_str ;
 int dev_err (int ,char*,int,int ) ;
 int to_dev (struct ioatdma_chan*) ;

__attribute__((used)) static void ioat_print_chanerrs(struct ioatdma_chan *ioat_chan, u32 chanerr)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(chanerr_str); i++) {
  if ((chanerr >> i) & 1) {
   dev_err(to_dev(ioat_chan), "Err(%d): %s\n",
    i, chanerr_str[i]);
  }
 }
}
