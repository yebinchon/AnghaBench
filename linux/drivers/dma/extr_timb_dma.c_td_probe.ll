; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_timb_dma.c_td_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_timb_dma.c_td_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.timb_dma_platform_data = type { i32, %struct.timb_dma_platform_data_channel* }
%struct.timb_dma_platform_data_channel = type { i32, i32, i32, i32 }
%struct.timb_dma = type { i64, i32, %struct.TYPE_4__, %struct.timb_dma_chan* }
%struct.TYPE_4__ = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.timb_dma_chan = type { %struct.TYPE_3__, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"No platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@channels = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Allocated TD: %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to remap I/O memory\0A\00", align 1
@TIMBDMA_32BIT_ADDR = common dso_local global i32 0, align 4
@TIMBDMA_ACR = common dso_local global i64 0, align 8
@TIMBDMA_IER = common dso_local global i64 0, align 8
@TIMBDMA_ISR = common dso_local global i64 0, align 8
@td_tasklet = common dso_local global i32 0, align 4
@td_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed to request IRQ\0A\00", align 1
@td_alloc_chan_resources = common dso_local global i32 0, align 4
@td_free_chan_resources = common dso_local global i32 0, align 4
@td_tx_status = common dso_local global i32 0, align 4
@td_issue_pending = common dso_local global i32 0, align 4
@DMA_SLAVE = common dso_local global i32 0, align 4
@DMA_PRIVATE = common dso_local global i32 0, align 4
@td_prep_slave_sg = common dso_local global i32 0, align 4
@td_terminate_all = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Wrong channel configuration\0A\00", align 1
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@TIMBDMA_INSTANCE_OFFSET = common dso_local global i32 0, align 4
@TIMBDMA_INSTANCE_TX_OFFSET = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"Chan: %d, membase: %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to register async device\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Probe result: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @td_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @td_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.timb_dma_platform_data*, align 8
  %5 = alloca %struct.timb_dma*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.timb_dma_chan*, align 8
  %11 = alloca %struct.timb_dma_platform_data_channel*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call %struct.timb_dma_platform_data* @dev_get_platdata(i32* %13)
  store %struct.timb_dma_platform_data* %14, %struct.timb_dma_platform_data** %4, align 8
  %15 = load %struct.timb_dma_platform_data*, %struct.timb_dma_platform_data** %4, align 8
  %16 = icmp ne %struct.timb_dma_platform_data* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %331

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  store %struct.resource* %26, %struct.resource** %6, align 8
  %27 = load %struct.resource*, %struct.resource** %6, align 8
  %28 = icmp ne %struct.resource* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %331

32:                                               ; preds = %23
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = call i32 @platform_get_irq(%struct.platform_device* %33, i32 0)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %331

39:                                               ; preds = %32
  %40 = load %struct.resource*, %struct.resource** %6, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.resource*, %struct.resource** %6, align 8
  %44 = call i32 @resource_size(%struct.resource* %43)
  %45 = load i32, i32* @DRIVER_NAME, align 4
  %46 = call i32 @request_mem_region(i32 %42, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %331

51:                                               ; preds = %39
  %52 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %53 = load i32, i32* @channels, align 4
  %54 = load %struct.timb_dma_platform_data*, %struct.timb_dma_platform_data** %4, align 8
  %55 = getelementptr inbounds %struct.timb_dma_platform_data, %struct.timb_dma_platform_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @struct_size(%struct.timb_dma* %52, i32 %53, i32 %56)
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.timb_dma* @kzalloc(i32 %57, i32 %58)
  store %struct.timb_dma* %59, %struct.timb_dma** %5, align 8
  %60 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %61 = icmp ne %struct.timb_dma* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %51
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %8, align 4
  br label %323

65:                                               ; preds = %51
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %69 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.timb_dma* %68)
  %70 = load %struct.resource*, %struct.resource** %6, align 8
  %71 = getelementptr inbounds %struct.resource, %struct.resource* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.resource*, %struct.resource** %6, align 8
  %74 = call i32 @resource_size(%struct.resource* %73)
  %75 = call i64 @ioremap(i32 %72, i32 %74)
  %76 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %77 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %79 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %65
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %8, align 4
  br label %320

88:                                               ; preds = %65
  %89 = load i32, i32* @TIMBDMA_32BIT_ADDR, align 4
  %90 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %91 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @TIMBDMA_ACR, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @iowrite32(i32 %89, i64 %94)
  %96 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %97 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @TIMBDMA_IER, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @iowrite32(i32 0, i64 %100)
  %102 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %103 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @TIMBDMA_ISR, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @iowrite32(i32 -1, i64 %106)
  %108 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %109 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %108, i32 0, i32 1
  %110 = load i32, i32* @td_tasklet, align 4
  %111 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %112 = ptrtoint %struct.timb_dma* %111 to i64
  %113 = call i32 @tasklet_init(i32* %109, i32 %110, i64 %112)
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @td_irq, align 4
  %116 = load i32, i32* @IRQF_SHARED, align 4
  %117 = load i32, i32* @DRIVER_NAME, align 4
  %118 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %119 = call i32 @request_irq(i32 %114, i32 %115, i32 %116, i32 %117, %struct.timb_dma* %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %88
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = call i32 @dev_err(i32* %124, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %312

126:                                              ; preds = %88
  %127 = load i32, i32* @td_alloc_chan_resources, align 4
  %128 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %129 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 8
  store i32 %127, i32* %130, align 8
  %131 = load i32, i32* @td_free_chan_resources, align 4
  %132 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %133 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 7
  store i32 %131, i32* %134, align 4
  %135 = load i32, i32* @td_tx_status, align 4
  %136 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %137 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 6
  store i32 %135, i32* %138, align 8
  %139 = load i32, i32* @td_issue_pending, align 4
  %140 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %141 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 5
  store i32 %139, i32* %142, align 4
  %143 = load i32, i32* @DMA_SLAVE, align 4
  %144 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %145 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @dma_cap_set(i32 %143, i32 %147)
  %149 = load i32, i32* @DMA_PRIVATE, align 4
  %150 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %151 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @dma_cap_set(i32 %149, i32 %153)
  %155 = load i32, i32* @td_prep_slave_sg, align 4
  %156 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %157 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 3
  store i32 %155, i32* %158, align 4
  %159 = load i32, i32* @td_terminate_all, align 4
  %160 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %161 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 2
  store i32 %159, i32* %162, align 8
  %163 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %164 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %163, i32 0, i32 0
  %165 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %166 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  store i32* %164, i32** %167, align 8
  %168 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %169 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = call i32 @INIT_LIST_HEAD(i32* %170)
  store i32 0, i32* %9, align 4
  br label %172

172:                                              ; preds = %286, %126
  %173 = load i32, i32* %9, align 4
  %174 = load %struct.timb_dma_platform_data*, %struct.timb_dma_platform_data** %4, align 8
  %175 = getelementptr inbounds %struct.timb_dma_platform_data, %struct.timb_dma_platform_data* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp slt i32 %173, %176
  br i1 %177, label %178, label %289

178:                                              ; preds = %172
  %179 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %180 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %179, i32 0, i32 3
  %181 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %180, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %181, i64 %183
  store %struct.timb_dma_chan* %184, %struct.timb_dma_chan** %10, align 8
  %185 = load %struct.timb_dma_platform_data*, %struct.timb_dma_platform_data** %4, align 8
  %186 = getelementptr inbounds %struct.timb_dma_platform_data, %struct.timb_dma_platform_data* %185, i32 0, i32 1
  %187 = load %struct.timb_dma_platform_data_channel*, %struct.timb_dma_platform_data_channel** %186, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.timb_dma_platform_data_channel, %struct.timb_dma_platform_data_channel* %187, i64 %189
  store %struct.timb_dma_platform_data_channel* %190, %struct.timb_dma_platform_data_channel** %11, align 8
  %191 = load i32, i32* %9, align 4
  %192 = srem i32 %191, 2
  %193 = load %struct.timb_dma_platform_data_channel*, %struct.timb_dma_platform_data_channel** %11, align 8
  %194 = getelementptr inbounds %struct.timb_dma_platform_data_channel, %struct.timb_dma_platform_data_channel* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %192, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %178
  %198 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %199 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %198, i32 0, i32 0
  %200 = call i32 @dev_err(i32* %199, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %201 = load i32, i32* @EINVAL, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %8, align 4
  br label %308

203:                                              ; preds = %178
  %204 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %205 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %204, i32 0, i32 2
  %206 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %10, align 8
  %207 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 1
  store %struct.TYPE_4__* %205, %struct.TYPE_4__** %208, align 8
  %209 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %10, align 8
  %210 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %209, i32 0, i32 0
  %211 = call i32 @dma_cookie_init(%struct.TYPE_3__* %210)
  %212 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %10, align 8
  %213 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %212, i32 0, i32 9
  %214 = call i32 @spin_lock_init(i32* %213)
  %215 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %10, align 8
  %216 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %215, i32 0, i32 8
  %217 = call i32 @INIT_LIST_HEAD(i32* %216)
  %218 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %10, align 8
  %219 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %218, i32 0, i32 7
  %220 = call i32 @INIT_LIST_HEAD(i32* %219)
  %221 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %10, align 8
  %222 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %221, i32 0, i32 6
  %223 = call i32 @INIT_LIST_HEAD(i32* %222)
  %224 = load %struct.timb_dma_platform_data_channel*, %struct.timb_dma_platform_data_channel** %11, align 8
  %225 = getelementptr inbounds %struct.timb_dma_platform_data_channel, %struct.timb_dma_platform_data_channel* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %10, align 8
  %228 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %227, i32 0, i32 5
  store i32 %226, i32* %228, align 4
  %229 = load %struct.timb_dma_platform_data_channel*, %struct.timb_dma_platform_data_channel** %11, align 8
  %230 = getelementptr inbounds %struct.timb_dma_platform_data_channel, %struct.timb_dma_platform_data_channel* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %10, align 8
  %233 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %232, i32 0, i32 4
  store i32 %231, i32* %233, align 8
  %234 = load %struct.timb_dma_platform_data_channel*, %struct.timb_dma_platform_data_channel** %11, align 8
  %235 = getelementptr inbounds %struct.timb_dma_platform_data_channel, %struct.timb_dma_platform_data_channel* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %10, align 8
  %238 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %237, i32 0, i32 3
  store i32 %236, i32* %238, align 4
  %239 = load %struct.timb_dma_platform_data_channel*, %struct.timb_dma_platform_data_channel** %11, align 8
  %240 = getelementptr inbounds %struct.timb_dma_platform_data_channel, %struct.timb_dma_platform_data_channel* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %203
  %244 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  br label %247

245:                                              ; preds = %203
  %246 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  br label %247

247:                                              ; preds = %245, %243
  %248 = phi i32 [ %244, %243 ], [ %246, %245 ]
  %249 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %10, align 8
  %250 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %249, i32 0, i32 2
  store i32 %248, i32* %250, align 8
  %251 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %252 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i32, i32* %9, align 4
  %255 = sdiv i32 %254, 2
  %256 = load i32, i32* @TIMBDMA_INSTANCE_OFFSET, align 4
  %257 = mul nsw i32 %255, %256
  %258 = sext i32 %257 to i64
  %259 = add nsw i64 %253, %258
  %260 = load %struct.timb_dma_platform_data_channel*, %struct.timb_dma_platform_data_channel** %11, align 8
  %261 = getelementptr inbounds %struct.timb_dma_platform_data_channel, %struct.timb_dma_platform_data_channel* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %247
  br label %267

265:                                              ; preds = %247
  %266 = load i64, i64* @TIMBDMA_INSTANCE_TX_OFFSET, align 8
  br label %267

267:                                              ; preds = %265, %264
  %268 = phi i64 [ 0, %264 ], [ %266, %265 ]
  %269 = add nsw i64 %259, %268
  %270 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %10, align 8
  %271 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %270, i32 0, i32 1
  store i64 %269, i64* %271, align 8
  %272 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %273 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %272, i32 0, i32 0
  %274 = load i32, i32* %9, align 4
  %275 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %10, align 8
  %276 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %273, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %274, i64 %277)
  %279 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %10, align 8
  %280 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 0
  %282 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %283 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 0
  %285 = call i32 @list_add_tail(i32* %281, i32* %284)
  br label %286

286:                                              ; preds = %267
  %287 = load i32, i32* %9, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %9, align 4
  br label %172

289:                                              ; preds = %172
  %290 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %291 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %290, i32 0, i32 2
  %292 = call i32 @dma_async_device_register(%struct.TYPE_4__* %291)
  store i32 %292, i32* %8, align 4
  %293 = load i32, i32* %8, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %289
  %296 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %297 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %296, i32 0, i32 0
  %298 = call i32 @dev_err(i32* %297, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %308

299:                                              ; preds = %289
  %300 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %301 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %302 = call i32 @platform_set_drvdata(%struct.platform_device* %300, %struct.timb_dma* %301)
  %303 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %304 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %303, i32 0, i32 0
  %305 = load i32, i32* %8, align 4
  %306 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %304, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %305)
  %307 = load i32, i32* %8, align 4
  store i32 %307, i32* %2, align 4
  br label %331

308:                                              ; preds = %295, %197
  %309 = load i32, i32* %7, align 4
  %310 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %311 = call i32 @free_irq(i32 %309, %struct.timb_dma* %310)
  br label %312

312:                                              ; preds = %308, %122
  %313 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %314 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %313, i32 0, i32 1
  %315 = call i32 @tasklet_kill(i32* %314)
  %316 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %317 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = call i32 @iounmap(i64 %318)
  br label %320

320:                                              ; preds = %312, %82
  %321 = load %struct.timb_dma*, %struct.timb_dma** %5, align 8
  %322 = call i32 @kfree(%struct.timb_dma* %321)
  br label %323

323:                                              ; preds = %320, %62
  %324 = load %struct.resource*, %struct.resource** %6, align 8
  %325 = getelementptr inbounds %struct.resource, %struct.resource* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.resource*, %struct.resource** %6, align 8
  %328 = call i32 @resource_size(%struct.resource* %327)
  %329 = call i32 @release_mem_region(i32 %326, i32 %328)
  %330 = load i32, i32* %8, align 4
  store i32 %330, i32* %2, align 4
  br label %331

331:                                              ; preds = %323, %299, %48, %37, %29, %17
  %332 = load i32, i32* %2, align 4
  ret i32 %332
}

declare dso_local %struct.timb_dma_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.timb_dma* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.timb_dma*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i64 @ioremap(i32, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.timb_dma*) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dma_cookie_init(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dma_async_device_register(%struct.TYPE_4__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.timb_dma*) #1

declare dso_local i32 @free_irq(i32, %struct.timb_dma*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @kfree(%struct.timb_dma*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
