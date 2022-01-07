
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dbi_dev {int dummy; } ;


 int mipi_dbi_poweron_reset_conditional (struct mipi_dbi_dev*,int) ;

int mipi_dbi_poweron_reset(struct mipi_dbi_dev *dbidev)
{
 return mipi_dbi_poweron_reset_conditional(dbidev, 0);
}
