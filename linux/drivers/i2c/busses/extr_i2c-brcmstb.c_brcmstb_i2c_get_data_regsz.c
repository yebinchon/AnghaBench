
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmstb_i2c_dev {int data_regsz; } ;



__attribute__((used)) static inline int brcmstb_i2c_get_data_regsz(struct brcmstb_i2c_dev *dev)
{
 return dev->data_regsz;
}
