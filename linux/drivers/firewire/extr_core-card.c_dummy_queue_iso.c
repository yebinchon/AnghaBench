
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_iso_packet {int dummy; } ;
struct fw_iso_context {int dummy; } ;
struct fw_iso_buffer {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static int dummy_queue_iso(struct fw_iso_context *ctx, struct fw_iso_packet *p,
      struct fw_iso_buffer *buffer, unsigned long payload)
{
 return -ENODEV;
}
