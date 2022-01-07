
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsxxxaa {size_t count; int * buf; } ;


 scalar_t__ MATCH_PACKET_TYPE (int ,unsigned char) ;

__attribute__((used)) static inline int vsxxxaa_smells_like_packet(struct vsxxxaa *mouse,
          unsigned char type, size_t len)
{
 return mouse->count >= len && MATCH_PACKET_TYPE(mouse->buf[0], type);
}
