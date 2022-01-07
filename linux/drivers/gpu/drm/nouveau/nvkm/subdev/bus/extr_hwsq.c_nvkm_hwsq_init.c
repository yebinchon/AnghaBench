
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct TYPE_2__ {scalar_t__ size; int data; } ;
struct nvkm_hwsq {TYPE_1__ c; int data; int addr; struct nvkm_subdev* subdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_hwsq* kmalloc (int,int ) ;
 int memset (int ,int,int) ;

int
nvkm_hwsq_init(struct nvkm_subdev *subdev, struct nvkm_hwsq **phwsq)
{
 struct nvkm_hwsq *hwsq;

 hwsq = *phwsq = kmalloc(sizeof(*hwsq), GFP_KERNEL);
 if (hwsq) {
  hwsq->subdev = subdev;
  hwsq->addr = ~0;
  hwsq->data = ~0;
  memset(hwsq->c.data, 0x7f, sizeof(hwsq->c.data));
  hwsq->c.size = 0;
 }

 return hwsq ? 0 : -ENOMEM;
}
