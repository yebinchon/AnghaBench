
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drv2667_data {int frequency; unsigned int page; TYPE_1__* client; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int DRV2667_PAGE ;
 unsigned int DRV2667_PAGE_0 ;
 int DRV2667_RAM_FREQ ;
 int EINVAL ;
 int EIO ;
 int dev_err (int *,char*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int drv2667_set_waveform_freq(struct drv2667_data *haptics)
{
 unsigned int read_buf;
 int freq;
 int error;




 freq = (haptics->frequency * 1000) / 78125;
 if (freq <= 0) {
  dev_err(&haptics->client->dev,
   "ERROR: Frequency calculated to %i\n", freq);
  return -EINVAL;
 }

 error = regmap_read(haptics->regmap, DRV2667_PAGE, &read_buf);
 if (error) {
  dev_err(&haptics->client->dev,
   "Failed to read the page number: %d\n", error);
  return -EIO;
 }

 if (read_buf == DRV2667_PAGE_0 ||
  haptics->page != read_buf) {
  error = regmap_write(haptics->regmap,
    DRV2667_PAGE, haptics->page);
  if (error) {
   dev_err(&haptics->client->dev,
    "Failed to set the page: %d\n", error);
   return -EIO;
  }
 }

 error = regmap_write(haptics->regmap, DRV2667_RAM_FREQ, freq);
 if (error)
  dev_err(&haptics->client->dev,
    "Failed to set the frequency: %d\n", error);


 if (read_buf == DRV2667_PAGE_0 ||
  haptics->page != read_buf) {
  error = regmap_write(haptics->regmap, DRV2667_PAGE, read_buf);
  if (error) {
   dev_err(&haptics->client->dev,
    "Failed to set the page: %d\n", error);
   return -EIO;
  }
 }

 return error;
}
