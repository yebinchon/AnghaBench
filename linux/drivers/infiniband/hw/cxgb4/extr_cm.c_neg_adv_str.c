
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *neg_adv_str(unsigned int status)
{
 switch (status) {
 case 128:
  return "Retransmit timeout";
 case 129:
  return "Persist timeout";
 case 130:
  return "Keepalive timeout";
 default:
  return "Unknown";
 }
}
