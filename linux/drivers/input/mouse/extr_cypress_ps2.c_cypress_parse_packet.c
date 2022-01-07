
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psmouse {unsigned char* packet; } ;
struct cytp_report_data {int contact_cnt; int tap; int left; int right; int middle; TYPE_1__* contacts; } ;
struct cytp_data {int mode; } ;
struct TYPE_2__ {unsigned char x; unsigned char y; unsigned char z; } ;


 unsigned char ABS_MULTIFINGER_TAP ;
 unsigned char BTN_LEFT_BIT ;
 unsigned char BTN_RIGHT_BIT ;
 int CYTP_BIT_ABS_PRESSURE ;
 int CYTP_MAX_MT_SLOTS ;
 int cypress_get_finger_count (unsigned char) ;
 int memset (struct cytp_report_data*,int ,int) ;
 int psmouse_dbg (struct psmouse*,char*,...) ;

__attribute__((used)) static int cypress_parse_packet(struct psmouse *psmouse,
    struct cytp_data *cytp, struct cytp_report_data *report_data)
{
 unsigned char *packet = psmouse->packet;
 unsigned char header_byte = packet[0];

 memset(report_data, 0, sizeof(struct cytp_report_data));

 report_data->contact_cnt = cypress_get_finger_count(header_byte);
 report_data->tap = (header_byte & ABS_MULTIFINGER_TAP) ? 1 : 0;

 if (report_data->contact_cnt == 1) {
  report_data->contacts[0].x =
   ((packet[1] & 0x70) << 4) | packet[2];
  report_data->contacts[0].y =
   ((packet[1] & 0x07) << 8) | packet[3];
  if (cytp->mode & CYTP_BIT_ABS_PRESSURE)
   report_data->contacts[0].z = packet[4];

 } else if (report_data->contact_cnt >= 2) {
  report_data->contacts[0].x =
   ((packet[1] & 0x70) << 4) | packet[2];
  report_data->contacts[0].y =
   ((packet[1] & 0x07) << 8) | packet[3];
  if (cytp->mode & CYTP_BIT_ABS_PRESSURE)
   report_data->contacts[0].z = packet[4];

  report_data->contacts[1].x =
   ((packet[5] & 0xf0) << 4) | packet[6];
  report_data->contacts[1].y =
   ((packet[5] & 0x0f) << 8) | packet[7];
  if (cytp->mode & CYTP_BIT_ABS_PRESSURE)
   report_data->contacts[1].z = report_data->contacts[0].z;
 }

 report_data->left = (header_byte & BTN_LEFT_BIT) ? 1 : 0;
 report_data->right = (header_byte & BTN_RIGHT_BIT) ? 1 : 0;







 if (report_data->tap)
  report_data->left = 0;
 return 0;
}
