
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct qup_i2c_dev {int dev; } ;


 int EINVAL ;
 int dma_map_sg (int ,struct scatterlist*,int,int) ;
 int sg_set_buf (struct scatterlist*,void*,unsigned int) ;

__attribute__((used)) static int qup_sg_set_buf(struct scatterlist *sg, void *buf,
     unsigned int buflen, struct qup_i2c_dev *qup,
     int dir)
{
 int ret;

 sg_set_buf(sg, buf, buflen);
 ret = dma_map_sg(qup->dev, sg, 1, dir);
 if (!ret)
  return -EINVAL;

 return 0;
}
