
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct dvb_ca_private {TYPE_1__* pub; } ;
struct TYPE_4__ {int (* read_attribute_mem ) (TYPE_1__*,int,int) ;} ;


 int dprintk (char*,int,...) ;
 int stub1 (TYPE_1__*,int,int) ;
 int stub2 (TYPE_1__*,int,int) ;
 int stub3 (TYPE_1__*,int,int) ;

__attribute__((used)) static int dvb_ca_en50221_read_tuple(struct dvb_ca_private *ca, int slot,
         int *address, int *tuple_type,
         int *tuple_length, u8 *tuple)
{
 int i;
 int _tuple_type;
 int _tuple_length;
 int _address = *address;


 _tuple_type = ca->pub->read_attribute_mem(ca->pub, slot, _address);
 if (_tuple_type < 0)
  return _tuple_type;
 if (_tuple_type == 0xff) {
  dprintk("END OF CHAIN TUPLE type:0x%x\n", _tuple_type);
  *address += 2;
  *tuple_type = _tuple_type;
  *tuple_length = 0;
  return 0;
 }
 _tuple_length = ca->pub->read_attribute_mem(ca->pub, slot,
          _address + 2);
 if (_tuple_length < 0)
  return _tuple_length;
 _address += 4;

 dprintk("TUPLE type:0x%x length:%i\n", _tuple_type, _tuple_length);


 for (i = 0; i < _tuple_length; i++) {
  tuple[i] = ca->pub->read_attribute_mem(ca->pub, slot,
             _address + (i * 2));
  dprintk("  0x%02x: 0x%02x %c\n",
   i, tuple[i] & 0xff,
   ((tuple[i] > 31) && (tuple[i] < 127)) ? tuple[i] : '.');
 }
 _address += (_tuple_length * 2);


 *tuple_type = _tuple_type;
 *tuple_length = _tuple_length;
 *address = _address;
 return 0;
}
