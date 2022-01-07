; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_dma_chan_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_dma_chan_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilinx_dma_device = type { i64, i32, i32, %struct.xilinx_dma_chan**, %struct.TYPE_8__, %struct.TYPE_6__*, i32 }
%struct.xilinx_dma_chan = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, i32, i32, i8*, i32, i32, %struct.TYPE_5__, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, %struct.xilinx_dma_device* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"xlnx,include-dre\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"xlnx,genlock-mode\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"xlnx,datawidth\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"missing xlnx,datawidth property\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"xlnx,axi-vdma-mm2s-channel\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"xlnx,axi-dma-mm2s-channel\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"xlnx,axi-cdma-channel\00", align 1
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@XILINX_DMA_MM2S_CTRL_OFFSET = common dso_local global i32 0, align 4
@XDMA_TYPE_VDMA = common dso_local global i64 0, align 8
@XILINX_VDMA_MM2S_DESC_OFFSET = common dso_local global i32 0, align 4
@XILINX_DMA_FLUSH_BOTH = common dso_local global i64 0, align 8
@XILINX_DMA_FLUSH_MM2S = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"xlnx,axi-vdma-s2mm-channel\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"xlnx,axi-dma-s2mm-channel\00", align 1
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"xlnx,enable-vert-flip\00", align 1
@XILINX_VDMA_REG_ENABLE_VERTICAL_FLIP = common dso_local global i32 0, align 4
@XILINX_VDMA_ENABLE_VERTICAL_FLIP = common dso_local global i32 0, align 4
@XILINX_DMA_S2MM_CTRL_OFFSET = common dso_local global i32 0, align 4
@XILINX_VDMA_S2MM_DESC_OFFSET = common dso_local global i32 0, align 4
@XILINX_DMA_FLUSH_S2MM = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [33 x i8] c"Invalid channel compatible node\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@xilinx_dma_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"xilinx-dma-controller\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"unable to request IRQ %d\0A\00", align 1
@XDMA_TYPE_AXIDMA = common dso_local global i64 0, align 8
@xilinx_dma_start_transfer = common dso_local global i32 0, align 4
@xilinx_dma_stop_transfer = common dso_local global i8* null, align 8
@XDMA_TYPE_CDMA = common dso_local global i64 0, align 8
@xilinx_cdma_start_transfer = common dso_local global i32 0, align 4
@xilinx_cdma_stop_transfer = common dso_local global i8* null, align 8
@xilinx_vdma_start_transfer = common dso_local global i32 0, align 4
@XILINX_DMA_REG_DMASR = common dso_local global i32 0, align 4
@XILINX_DMA_DMASR_SG_MASK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"ch %d: SG %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@xilinx_dma_do_tasklet = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [22 x i8] c"Reset channel failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xilinx_dma_device*, %struct.device_node*, i32)* @xilinx_dma_chan_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinx_dma_chan_probe(%struct.xilinx_dma_device* %0, %struct.device_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xilinx_dma_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xilinx_dma_chan*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xilinx_dma_device* %0, %struct.xilinx_dma_device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %5, align 8
  %14 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.xilinx_dma_chan* @devm_kzalloc(i32 %15, i32 136, i32 %16)
  store %struct.xilinx_dma_chan* %17, %struct.xilinx_dma_chan** %8, align 8
  %18 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %19 = icmp ne %struct.xilinx_dma_chan* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %358

23:                                               ; preds = %3
  %24 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %5, align 8
  %25 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %28 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %27, i32 0, i32 9
  store i32 %26, i32* %28, align 4
  %29 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %5, align 8
  %30 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %31 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %30, i32 0, i32 24
  store %struct.xilinx_dma_device* %29, %struct.xilinx_dma_device** %31, align 8
  %32 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %33 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %5, align 8
  %35 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %38 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %37, i32 0, i32 23
  store i32 %36, i32* %38, align 4
  %39 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %40 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %42 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %41, i32 0, i32 22
  %43 = call i32 @spin_lock_init(i32* %42)
  %44 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %45 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %44, i32 0, i32 21
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %48 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %47, i32 0, i32 20
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %51 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %50, i32 0, i32 19
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %54 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %53, i32 0, i32 18
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.device_node*, %struct.device_node** %6, align 8
  %57 = call i8* @of_property_read_bool(%struct.device_node* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %58 = ptrtoint i8* %57 to i32
  store i32 %58, i32* %9, align 4
  %59 = load %struct.device_node*, %struct.device_node** %6, align 8
  %60 = call i8* @of_property_read_bool(%struct.device_node* %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %62 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %61, i32 0, i32 17
  store i8* %60, i8** %62, align 8
  %63 = load %struct.device_node*, %struct.device_node** %6, align 8
  %64 = call i32 @of_property_read_u32(%struct.device_node* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %10)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %23
  %68 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %5, align 8
  %69 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i8*, ...) @dev_err(i32 %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %4, align 4
  br label %358

73:                                               ; preds = %23
  %74 = load i32, i32* %10, align 4
  %75 = ashr i32 %74, 3
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp sgt i32 %76, 8
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %78, %73
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 %83, 1
  %85 = call i32 @fls(i32 %84)
  %86 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %5, align 8
  %87 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %82, %79
  %90 = load %struct.device_node*, %struct.device_node** %6, align 8
  %91 = call i64 @of_device_is_compatible(%struct.device_node* %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %89
  %94 = load %struct.device_node*, %struct.device_node** %6, align 8
  %95 = call i64 @of_device_is_compatible(%struct.device_node* %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load %struct.device_node*, %struct.device_node** %6, align 8
  %99 = call i64 @of_device_is_compatible(%struct.device_node* %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %144

101:                                              ; preds = %97, %93, %89
  %102 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %103 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %104 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %103, i32 0, i32 16
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %107 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %110 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @XILINX_DMA_MM2S_CTRL_OFFSET, align 4
  %112 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %113 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %112, i32 0, i32 15
  store i32 %111, i32* %113, align 4
  %114 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %5, align 8
  %115 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %114, i32 0, i32 5
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @XDMA_TYPE_VDMA, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %143

121:                                              ; preds = %101
  %122 = load i32, i32* @XILINX_VDMA_MM2S_DESC_OFFSET, align 4
  %123 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %124 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %123, i32 0, i32 14
  store i32 %122, i32* %124, align 8
  %125 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %126 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %125, i32 0, i32 13
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  store i32 1, i32* %127, align 8
  %128 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %5, align 8
  %129 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @XILINX_DMA_FLUSH_BOTH, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %139, label %133

133:                                              ; preds = %121
  %134 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %5, align 8
  %135 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @XILINX_DMA_FLUSH_MM2S, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %133, %121
  %140 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %141 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %140, i32 0, i32 4
  store i32 1, i32* %141, align 8
  br label %142

142:                                              ; preds = %139, %133
  br label %143

143:                                              ; preds = %142, %101
  br label %226

144:                                              ; preds = %97
  %145 = load %struct.device_node*, %struct.device_node** %6, align 8
  %146 = call i64 @of_device_is_compatible(%struct.device_node* %145, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %144
  %149 = load %struct.device_node*, %struct.device_node** %6, align 8
  %150 = call i64 @of_device_is_compatible(%struct.device_node* %149, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %218

152:                                              ; preds = %148, %144
  %153 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %154 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %155 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %154, i32 0, i32 16
  store i32 %153, i32* %155, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %158 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %5, align 8
  %161 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = sub nsw i32 %159, %162
  %164 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %165 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 4
  %166 = load %struct.device_node*, %struct.device_node** %6, align 8
  %167 = call i8* @of_property_read_bool(%struct.device_node* %166, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %168 = ptrtoint i8* %167 to i32
  %169 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %170 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %169, i32 0, i32 5
  store i32 %168, i32* %170, align 4
  %171 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %172 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %152
  %176 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %177 = load i32, i32* @XILINX_VDMA_REG_ENABLE_VERTICAL_FLIP, align 4
  %178 = call i32 @dma_read(%struct.xilinx_dma_chan* %176, i32 %177)
  %179 = load i32, i32* @XILINX_VDMA_ENABLE_VERTICAL_FLIP, align 4
  %180 = and i32 %178, %179
  %181 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %182 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %181, i32 0, i32 13
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 1
  store i32 %180, i32* %183, align 4
  br label %184

184:                                              ; preds = %175, %152
  %185 = load i32, i32* @XILINX_DMA_S2MM_CTRL_OFFSET, align 4
  %186 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %187 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %186, i32 0, i32 15
  store i32 %185, i32* %187, align 4
  %188 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %5, align 8
  %189 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %188, i32 0, i32 5
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @XDMA_TYPE_VDMA, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %217

195:                                              ; preds = %184
  %196 = load i32, i32* @XILINX_VDMA_S2MM_DESC_OFFSET, align 4
  %197 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %198 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %197, i32 0, i32 14
  store i32 %196, i32* %198, align 8
  %199 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %200 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %199, i32 0, i32 13
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  store i32 1, i32* %201, align 8
  %202 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %5, align 8
  %203 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @XILINX_DMA_FLUSH_BOTH, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %213, label %207

207:                                              ; preds = %195
  %208 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %5, align 8
  %209 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @XILINX_DMA_FLUSH_S2MM, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %207, %195
  %214 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %215 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %214, i32 0, i32 4
  store i32 1, i32* %215, align 8
  br label %216

216:                                              ; preds = %213, %207
  br label %217

217:                                              ; preds = %216, %184
  br label %225

218:                                              ; preds = %148
  %219 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %5, align 8
  %220 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = call i32 (i32, i8*, ...) @dev_err(i32 %221, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %223 = load i32, i32* @EINVAL, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %4, align 4
  br label %358

225:                                              ; preds = %217
  br label %226

226:                                              ; preds = %225, %143
  %227 = load %struct.device_node*, %struct.device_node** %6, align 8
  %228 = call i32 @irq_of_parse_and_map(%struct.device_node* %227, i32 0)
  %229 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %230 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %229, i32 0, i32 12
  store i32 %228, i32* %230, align 4
  %231 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %232 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %231, i32 0, i32 12
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @xilinx_dma_irq_handler, align 4
  %235 = load i32, i32* @IRQF_SHARED, align 4
  %236 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %237 = call i32 @request_irq(i32 %233, i32 %234, i32 %235, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), %struct.xilinx_dma_chan* %236)
  store i32 %237, i32* %12, align 4
  %238 = load i32, i32* %12, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %249

240:                                              ; preds = %226
  %241 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %5, align 8
  %242 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %245 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %244, i32 0, i32 12
  %246 = load i32, i32* %245, align 4
  %247 = call i32 (i32, i8*, ...) @dev_err(i32 %243, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %246)
  %248 = load i32, i32* %12, align 4
  store i32 %248, i32* %4, align 4
  br label %358

249:                                              ; preds = %226
  %250 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %5, align 8
  %251 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %250, i32 0, i32 5
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @XDMA_TYPE_AXIDMA, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %264

257:                                              ; preds = %249
  %258 = load i32, i32* @xilinx_dma_start_transfer, align 4
  %259 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %260 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %259, i32 0, i32 11
  store i32 %258, i32* %260, align 8
  %261 = load i8*, i8** @xilinx_dma_stop_transfer, align 8
  %262 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %263 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %262, i32 0, i32 10
  store i8* %261, i8** %263, align 8
  br label %287

264:                                              ; preds = %249
  %265 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %5, align 8
  %266 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %265, i32 0, i32 5
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @XDMA_TYPE_CDMA, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %279

272:                                              ; preds = %264
  %273 = load i32, i32* @xilinx_cdma_start_transfer, align 4
  %274 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %275 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %274, i32 0, i32 11
  store i32 %273, i32* %275, align 8
  %276 = load i8*, i8** @xilinx_cdma_stop_transfer, align 8
  %277 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %278 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %277, i32 0, i32 10
  store i8* %276, i8** %278, align 8
  br label %286

279:                                              ; preds = %264
  %280 = load i32, i32* @xilinx_vdma_start_transfer, align 4
  %281 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %282 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %281, i32 0, i32 11
  store i32 %280, i32* %282, align 8
  %283 = load i8*, i8** @xilinx_dma_stop_transfer, align 8
  %284 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %285 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %284, i32 0, i32 10
  store i8* %283, i8** %285, align 8
  br label %286

286:                                              ; preds = %279, %272
  br label %287

287:                                              ; preds = %286, %257
  %288 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %5, align 8
  %289 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %288, i32 0, i32 5
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @XDMA_TYPE_VDMA, align 8
  %294 = icmp ne i64 %292, %293
  br i1 %294, label %295, label %319

295:                                              ; preds = %287
  %296 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %297 = load i32, i32* @XILINX_DMA_REG_DMASR, align 4
  %298 = call i32 @dma_ctrl_read(%struct.xilinx_dma_chan* %296, i32 %297)
  %299 = load i32, i32* @XILINX_DMA_DMASR_SG_MASK, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %295
  %303 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %304 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %303, i32 0, i32 6
  store i32 1, i32* %304, align 8
  br label %305

305:                                              ; preds = %302, %295
  %306 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %307 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %306, i32 0, i32 9
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %310 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %313 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %312, i32 0, i32 6
  %314 = load i32, i32* %313, align 8
  %315 = icmp ne i32 %314, 0
  %316 = zext i1 %315 to i64
  %317 = select i1 %315, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0)
  %318 = call i32 @dev_dbg(i32 %308, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %311, i8* %317)
  br label %319

319:                                              ; preds = %305, %287
  %320 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %321 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %320, i32 0, i32 8
  %322 = load i32, i32* @xilinx_dma_do_tasklet, align 4
  %323 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %324 = ptrtoint %struct.xilinx_dma_chan* %323 to i64
  %325 = call i32 @tasklet_init(i32* %321, i32 %322, i64 %324)
  %326 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %5, align 8
  %327 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %326, i32 0, i32 4
  %328 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %329 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %328, i32 0, i32 7
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 1
  store %struct.TYPE_8__* %327, %struct.TYPE_8__** %330, align 8
  %331 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %332 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %331, i32 0, i32 7
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 0
  %334 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %5, align 8
  %335 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %334, i32 0, i32 4
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i32 0, i32 0
  %337 = call i32 @list_add_tail(i32* %333, i32* %336)
  %338 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %339 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %5, align 8
  %340 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %339, i32 0, i32 3
  %341 = load %struct.xilinx_dma_chan**, %struct.xilinx_dma_chan*** %340, align 8
  %342 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %343 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %341, i64 %345
  store %struct.xilinx_dma_chan* %338, %struct.xilinx_dma_chan** %346, align 8
  %347 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %8, align 8
  %348 = call i32 @xilinx_dma_chan_reset(%struct.xilinx_dma_chan* %347)
  store i32 %348, i32* %12, align 4
  %349 = load i32, i32* %12, align 4
  %350 = icmp slt i32 %349, 0
  br i1 %350, label %351, label %357

351:                                              ; preds = %319
  %352 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %5, align 8
  %353 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 4
  %355 = call i32 (i32, i8*, ...) @dev_err(i32 %354, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  %356 = load i32, i32* %12, align 4
  store i32 %356, i32* %4, align 4
  br label %358

357:                                              ; preds = %319
  store i32 0, i32* %4, align 4
  br label %358

358:                                              ; preds = %357, %351, %240, %218, %67, %20
  %359 = load i32, i32* %4, align 4
  ret i32 %359
}

declare dso_local %struct.xilinx_dma_chan* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @dma_read(%struct.xilinx_dma_chan*, i32) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.xilinx_dma_chan*) #1

declare dso_local i32 @dma_ctrl_read(%struct.xilinx_dma_chan*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i8*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @xilinx_dma_chan_reset(%struct.xilinx_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
