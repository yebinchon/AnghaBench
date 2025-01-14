
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dht11 {unsigned char temperature; unsigned char humidity; int dev; int timestamp; TYPE_1__* edges; } ;
struct TYPE_2__ {int ts; int value; } ;


 int DHT11_BITS_PER_READ ;
 int DHT11_THRESHOLD ;
 int EIO ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,unsigned char,unsigned char,unsigned char,unsigned char) ;
 unsigned char dht11_decode_byte (char*) ;
 int ktime_get_boottime_ns () ;

__attribute__((used)) static int dht11_decode(struct dht11 *dht11, int offset)
{
 int i, t;
 char bits[DHT11_BITS_PER_READ];
 unsigned char temp_int, temp_dec, hum_int, hum_dec, checksum;

 for (i = 0; i < DHT11_BITS_PER_READ; ++i) {
  t = dht11->edges[offset + 2 * i + 2].ts -
   dht11->edges[offset + 2 * i + 1].ts;
  if (!dht11->edges[offset + 2 * i + 1].value) {
   dev_dbg(dht11->dev,
    "lost synchronisation at edge %d\n",
    offset + 2 * i + 1);
   return -EIO;
  }
  bits[i] = t > DHT11_THRESHOLD;
 }

 hum_int = dht11_decode_byte(bits);
 hum_dec = dht11_decode_byte(&bits[8]);
 temp_int = dht11_decode_byte(&bits[16]);
 temp_dec = dht11_decode_byte(&bits[24]);
 checksum = dht11_decode_byte(&bits[32]);

 if (((hum_int + hum_dec + temp_int + temp_dec) & 0xff) != checksum) {
  dev_dbg(dht11->dev, "invalid checksum\n");
  return -EIO;
 }

 dht11->timestamp = ktime_get_boottime_ns();
 if (hum_int < 4) {
  dht11->temperature = (((temp_int & 0x7f) << 8) + temp_dec) *
     ((temp_int & 0x80) ? -100 : 100);
  dht11->humidity = ((hum_int << 8) + hum_dec) * 100;
 } else if (temp_dec == 0 && hum_dec == 0) {
  dht11->temperature = temp_int * 1000;
  dht11->humidity = hum_int * 1000;
 } else {
  dev_err(dht11->dev,
   "Don't know how to decode data: %d %d %d %d\n",
   hum_int, hum_dec, temp_int, temp_dec);
  return -EIO;
 }

 return 0;
}
