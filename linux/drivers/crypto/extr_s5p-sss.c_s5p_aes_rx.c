
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_aes_dev {int sg_src; } ;


 int s5p_set_indata (struct s5p_aes_dev*,int ) ;
 int s5p_unset_indata (struct s5p_aes_dev*) ;
 int sg_is_last (int ) ;
 int sg_next (int ) ;

__attribute__((used)) static int s5p_aes_rx(struct s5p_aes_dev *dev )
{
 int ret = 0;

 s5p_unset_indata(dev);

 if (!sg_is_last(dev->sg_src)) {
  ret = s5p_set_indata(dev, sg_next(dev->sg_src));
  if (!ret)
   ret = 1;
 }

 return ret;
}
