
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct vmw_private {int capabilities; int mmio_size; int last_read_seqno; int marker_seq; void* traces_state; void* config_done_state; void* enable_state; int * mmio_virt; } ;
struct vmw_fifo_state {int dx; int using_bounce_buffer; int marker_queue; void* capabilities; int rwsem; int fifo_mutex; scalar_t__ reserved_size; int * dynamic_buffer; int * static_buffer; int static_buffer_size; } ;


 int DRM_INFO (char*,unsigned int,...) ;
 int ENOMEM ;
 int PAGE_SIZE ;
 int SVGA_CAP_EXTENDED_FIFO ;
 int SVGA_FIFO_BUSY ;
 int SVGA_FIFO_CAPABILITIES ;
 int SVGA_FIFO_FENCE ;
 int SVGA_FIFO_MAX ;
 int SVGA_FIFO_MIN ;
 int SVGA_FIFO_NEXT_CMD ;
 int SVGA_FIFO_STOP ;
 int SVGA_REG_BITS_PER_PIXEL ;
 int SVGA_REG_CONFIG_DONE ;
 int SVGA_REG_ENABLE ;
 int SVGA_REG_ENABLE_ENABLE ;
 int SVGA_REG_ENABLE_HIDE ;
 int SVGA_REG_HEIGHT ;
 int SVGA_REG_MEM_REGS ;
 int SVGA_REG_TRACES ;
 int SVGA_REG_WIDTH ;
 int VMWGFX_FIFO_STATIC_SIZE ;
 int atomic_set (int *,int) ;
 int init_rwsem (int *) ;
 int mb () ;
 int mutex_init (int *) ;
 scalar_t__ unlikely (int ) ;
 int * vmalloc (int ) ;
 int vmw_marker_queue_init (int *) ;
 void* vmw_mmio_read (int *) ;
 int vmw_mmio_write (int,int *) ;
 void* vmw_read (struct vmw_private*,int ) ;
 int vmw_write (struct vmw_private*,int ,int) ;
 int wmb () ;

int vmw_fifo_init(struct vmw_private *dev_priv, struct vmw_fifo_state *fifo)
{
 u32 *fifo_mem = dev_priv->mmio_virt;
 uint32_t max;
 uint32_t min;

 fifo->dx = 0;
 fifo->static_buffer_size = VMWGFX_FIFO_STATIC_SIZE;
 fifo->static_buffer = vmalloc(fifo->static_buffer_size);
 if (unlikely(fifo->static_buffer == ((void*)0)))
  return -ENOMEM;

 fifo->dynamic_buffer = ((void*)0);
 fifo->reserved_size = 0;
 fifo->using_bounce_buffer = 0;

 mutex_init(&fifo->fifo_mutex);
 init_rwsem(&fifo->rwsem);

 DRM_INFO("width %d\n", vmw_read(dev_priv, SVGA_REG_WIDTH));
 DRM_INFO("height %d\n", vmw_read(dev_priv, SVGA_REG_HEIGHT));
 DRM_INFO("bpp %d\n", vmw_read(dev_priv, SVGA_REG_BITS_PER_PIXEL));

 dev_priv->enable_state = vmw_read(dev_priv, SVGA_REG_ENABLE);
 dev_priv->config_done_state = vmw_read(dev_priv, SVGA_REG_CONFIG_DONE);
 dev_priv->traces_state = vmw_read(dev_priv, SVGA_REG_TRACES);

 vmw_write(dev_priv, SVGA_REG_ENABLE, SVGA_REG_ENABLE_ENABLE |
    SVGA_REG_ENABLE_HIDE);
 vmw_write(dev_priv, SVGA_REG_TRACES, 0);

 min = 4;
 if (dev_priv->capabilities & SVGA_CAP_EXTENDED_FIFO)
  min = vmw_read(dev_priv, SVGA_REG_MEM_REGS);
 min <<= 2;

 if (min < PAGE_SIZE)
  min = PAGE_SIZE;

 vmw_mmio_write(min, fifo_mem + SVGA_FIFO_MIN);
 vmw_mmio_write(dev_priv->mmio_size, fifo_mem + SVGA_FIFO_MAX);
 wmb();
 vmw_mmio_write(min, fifo_mem + SVGA_FIFO_NEXT_CMD);
 vmw_mmio_write(min, fifo_mem + SVGA_FIFO_STOP);
 vmw_mmio_write(0, fifo_mem + SVGA_FIFO_BUSY);
 mb();

 vmw_write(dev_priv, SVGA_REG_CONFIG_DONE, 1);

 max = vmw_mmio_read(fifo_mem + SVGA_FIFO_MAX);
 min = vmw_mmio_read(fifo_mem + SVGA_FIFO_MIN);
 fifo->capabilities = vmw_mmio_read(fifo_mem + SVGA_FIFO_CAPABILITIES);

 DRM_INFO("Fifo max 0x%08x min 0x%08x cap 0x%08x\n",
   (unsigned int) max,
   (unsigned int) min,
   (unsigned int) fifo->capabilities);

 atomic_set(&dev_priv->marker_seq, dev_priv->last_read_seqno);
 vmw_mmio_write(dev_priv->last_read_seqno, fifo_mem + SVGA_FIFO_FENCE);
 vmw_marker_queue_init(&fifo->marker_queue);

 return 0;
}
