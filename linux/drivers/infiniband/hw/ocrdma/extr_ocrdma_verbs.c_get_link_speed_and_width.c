
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ocrdma_dev {int dummy; } ;


 int IB_SPEED_DDR ;
 int IB_SPEED_QDR ;
 int IB_SPEED_SDR ;
 int IB_WIDTH_1X ;
 int IB_WIDTH_4X ;




 int OCRDMA_PHYS_LINK_SPEED_ZERO ;
 int ocrdma_mbx_get_link_speed (struct ocrdma_dev*,int*,int *) ;

__attribute__((used)) static inline void get_link_speed_and_width(struct ocrdma_dev *dev,
         u8 *ib_speed, u8 *ib_width)
{
 int status;
 u8 speed;

 status = ocrdma_mbx_get_link_speed(dev, &speed, ((void*)0));
 if (status)
  speed = OCRDMA_PHYS_LINK_SPEED_ZERO;

 switch (speed) {
 case 130:
  *ib_speed = IB_SPEED_SDR;
  *ib_width = IB_WIDTH_1X;
  break;

 case 131:
  *ib_speed = IB_SPEED_QDR;
  *ib_width = IB_WIDTH_1X;
  break;

 case 129:
  *ib_speed = IB_SPEED_DDR;
  *ib_width = IB_WIDTH_4X;
  break;

 case 128:
  *ib_speed = IB_SPEED_QDR;
  *ib_width = IB_WIDTH_4X;
  break;

 default:

  *ib_speed = IB_SPEED_SDR;
  *ib_width = IB_WIDTH_1X;
 }
}
