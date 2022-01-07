
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w8001_touch_query {int panel_res; int sensor_id; int capacity_res; int x; int y; } ;


 int W8001_TOUCH_RESOLUTION ;
 int memset (struct w8001_touch_query*,int ,int) ;

__attribute__((used)) static void parse_touchquery(u8 *data, struct w8001_touch_query *query)
{
 memset(query, 0, sizeof(*query));

 query->panel_res = data[1];
 query->sensor_id = data[2] & 0x7;
 query->capacity_res = data[7];

 query->x = data[3] << 9;
 query->x |= data[4] << 2;
 query->x |= (data[2] >> 5) & 0x3;

 query->y = data[5] << 9;
 query->y |= data[6] << 2;
 query->y |= (data[2] >> 3) & 0x3;


 if (!query->x && !query->y) {
  query->x = 1024;
  query->y = 1024;
  if (query->panel_res)
   query->x = query->y = (1 << query->panel_res);
  query->panel_res = W8001_TOUCH_RESOLUTION;
 }
}
