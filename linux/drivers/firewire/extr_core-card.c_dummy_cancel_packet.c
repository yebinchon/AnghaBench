
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_packet {int dummy; } ;
struct fw_card {int dummy; } ;


 int ENOENT ;

__attribute__((used)) static int dummy_cancel_packet(struct fw_card *card, struct fw_packet *packet)
{
 return -ENOENT;
}
