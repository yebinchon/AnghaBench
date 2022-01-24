#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct atom_context {int io_attr; TYPE_1__* card; } ;
struct TYPE_3__ {int (* ioreg_read ) (TYPE_1__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* ioreg_write ) (TYPE_1__*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
#define  ATOM_IIO_CLEAR 136 
#define  ATOM_IIO_END 135 
#define  ATOM_IIO_MOVE_ATTR 134 
#define  ATOM_IIO_MOVE_DATA 133 
#define  ATOM_IIO_MOVE_INDEX 132 
#define  ATOM_IIO_NOP 131 
#define  ATOM_IIO_READ 130 
#define  ATOM_IIO_SET 129 
#define  ATOM_IIO_WRITE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint32_t FUNC5(struct atom_context *ctx, int base,
				 uint32_t index, uint32_t data)
{
	uint32_t temp = 0xCDCDCDCD;

	while (1)
		switch (FUNC1(base)) {
		case ATOM_IIO_NOP:
			base++;
			break;
		case ATOM_IIO_READ:
			temp = ctx->card->ioreg_read(ctx->card, FUNC0(base + 1));
			base += 3;
			break;
		case ATOM_IIO_WRITE:
			ctx->card->ioreg_write(ctx->card, FUNC0(base + 1), temp);
			base += 3;
			break;
		case ATOM_IIO_CLEAR:
			temp &=
			    ~((0xFFFFFFFF >> (32 - FUNC1(base + 1))) <<
			      FUNC1(base + 2));
			base += 3;
			break;
		case ATOM_IIO_SET:
			temp |=
			    (0xFFFFFFFF >> (32 - FUNC1(base + 1))) << FUNC1(base +
									2);
			base += 3;
			break;
		case ATOM_IIO_MOVE_INDEX:
			temp &=
			    ~((0xFFFFFFFF >> (32 - FUNC1(base + 1))) <<
			      FUNC1(base + 3));
			temp |=
			    ((index >> FUNC1(base + 2)) &
			     (0xFFFFFFFF >> (32 - FUNC1(base + 1)))) << FUNC1(base +
									  3);
			base += 4;
			break;
		case ATOM_IIO_MOVE_DATA:
			temp &=
			    ~((0xFFFFFFFF >> (32 - FUNC1(base + 1))) <<
			      FUNC1(base + 3));
			temp |=
			    ((data >> FUNC1(base + 2)) &
			     (0xFFFFFFFF >> (32 - FUNC1(base + 1)))) << FUNC1(base +
									  3);
			base += 4;
			break;
		case ATOM_IIO_MOVE_ATTR:
			temp &=
			    ~((0xFFFFFFFF >> (32 - FUNC1(base + 1))) <<
			      FUNC1(base + 3));
			temp |=
			    ((ctx->
			      io_attr >> FUNC1(base + 2)) & (0xFFFFFFFF >> (32 -
									  FUNC1
									  (base
									   +
									   1))))
			    << FUNC1(base + 3);
			base += 4;
			break;
		case ATOM_IIO_END:
			return temp;
		default:
			FUNC2("Unknown IIO opcode\n");
			return 0;
		}
}