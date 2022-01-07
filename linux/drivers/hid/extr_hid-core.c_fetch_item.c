
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int* longdata; int u32; int u16; int u8; } ;
struct hid_item {int type; int tag; int size; TYPE_1__ data; int format; } ;
typedef int __u8 ;
typedef int __le32 ;
typedef int __le16 ;


 int HID_ITEM_FORMAT_LONG ;
 int HID_ITEM_FORMAT_SHORT ;
 int HID_ITEM_TAG_LONG ;
 int get_unaligned_le16 (int*) ;
 int get_unaligned_le32 (int*) ;

__attribute__((used)) static u8 *fetch_item(__u8 *start, __u8 *end, struct hid_item *item)
{
 u8 b;

 if ((end - start) <= 0)
  return ((void*)0);

 b = *start++;

 item->type = (b >> 2) & 3;
 item->tag = (b >> 4) & 15;

 if (item->tag == HID_ITEM_TAG_LONG) {

  item->format = HID_ITEM_FORMAT_LONG;

  if ((end - start) < 2)
   return ((void*)0);

  item->size = *start++;
  item->tag = *start++;

  if ((end - start) < item->size)
   return ((void*)0);

  item->data.longdata = start;
  start += item->size;
  return start;
 }

 item->format = HID_ITEM_FORMAT_SHORT;
 item->size = b & 3;

 switch (item->size) {
 case 0:
  return start;

 case 1:
  if ((end - start) < 1)
   return ((void*)0);
  item->data.u8 = *start++;
  return start;

 case 2:
  if ((end - start) < 2)
   return ((void*)0);
  item->data.u16 = get_unaligned_le16(start);
  start = (__u8 *)((__le16 *)start + 1);
  return start;

 case 3:
  item->size++;
  if ((end - start) < 4)
   return ((void*)0);
  item->data.u32 = get_unaligned_le32(start);
  start = (__u8 *)((__le32 *)start + 1);
  return start;
 }

 return ((void*)0);
}
