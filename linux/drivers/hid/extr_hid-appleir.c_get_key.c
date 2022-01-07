
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KEY_MASK ;
 int TWO_PACKETS_MASK ;

__attribute__((used)) static int get_key(int data)
{
 int key = (data >> 1) & KEY_MASK;

 if ((data & TWO_PACKETS_MASK))

  key = -key;

 return key;
}
