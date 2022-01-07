
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static int or51211_read_ucblocks(struct dvb_frontend* fe, u32* ucblocks)
{
 *ucblocks = -ENOSYS;
 return 0;
}
