
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s6sy761_data {int* data; } ;




 int S6SY761_EVENT_SIZE ;
 int S6SY761_MASK_EID ;
 int s6sy761_handle_coordinates (struct s6sy761_data*,int*) ;

__attribute__((used)) static void s6sy761_handle_events(struct s6sy761_data *sdata, u8 n_events)
{
 int i;

 for (i = 0; i < n_events; i++) {
  u8 *event = &sdata->data[i * S6SY761_EVENT_SIZE];
  u8 event_id = event[0] & S6SY761_MASK_EID;

  if (!event[0])
   return;

  switch (event_id) {

  case 129:
   s6sy761_handle_coordinates(sdata, event);
   break;

  case 128:
   break;

  default:
   break;
  }
 }
}
