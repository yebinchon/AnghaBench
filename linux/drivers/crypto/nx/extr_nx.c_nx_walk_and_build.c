
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {unsigned int length; } ;
struct scatter_walk {struct scatterlist* sg; } ;
struct nx_sg {int dummy; } ;


 int SCATTERWALK_FROM_SG ;
 struct nx_sg* nx_build_sg_list (struct nx_sg*,char*,unsigned int*,unsigned int) ;
 int scatterwalk_advance (struct scatter_walk*,unsigned int) ;
 unsigned int scatterwalk_clamp (struct scatter_walk*,unsigned int) ;
 int scatterwalk_done (struct scatter_walk*,int ,unsigned int) ;
 char* scatterwalk_map (struct scatter_walk*) ;
 int scatterwalk_start (struct scatter_walk*,struct scatterlist*) ;
 int scatterwalk_unmap (char*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;

struct nx_sg *nx_walk_and_build(struct nx_sg *nx_dst,
    unsigned int sglen,
    struct scatterlist *sg_src,
    unsigned int start,
    unsigned int *src_len)
{
 struct scatter_walk walk;
 struct nx_sg *nx_sg = nx_dst;
 unsigned int n, offset = 0, len = *src_len;
 char *dst;


 for (;;) {
  scatterwalk_start(&walk, sg_src);

  if (start < offset + sg_src->length)
   break;

  offset += sg_src->length;
  sg_src = sg_next(sg_src);
 }



 scatterwalk_advance(&walk, start - offset);

 while (len && (nx_sg - nx_dst) < sglen) {
  n = scatterwalk_clamp(&walk, len);
  if (!n) {


   scatterwalk_start(&walk, sg_next(walk.sg));
   n = scatterwalk_clamp(&walk, len);
  }
  dst = scatterwalk_map(&walk);

  nx_sg = nx_build_sg_list(nx_sg, dst, &n, sglen - (nx_sg - nx_dst));
  len -= n;

  scatterwalk_unmap(dst);
  scatterwalk_advance(&walk, n);
  scatterwalk_done(&walk, SCATTERWALK_FROM_SG, len);
 }

 *src_len -= len;


 return nx_sg;
}
