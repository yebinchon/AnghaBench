
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sony_sc {int quirks; } ;
struct hid_device {int dummy; } ;


 int FUTUREMAX_DANCE_MAT ;
 int MOTION_CONTROLLER ;
 int PS3REMOTE ;
 int SINO_LITE_CONTROLLER ;
 int VAIO_RDESC_CONSTANT ;
 struct sony_sc* hid_get_drvdata (struct hid_device*) ;
 int hid_info (struct hid_device*,char*) ;
 int* motion_fixup (struct hid_device*,int*,unsigned int*) ;
 int* ps3remote_fixup (struct hid_device*,int*,unsigned int*) ;

__attribute__((used)) static u8 *sony_report_fixup(struct hid_device *hdev, u8 *rdesc,
  unsigned int *rsize)
{
 struct sony_sc *sc = hid_get_drvdata(hdev);

 if (sc->quirks & (SINO_LITE_CONTROLLER | FUTUREMAX_DANCE_MAT))
  return rdesc;





 if ((sc->quirks & VAIO_RDESC_CONSTANT) && *rsize >= 56 &&



     rdesc[2] == 0x09 && rdesc[3] == 0x02 &&

     rdesc[54] == 0x81 && rdesc[55] == 0x07) {
  hid_info(hdev, "Fixing up Sony RF Receiver report descriptor\n");

  rdesc[55] = 0x06;
 }

 if (sc->quirks & MOTION_CONTROLLER)
  return motion_fixup(hdev, rdesc, rsize);

 if (sc->quirks & PS3REMOTE)
  return ps3remote_fixup(hdev, rdesc, rsize);

 return rdesc;
}
