
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev {int dummy; } ;


 int ITG3200_DLPF_FS_SEL_2000 ;
 int ITG3200_REG_DLPF ;
 int itg3200_read_reg_8 (struct iio_dev*,int ,int *) ;
 int itg3200_write_reg_8 (struct iio_dev*,int ,int ) ;

__attribute__((used)) static int itg3200_enable_full_scale(struct iio_dev *indio_dev)
{
 u8 val;
 int ret;

 ret = itg3200_read_reg_8(indio_dev, ITG3200_REG_DLPF, &val);
 if (ret)
  goto err_ret;

 val |= ITG3200_DLPF_FS_SEL_2000;
 return itg3200_write_reg_8(indio_dev, ITG3200_REG_DLPF, val);

err_ret:
 return ret;
}
