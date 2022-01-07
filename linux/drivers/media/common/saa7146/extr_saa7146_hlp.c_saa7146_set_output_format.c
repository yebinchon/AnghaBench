
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct saa7146_dev {int dummy; } ;


 int CLIP_FORMAT_CTRL ;
 int MASK_05 ;
 int MASK_21 ;
 int MC2 ;
 int calculate_output_format_register (struct saa7146_dev*,unsigned long,int*) ;
 int saa7146_read (struct saa7146_dev*,int ) ;
 int saa7146_write (struct saa7146_dev*,int ,int) ;

__attribute__((used)) static void saa7146_set_output_format(struct saa7146_dev *dev, unsigned long palette)
{
 u32 clip_format = saa7146_read(dev, CLIP_FORMAT_CTRL);


 calculate_output_format_register(dev,palette,&clip_format);


 saa7146_write(dev, CLIP_FORMAT_CTRL, clip_format);
 saa7146_write(dev, MC2, (MASK_05 | MASK_21));
}
