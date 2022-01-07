
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mv_xor_v2_device {int dummy; } ;


 int mv_xor_v2_descq_init (struct mv_xor_v2_device*) ;
 int mv_xor_v2_enable_imsg_thrd (struct mv_xor_v2_device*) ;
 int mv_xor_v2_set_desc_size (struct mv_xor_v2_device*) ;
 struct mv_xor_v2_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mv_xor_v2_resume(struct platform_device *dev)
{
 struct mv_xor_v2_device *xor_dev = platform_get_drvdata(dev);

 mv_xor_v2_set_desc_size(xor_dev);
 mv_xor_v2_enable_imsg_thrd(xor_dev);
 mv_xor_v2_descq_init(xor_dev);

 return 0;
}
