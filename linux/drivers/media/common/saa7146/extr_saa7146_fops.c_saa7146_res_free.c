
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_vv {unsigned int resources; } ;
struct saa7146_fh {unsigned int resources; struct saa7146_dev* dev; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;


 int BUG_ON (int) ;
 int DEB_D (char*,unsigned int,unsigned int) ;

void saa7146_res_free(struct saa7146_fh *fh, unsigned int bits)
{
 struct saa7146_dev *dev = fh->dev;
 struct saa7146_vv *vv = dev->vv_data;

 BUG_ON((fh->resources & bits) != bits);

 fh->resources &= ~bits;
 vv->resources &= ~bits;
 DEB_D("res: put 0x%02x, cur:0x%02x\n", bits, vv->resources);
}
