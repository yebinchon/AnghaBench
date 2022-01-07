
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_sham_dev {int dummy; } ;


 int SHA_REG_LENGTH (struct omap_sham_dev*) ;
 int omap_sham_write (struct omap_sham_dev*,int ,size_t) ;

__attribute__((used)) static void omap_sham_trigger_omap4(struct omap_sham_dev *dd, size_t length)
{
 omap_sham_write(dd, SHA_REG_LENGTH(dd), length);
}
