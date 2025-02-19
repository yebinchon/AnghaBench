
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct psmouse {struct alps_data* private; } ;
struct TYPE_2__ {unsigned char x; unsigned char y; } ;
struct alps_fields {int first_mp; int is_mp; unsigned char pressure; unsigned char fingers; int y_map; int x_map; TYPE_1__ st; } ;
struct alps_data {int y_bits; int x_bits; } ;


 int BIT (int) ;
 int alps_decode_buttons_v3 (struct alps_fields*,unsigned char*) ;

__attribute__((used)) static int alps_decode_dolphin(struct alps_fields *f, unsigned char *p,
    struct psmouse *psmouse)
{
 u64 palm_data = 0;
 struct alps_data *priv = psmouse->private;

 f->first_mp = !!(p[0] & 0x02);
 f->is_mp = !!(p[0] & 0x20);

 if (!f->is_mp) {
  f->st.x = ((p[1] & 0x7f) | ((p[4] & 0x0f) << 7));
  f->st.y = ((p[2] & 0x7f) | ((p[4] & 0xf0) << 3));
  f->pressure = (p[0] & 4) ? 0 : p[5] & 0x7f;
  alps_decode_buttons_v3(f, p);
 } else {
  f->fingers = ((p[0] & 0x6) >> 1 |
       (p[0] & 0x10) >> 2);

  palm_data = (p[1] & 0x7f) |
       ((p[2] & 0x7f) << 7) |
       ((p[4] & 0x7f) << 14) |
       ((p[5] & 0x7f) << 21) |
       ((p[3] & 0x07) << 28) |
       (((u64)p[3] & 0x70) << 27) |
       (((u64)p[0] & 0x01) << 34);


  f->y_map = palm_data & (BIT(priv->y_bits) - 1);


  f->x_map = (palm_data >> priv->y_bits) &
      (BIT(priv->x_bits) - 1);
 }

 return 0;
}
