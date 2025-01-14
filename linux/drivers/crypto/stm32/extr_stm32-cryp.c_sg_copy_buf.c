
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct scatter_walk {int dummy; } ;


 int scatterwalk_advance (struct scatter_walk*,unsigned int) ;
 int scatterwalk_copychunks (void*,struct scatter_walk*,unsigned int,int) ;
 int scatterwalk_done (struct scatter_walk*,int,int ) ;
 int scatterwalk_start (struct scatter_walk*,struct scatterlist*) ;

__attribute__((used)) static void sg_copy_buf(void *buf, struct scatterlist *sg,
   unsigned int start, unsigned int nbytes, int out)
{
 struct scatter_walk walk;

 if (!nbytes)
  return;

 scatterwalk_start(&walk, sg);
 scatterwalk_advance(&walk, start);
 scatterwalk_copychunks(buf, &walk, nbytes, out);
 scatterwalk_done(&walk, out, 0);
}
