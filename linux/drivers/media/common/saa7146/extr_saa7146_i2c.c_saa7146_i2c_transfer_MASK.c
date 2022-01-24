#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * cpu_addr; } ;
struct saa7146_dev {scalar_t__ revision; int /*<<< orphan*/  i2c_lock; TYPE_2__* ext; TYPE_1__ d_i2c; } ;
struct i2c_msg {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EIO ; 
 int EREMOTEIO ; 
 int ERESTARTSYS ; 
 int SAA7146_I2C_SHORT_DELAY ; 
 int SAA7146_USE_I2C_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (struct i2c_msg const*,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct i2c_msg const*,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct saa7146_dev*) ; 
 scalar_t__ FUNC8 (struct saa7146_dev*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(struct saa7146_dev *dev, const struct i2c_msg *msgs, int num, int retries)
{
	int i = 0, count = 0;
	__le32 *buffer = dev->d_i2c.cpu_addr;
	int err = 0;
	int short_delay = 0;

	if (FUNC2(&dev->i2c_lock))
		return -ERESTARTSYS;

	for(i=0;i<num;i++) {
		FUNC0("msg:%d/%d\n", i+1, num);
	}

	/* prepare the message(s), get number of u32s to transfer */
	count = FUNC6(msgs, num, buffer);
	if ( 0 > count ) {
		err = -EIO;
		goto out;
	}

	if ( count > 3 || 0 != (SAA7146_I2C_SHORT_DELAY & dev->ext->flags) )
		short_delay = 1;

	do {
		/* reset the i2c-device if necessary */
		err = FUNC7(dev);
		if ( 0 > err ) {
			FUNC0("could not reset i2c-device\n");
			goto out;
		}

		/* write out the u32s one after another */
		for(i = 0; i < count; i++) {
			err = FUNC8(dev, &buffer[i], short_delay);
			if ( 0 != err) {
				/* this one is unsatisfying: some i2c slaves on some
				   dvb cards don't acknowledge correctly, so the saa7146
				   thinks that an address error occurred. in that case, the
				   transaction should be retrying, even if an address error
				   occurred. analog saa7146 based cards extensively rely on
				   i2c address probing, however, and address errors indicate that a
				   device is really *not* there. retrying in that case
				   increases the time the device needs to probe greatly, so
				   it should be avoided. So we bail out in irq mode after an
				   address error and trust the saa7146 address error detection. */
				if (-EREMOTEIO == err && 0 != (SAA7146_USE_I2C_IRQ & dev->ext->flags))
					goto out;
				FUNC0("error while sending message(s). starting again\n");
				break;
			}
		}
		if( 0 == err ) {
			err = num;
			break;
		}

		/* delay a bit before retrying */
		FUNC1(10);

	} while (err != num && retries--);

	/* quit if any error occurred */
	if (err != num)
		goto out;

	/* if any things had to be read, get the results */
	if ( 0 != FUNC5(msgs, num, buffer)) {
		FUNC0("could not cleanup i2c-message\n");
		err = -EIO;
		goto out;
	}

	/* return the number of delivered messages */
	FUNC0("transmission successful. (msg:%d)\n", err);
out:
	/* another bug in revision 0: the i2c-registers get uploaded randomly by other
	   uploads, so we better clear them out before continuing */
	if( 0 == dev->revision ) {
		__le32 zero = 0;
		FUNC7(dev);
		if( 0 != FUNC8(dev, &zero, short_delay)) {
			FUNC4("revision 0 error. this should never happen\n");
		}
	}

	FUNC3(&dev->i2c_lock);
	return err;
}