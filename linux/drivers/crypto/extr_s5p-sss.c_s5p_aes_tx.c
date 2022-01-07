
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_aes_dev {int sg_dst; } ;


 int s5p_set_outdata (struct s5p_aes_dev*,int ) ;
 int s5p_unset_outdata (struct s5p_aes_dev*) ;
 int sg_is_last (int ) ;
 int sg_next (int ) ;

__attribute__((used)) static int s5p_aes_tx(struct s5p_aes_dev *dev)
{
 int ret = 0;

 s5p_unset_outdata(dev);

 if (!sg_is_last(dev->sg_dst)) {
  ret = s5p_set_outdata(dev, sg_next(dev->sg_dst));
  if (!ret)
   ret = 1;
 }

 return ret;
}
