#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dht11 {unsigned char temperature; unsigned char humidity; int /*<<< orphan*/  dev; int /*<<< orphan*/  timestamp; TYPE_1__* edges; } ;
struct TYPE_2__ {int ts; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int DHT11_BITS_PER_READ ; 
 int DHT11_THRESHOLD ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned char,unsigned char,unsigned char,unsigned char) ; 
 unsigned char FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct dht11 *dht11, int offset)
{
	int i, t;
	char bits[DHT11_BITS_PER_READ];
	unsigned char temp_int, temp_dec, hum_int, hum_dec, checksum;

	for (i = 0; i < DHT11_BITS_PER_READ; ++i) {
		t = dht11->edges[offset + 2 * i + 2].ts -
			dht11->edges[offset + 2 * i + 1].ts;
		if (!dht11->edges[offset + 2 * i + 1].value) {
			FUNC0(dht11->dev,
				"lost synchronisation at edge %d\n",
				offset + 2 * i + 1);
			return -EIO;
		}
		bits[i] = t > DHT11_THRESHOLD;
	}

	hum_int = FUNC2(bits);
	hum_dec = FUNC2(&bits[8]);
	temp_int = FUNC2(&bits[16]);
	temp_dec = FUNC2(&bits[24]);
	checksum = FUNC2(&bits[32]);

	if (((hum_int + hum_dec + temp_int + temp_dec) & 0xff) != checksum) {
		FUNC0(dht11->dev, "invalid checksum\n");
		return -EIO;
	}

	dht11->timestamp = FUNC3();
	if (hum_int < 4) {  /* DHT22: 100000 = (3*256+232)*100 */
		dht11->temperature = (((temp_int & 0x7f) << 8) + temp_dec) *
					((temp_int & 0x80) ? -100 : 100);
		dht11->humidity = ((hum_int << 8) + hum_dec) * 100;
	} else if (temp_dec == 0 && hum_dec == 0) {  /* DHT11 */
		dht11->temperature = temp_int * 1000;
		dht11->humidity = hum_int * 1000;
	} else {
		FUNC1(dht11->dev,
			"Don't know how to decode data: %d %d %d %d\n",
			hum_int, hum_dec, temp_int, temp_dec);
		return -EIO;
	}

	return 0;
}