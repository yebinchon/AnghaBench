
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct fsp_data* private; } ;
struct fsp_data {int flags; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int FSPDRV_FLAG_EN_OPC ;

__attribute__((used)) static ssize_t fsp_attr_set_flags(struct psmouse *psmouse, void *data,
     const char *buf, size_t count)
{
 struct fsp_data *pad = psmouse->private;
 size_t i;

 for (i = 0; i < count; i++) {
  switch (buf[i]) {
  case 'C':
   pad->flags |= FSPDRV_FLAG_EN_OPC;
   break;
  case 'c':
   pad->flags &= ~FSPDRV_FLAG_EN_OPC;
   break;
  default:
   return -EINVAL;
  }
 }
 return count;
}
