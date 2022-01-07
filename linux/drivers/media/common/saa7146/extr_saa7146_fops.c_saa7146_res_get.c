
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_vv {unsigned int resources; } ;
struct saa7146_fh {unsigned int resources; struct saa7146_dev* dev; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;


 int DEB_D (char*,unsigned int,unsigned int) ;

int saa7146_res_get(struct saa7146_fh *fh, unsigned int bit)
{
 struct saa7146_dev *dev = fh->dev;
 struct saa7146_vv *vv = dev->vv_data;

 if (fh->resources & bit) {
  DEB_D("already allocated! want: 0x%02x, cur:0x%02x\n",
        bit, vv->resources);

  return 1;
 }


 if (vv->resources & bit) {
  DEB_D("locked! vv->resources:0x%02x, we want:0x%02x\n",
        vv->resources, bit);

  return 0;
 }

 fh->resources |= bit;
 vv->resources |= bit;
 DEB_D("res: get 0x%02x, cur:0x%02x\n", bit, vv->resources);
 return 1;
}
