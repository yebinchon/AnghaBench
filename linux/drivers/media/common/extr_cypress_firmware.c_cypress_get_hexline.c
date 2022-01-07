
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hexline {int len; int addr; int type; int chk; int data; } ;
struct firmware {int size; int * data; } ;


 int EINVAL ;
 int memcpy (int ,int*,int) ;
 int memset (struct hexline*,int ,int) ;

__attribute__((used)) static int cypress_get_hexline(const struct firmware *fw,
    struct hexline *hx, int *pos)
{
 u8 *b = (u8 *) &fw->data[*pos];
 int data_offs = 4;

 if (*pos >= fw->size)
  return 0;

 memset(hx, 0, sizeof(struct hexline));
 hx->len = b[0];

 if ((*pos + hx->len + 4) >= fw->size)
  return -EINVAL;

 hx->addr = b[1] | (b[2] << 8);
 hx->type = b[3];

 if (hx->type == 0x04) {


  hx->addr |= (b[4] << 24) | (b[5] << 16);
 }

 memcpy(hx->data, &b[data_offs], hx->len);
 hx->chk = b[hx->len + data_offs];
 *pos += hx->len + 5;

 return *pos;
}
