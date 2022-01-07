; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v5.c_ccp5_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v5.c_ccp5_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_device = type { i64, i64, i8*, %struct.ccp_cmd_queue*, i32, i64, i32, i64, %struct.device* }
%struct.ccp_cmd_queue = type { i32, i32, i32, %struct.dma_pool*, %struct.task_struct*, i8*, i8*, i64, i32, i64, i64, i32, i64, i64, i64, i32, i64, i64, i64, i64, i64, i32, i32, i32, %struct.ccp_device* }
%struct.dma_pool = type { i32 }
%struct.task_struct = type { i32 }
%struct.device = type { i32 }

@MAX_DMAPOOL_NAME_LEN = common dso_local global i32 0, align 4
@Q_MASK_REG = common dso_local global i64 0, align 8
@MAX_HW_QUEUES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s_q%d\00", align 1
@CCP_DMAPOOL_MAX_SIZE = common dso_local global i32 0, align 4
@CCP_DMAPOOL_ALIGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"unable to allocate dma pool\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@COMMANDS_PER_QUEUE = common dso_local global i32 0, align 4
@Q_DESC_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"unable to allocate command queue\0A\00", align 1
@CMD5_Q_STATUS_INCR = common dso_local global i32 0, align 4
@CMD5_Q_TAIL_LO_BASE = common dso_local global i64 0, align 8
@CMD5_Q_HEAD_LO_BASE = common dso_local global i64 0, align 8
@CMD5_Q_INT_ENABLE_BASE = common dso_local global i64 0, align 8
@CMD5_Q_INTERRUPT_STATUS_BASE = common dso_local global i64 0, align 8
@CMD5_Q_STATUS_BASE = common dso_local global i64 0, align 8
@CMD5_Q_INT_STATUS_BASE = common dso_local global i64 0, align 8
@CMD5_Q_DMA_STATUS_BASE = common dso_local global i64 0, align 8
@CMD5_Q_DMA_READ_STATUS_BASE = common dso_local global i64 0, align 8
@CMD5_Q_DMA_WRITE_STATUS_BASE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"queue #%u available\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"no command queues available\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SUPPORTED_INTERRUPTS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Requesting an IRQ...\0A\00", align 1
@ccp5_irq_handler = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"unable to allocate an IRQ\0A\00", align 1
@ccp5_irq_bh = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"Loading LSB map...\0A\00", align 1
@LSB_PRIVATE_MASK_LO_OFFSET = common dso_local global i64 0, align 8
@LSB_PRIVATE_MASK_HI_OFFSET = common dso_local global i64 0, align 8
@LSB_PUBLIC_MASK_LO_OFFSET = common dso_local global i64 0, align 8
@LSB_PUBLIC_MASK_HI_OFFSET = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [31 x i8] c"Configuring virtual queues...\0A\00", align 1
@CMD5_Q_SIZE = common dso_local global i32 0, align 4
@CMD5_Q_SHIFT = common dso_local global i32 0, align 4
@QUEUE_SIZE_VAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"Assigning LSBs...\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Unable to assign LSBs (%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Starting threads...\0A\00", align 1
@ccp_cmd_queue_thread = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"%s-q%u\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"error creating queue thread (%ld)\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Enabling interrupts...\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Registering device...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccp_device*)* @ccp5_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp5_init(%struct.ccp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccp_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ccp_cmd_queue*, align 8
  %6 = alloca %struct.dma_pool*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.task_struct*, align 8
  %18 = alloca i32, align 4
  store %struct.ccp_device* %0, %struct.ccp_device** %3, align 8
  %19 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %20 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %19, i32 0, i32 8
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %4, align 8
  %22 = load i32, i32* @MAX_DMAPOOL_NAME_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %7, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %8, align 8
  %26 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %27 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @Q_MASK_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i8* @ioread32(i64 %30)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %206, %1
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @MAX_HW_QUEUES, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %39 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %42 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %40, %43
  br label %45

45:                                               ; preds = %37, %33
  %46 = phi i1 [ false, %33 ], [ %44, %37 ]
  br i1 %46, label %47, label %209

47:                                               ; preds = %45
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = shl i32 1, %49
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %206

54:                                               ; preds = %47
  %55 = trunc i64 %23 to i32
  %56 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %57 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @snprintf(i8* %25, i32 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %58, i32 %59)
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load i32, i32* @CCP_DMAPOOL_MAX_SIZE, align 4
  %63 = load i32, i32* @CCP_DMAPOOL_ALIGN, align 4
  %64 = call %struct.dma_pool* @dma_pool_create(i8* %25, %struct.device* %61, i32 %62, i32 %63, i32 0)
  store %struct.dma_pool* %64, %struct.dma_pool** %6, align 8
  %65 = load %struct.dma_pool*, %struct.dma_pool** %6, align 8
  %66 = icmp ne %struct.dma_pool* %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %54
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %14, align 4
  br label %559

72:                                               ; preds = %54
  %73 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %74 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %73, i32 0, i32 3
  %75 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %74, align 8
  %76 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %77 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %75, i64 %78
  store %struct.ccp_cmd_queue* %79, %struct.ccp_cmd_queue** %5, align 8
  %80 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %81 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %81, align 8
  %84 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %85 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %86 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %85, i32 0, i32 24
  store %struct.ccp_device* %84, %struct.ccp_device** %86, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %89 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.dma_pool*, %struct.dma_pool** %6, align 8
  %91 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %92 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %91, i32 0, i32 3
  store %struct.dma_pool* %90, %struct.dma_pool** %92, align 8
  %93 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %94 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %93, i32 0, i32 23
  %95 = call i32 @mutex_init(i32* %94)
  %96 = load i32, i32* @COMMANDS_PER_QUEUE, align 4
  %97 = icmp sgt i32 %96, 128
  %98 = zext i1 %97 to i32
  %99 = call i32 @BUILD_BUG_ON(i32 %98)
  %100 = load i32, i32* @Q_DESC_SIZE, align 4
  %101 = call i32 @Q_SIZE(i32 %100)
  %102 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %103 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %102, i32 0, i32 22
  store i32 %101, i32* %103, align 4
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %106 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %105, i32 0, i32 22
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %109 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %108, i32 0, i32 11
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call i32 @dmam_alloc_coherent(%struct.device* %104, i32 %107, i32* %109, i32 %110)
  %112 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %113 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %112, i32 0, i32 21
  store i32 %111, i32* %113, align 8
  %114 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %115 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %114, i32 0, i32 21
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %72
  %119 = load %struct.device*, %struct.device** %4, align 8
  %120 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %119, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %14, align 4
  br label %559

123:                                              ; preds = %72
  %124 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %125 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %124, i32 0, i32 20
  store i64 0, i64* %125, align 8
  %126 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %127 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* @CMD5_Q_STATUS_INCR, align 4
  %130 = load i32, i32* %10, align 4
  %131 = add i32 %130, 1
  %132 = mul i32 %129, %131
  %133 = zext i32 %132 to i64
  %134 = add nsw i64 %128, %133
  %135 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %136 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %135, i32 0, i32 7
  store i64 %134, i64* %136, align 8
  %137 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %138 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %137, i32 0, i32 7
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @CMD5_Q_TAIL_LO_BASE, align 8
  %141 = add nsw i64 %139, %140
  %142 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %143 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %142, i32 0, i32 10
  store i64 %141, i64* %143, align 8
  %144 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %145 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %144, i32 0, i32 7
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @CMD5_Q_HEAD_LO_BASE, align 8
  %148 = add nsw i64 %146, %147
  %149 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %150 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %149, i32 0, i32 9
  store i64 %148, i64* %150, align 8
  %151 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %152 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %151, i32 0, i32 7
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @CMD5_Q_INT_ENABLE_BASE, align 8
  %155 = add nsw i64 %153, %154
  %156 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %157 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %156, i32 0, i32 19
  store i64 %155, i64* %157, align 8
  %158 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %159 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %158, i32 0, i32 7
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @CMD5_Q_INTERRUPT_STATUS_BASE, align 8
  %162 = add nsw i64 %160, %161
  %163 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %164 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %163, i32 0, i32 12
  store i64 %162, i64* %164, align 8
  %165 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %166 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %165, i32 0, i32 7
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @CMD5_Q_STATUS_BASE, align 8
  %169 = add nsw i64 %167, %168
  %170 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %171 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %170, i32 0, i32 13
  store i64 %169, i64* %171, align 8
  %172 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %173 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %172, i32 0, i32 7
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @CMD5_Q_INT_STATUS_BASE, align 8
  %176 = add nsw i64 %174, %175
  %177 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %178 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %177, i32 0, i32 14
  store i64 %176, i64* %178, align 8
  %179 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %180 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %179, i32 0, i32 7
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @CMD5_Q_DMA_STATUS_BASE, align 8
  %183 = add nsw i64 %181, %182
  %184 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %185 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %184, i32 0, i32 18
  store i64 %183, i64* %185, align 8
  %186 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %187 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %186, i32 0, i32 7
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @CMD5_Q_DMA_READ_STATUS_BASE, align 8
  %190 = add nsw i64 %188, %189
  %191 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %192 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %191, i32 0, i32 17
  store i64 %190, i64* %192, align 8
  %193 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %194 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %193, i32 0, i32 7
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @CMD5_Q_DMA_WRITE_STATUS_BASE, align 8
  %197 = add nsw i64 %195, %196
  %198 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %199 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %198, i32 0, i32 16
  store i64 %197, i64* %199, align 8
  %200 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %201 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %200, i32 0, i32 15
  %202 = call i32 @init_waitqueue_head(i32* %201)
  %203 = load %struct.device*, %struct.device** %4, align 8
  %204 = load i32, i32* %10, align 4
  %205 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %203, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %204)
  br label %206

206:                                              ; preds = %123, %53
  %207 = load i32, i32* %10, align 4
  %208 = add i32 %207, 1
  store i32 %208, i32* %10, align 4
  br label %33

209:                                              ; preds = %45
  %210 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %211 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %209
  %215 = load %struct.device*, %struct.device** %4, align 8
  %216 = call i32 @dev_notice(%struct.device* %215, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %217 = load i32, i32* @EIO, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %14, align 4
  br label %559

219:                                              ; preds = %209
  %220 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %221 = call i32 @ccp5_disable_queue_interrupts(%struct.ccp_device* %220)
  store i32 0, i32* %10, align 4
  br label %222

222:                                              ; preds = %258, %219
  %223 = load i32, i32* %10, align 4
  %224 = zext i32 %223 to i64
  %225 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %226 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = icmp ult i64 %224, %227
  br i1 %228, label %229, label %261

229:                                              ; preds = %222
  %230 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %231 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %230, i32 0, i32 3
  %232 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %231, align 8
  %233 = load i32, i32* %10, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %232, i64 %234
  store %struct.ccp_cmd_queue* %235, %struct.ccp_cmd_queue** %5, align 8
  %236 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %237 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %236, i32 0, i32 1
  store i32 0, i32* %237, align 4
  %238 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %239 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %242 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %241, i32 0, i32 7
  %243 = load i64, i64* %242, align 8
  %244 = call i32 @iowrite32(i32 %240, i64 %243)
  %245 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %246 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %245, i32 0, i32 14
  %247 = load i64, i64* %246, align 8
  %248 = call i8* @ioread32(i64 %247)
  %249 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %250 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %249, i32 0, i32 13
  %251 = load i64, i64* %250, align 8
  %252 = call i8* @ioread32(i64 %251)
  %253 = load i32, i32* @SUPPORTED_INTERRUPTS, align 4
  %254 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %255 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %254, i32 0, i32 12
  %256 = load i64, i64* %255, align 8
  %257 = call i32 @iowrite32(i32 %253, i64 %256)
  br label %258

258:                                              ; preds = %229
  %259 = load i32, i32* %10, align 4
  %260 = add i32 %259, 1
  store i32 %260, i32* %10, align 4
  br label %222

261:                                              ; preds = %222
  %262 = load %struct.device*, %struct.device** %4, align 8
  %263 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %262, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %264 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %265 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @ccp5_irq_handler, align 4
  %268 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %269 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %268, i32 0, i32 2
  %270 = load i8*, i8** %269, align 8
  %271 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %272 = call i32 @sp_request_ccp_irq(i32 %266, i32 %267, i8* %270, %struct.ccp_device* %271)
  store i32 %272, i32* %14, align 4
  %273 = load i32, i32* %14, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %261
  %276 = load %struct.device*, %struct.device** %4, align 8
  %277 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %276, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %559

278:                                              ; preds = %261
  %279 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %280 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %279, i32 0, i32 7
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %290

283:                                              ; preds = %278
  %284 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %285 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %284, i32 0, i32 6
  %286 = load i32, i32* @ccp5_irq_bh, align 4
  %287 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %288 = ptrtoint %struct.ccp_device* %287 to i64
  %289 = call i32 @tasklet_init(i32* %285, i32 %286, i64 %288)
  br label %290

290:                                              ; preds = %283, %278
  %291 = load %struct.device*, %struct.device** %4, align 8
  %292 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %291, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %293 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %294 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %293, i32 0, i32 5
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @LSB_PRIVATE_MASK_LO_OFFSET, align 8
  %297 = add nsw i64 %295, %296
  %298 = call i8* @ioread32(i64 %297)
  %299 = ptrtoint i8* %298 to i32
  store i32 %299, i32* %12, align 4
  %300 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %301 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %300, i32 0, i32 5
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @LSB_PRIVATE_MASK_HI_OFFSET, align 8
  %304 = add nsw i64 %302, %303
  %305 = call i8* @ioread32(i64 %304)
  %306 = ptrtoint i8* %305 to i32
  store i32 %306, i32* %13, align 4
  %307 = load i32, i32* %12, align 4
  %308 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %309 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %308, i32 0, i32 5
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @LSB_PUBLIC_MASK_LO_OFFSET, align 8
  %312 = add nsw i64 %310, %311
  %313 = call i32 @iowrite32(i32 %307, i64 %312)
  %314 = load i32, i32* %13, align 4
  %315 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %316 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %315, i32 0, i32 5
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @LSB_PUBLIC_MASK_HI_OFFSET, align 8
  %319 = add nsw i64 %317, %318
  %320 = call i32 @iowrite32(i32 %314, i64 %319)
  %321 = load i32, i32* %13, align 4
  %322 = shl i32 %321, 30
  %323 = load i32, i32* %12, align 4
  %324 = or i32 %322, %323
  store i32 %324, i32* %11, align 4
  %325 = load %struct.device*, %struct.device** %4, align 8
  %326 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %325, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %327

327:                                              ; preds = %397, %290
  %328 = load i32, i32* %10, align 4
  %329 = zext i32 %328 to i64
  %330 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %331 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = icmp ult i64 %329, %332
  br i1 %333, label %334, label %400

334:                                              ; preds = %327
  %335 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %336 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %335, i32 0, i32 3
  %337 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %336, align 8
  %338 = load i32, i32* %10, align 4
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %337, i64 %339
  store %struct.ccp_cmd_queue* %340, %struct.ccp_cmd_queue** %5, align 8
  %341 = load i32, i32* @CMD5_Q_SIZE, align 4
  %342 = load i32, i32* @CMD5_Q_SHIFT, align 4
  %343 = shl i32 %341, %342
  %344 = xor i32 %343, -1
  %345 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %346 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = and i32 %347, %344
  store i32 %348, i32* %346, align 4
  %349 = load i32, i32* @QUEUE_SIZE_VAL, align 4
  %350 = load i32, i32* @CMD5_Q_SHIFT, align 4
  %351 = shl i32 %349, %350
  %352 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %353 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = or i32 %354, %351
  store i32 %355, i32* %353, align 4
  %356 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %357 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %356, i32 0, i32 11
  %358 = load i32, i32* %357, align 8
  %359 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %360 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %359, i32 0, i32 8
  store i32 %358, i32* %360, align 8
  %361 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %362 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %361, i32 0, i32 8
  %363 = load i32, i32* %362, align 8
  %364 = call i32 @low_address(i32 %363)
  store i32 %364, i32* %15, align 4
  %365 = load i32, i32* %15, align 4
  %366 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %367 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %366, i32 0, i32 10
  %368 = load i64, i64* %367, align 8
  %369 = call i32 @iowrite32(i32 %365, i64 %368)
  %370 = load i32, i32* %15, align 4
  %371 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %372 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %371, i32 0, i32 9
  %373 = load i64, i64* %372, align 8
  %374 = call i32 @iowrite32(i32 %370, i64 %373)
  %375 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %376 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %375, i32 0, i32 8
  %377 = load i32, i32* %376, align 8
  %378 = call i32 @high_address(i32 %377)
  store i32 %378, i32* %16, align 4
  %379 = load i32, i32* %16, align 4
  %380 = shl i32 %379, 16
  %381 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %382 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = or i32 %383, %380
  store i32 %384, i32* %382, align 4
  %385 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %386 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %389 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %388, i32 0, i32 7
  %390 = load i64, i64* %389, align 8
  %391 = call i32 @iowrite32(i32 %387, i64 %390)
  %392 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %393 = load i32, i32* %11, align 4
  %394 = call i32 @ccp_find_lsb_regions(%struct.ccp_cmd_queue* %392, i32 %393)
  %395 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %396 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %395, i32 0, i32 2
  store i32 -1, i32* %396, align 8
  br label %397

397:                                              ; preds = %334
  %398 = load i32, i32* %10, align 4
  %399 = add i32 %398, 1
  store i32 %399, i32* %10, align 4
  br label %327

400:                                              ; preds = %327
  %401 = load %struct.device*, %struct.device** %4, align 8
  %402 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %401, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %403 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %404 = call i32 @ccp_assign_lsbs(%struct.ccp_device* %403)
  store i32 %404, i32* %14, align 4
  %405 = load i32, i32* %14, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %411

407:                                              ; preds = %400
  %408 = load %struct.device*, %struct.device** %4, align 8
  %409 = load i32, i32* %14, align 4
  %410 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %408, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %409)
  br label %553

411:                                              ; preds = %400
  store i32 0, i32* %10, align 4
  br label %412

412:                                              ; preds = %448, %411
  %413 = load i32, i32* %10, align 4
  %414 = zext i32 %413 to i64
  %415 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %416 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %415, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = icmp ult i64 %414, %417
  br i1 %418, label %419, label %451

419:                                              ; preds = %412
  %420 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %421 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %420, i32 0, i32 3
  %422 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %421, align 8
  %423 = load i32, i32* %10, align 4
  %424 = zext i32 %423 to i64
  %425 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %422, i64 %424
  %426 = call i8* @ccp_lsb_alloc(%struct.ccp_cmd_queue* %425, i32 2)
  %427 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %428 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %427, i32 0, i32 3
  %429 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %428, align 8
  %430 = load i32, i32* %10, align 4
  %431 = zext i32 %430 to i64
  %432 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %429, i64 %431
  %433 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %432, i32 0, i32 6
  store i8* %426, i8** %433, align 8
  %434 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %435 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %434, i32 0, i32 3
  %436 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %435, align 8
  %437 = load i32, i32* %10, align 4
  %438 = zext i32 %437 to i64
  %439 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %436, i64 %438
  %440 = call i8* @ccp_lsb_alloc(%struct.ccp_cmd_queue* %439, i32 2)
  %441 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %442 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %441, i32 0, i32 3
  %443 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %442, align 8
  %444 = load i32, i32* %10, align 4
  %445 = zext i32 %444 to i64
  %446 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %443, i64 %445
  %447 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %446, i32 0, i32 5
  store i8* %440, i8** %447, align 8
  br label %448

448:                                              ; preds = %419
  %449 = load i32, i32* %10, align 4
  %450 = add i32 %449, 1
  store i32 %450, i32* %10, align 4
  br label %412

451:                                              ; preds = %412
  %452 = load %struct.device*, %struct.device** %4, align 8
  %453 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %452, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %454

454:                                              ; preds = %493, %451
  %455 = load i32, i32* %10, align 4
  %456 = zext i32 %455 to i64
  %457 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %458 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %457, i32 0, i32 0
  %459 = load i64, i64* %458, align 8
  %460 = icmp ult i64 %456, %459
  br i1 %460, label %461, label %496

461:                                              ; preds = %454
  %462 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %463 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %462, i32 0, i32 3
  %464 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %463, align 8
  %465 = load i32, i32* %10, align 4
  %466 = zext i32 %465 to i64
  %467 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %464, i64 %466
  store %struct.ccp_cmd_queue* %467, %struct.ccp_cmd_queue** %5, align 8
  %468 = load i32, i32* @ccp_cmd_queue_thread, align 4
  %469 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %470 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %471 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %470, i32 0, i32 2
  %472 = load i8*, i8** %471, align 8
  %473 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %474 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = call %struct.task_struct* @kthread_create(i32 %468, %struct.ccp_cmd_queue* %469, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* %472, i32 %475)
  store %struct.task_struct* %476, %struct.task_struct** %17, align 8
  %477 = load %struct.task_struct*, %struct.task_struct** %17, align 8
  %478 = call i64 @IS_ERR(%struct.task_struct* %477)
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %487

480:                                              ; preds = %461
  %481 = load %struct.device*, %struct.device** %4, align 8
  %482 = load %struct.task_struct*, %struct.task_struct** %17, align 8
  %483 = call i32 @PTR_ERR(%struct.task_struct* %482)
  %484 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %481, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i32 %483)
  %485 = load %struct.task_struct*, %struct.task_struct** %17, align 8
  %486 = call i32 @PTR_ERR(%struct.task_struct* %485)
  store i32 %486, i32* %14, align 4
  br label %520

487:                                              ; preds = %461
  %488 = load %struct.task_struct*, %struct.task_struct** %17, align 8
  %489 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %490 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %489, i32 0, i32 4
  store %struct.task_struct* %488, %struct.task_struct** %490, align 8
  %491 = load %struct.task_struct*, %struct.task_struct** %17, align 8
  %492 = call i32 @wake_up_process(%struct.task_struct* %491)
  br label %493

493:                                              ; preds = %487
  %494 = load i32, i32* %10, align 4
  %495 = add i32 %494, 1
  store i32 %495, i32* %10, align 4
  br label %454

496:                                              ; preds = %454
  %497 = load %struct.device*, %struct.device** %4, align 8
  %498 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %497, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  %499 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %500 = call i32 @ccp5_enable_queue_interrupts(%struct.ccp_device* %499)
  %501 = load %struct.device*, %struct.device** %4, align 8
  %502 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %501, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  %503 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %504 = call i32 @ccp_add_device(%struct.ccp_device* %503)
  %505 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %506 = call i32 @ccp_register_rng(%struct.ccp_device* %505)
  store i32 %506, i32* %14, align 4
  %507 = load i32, i32* %14, align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %510

509:                                              ; preds = %496
  br label %520

510:                                              ; preds = %496
  %511 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %512 = call i32 @ccp_dmaengine_register(%struct.ccp_device* %511)
  store i32 %512, i32* %14, align 4
  %513 = load i32, i32* %14, align 4
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %516

515:                                              ; preds = %510
  br label %517

516:                                              ; preds = %510
  store i32 0, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %582

517:                                              ; preds = %515
  %518 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %519 = call i32 @ccp_unregister_rng(%struct.ccp_device* %518)
  br label %520

520:                                              ; preds = %517, %509, %480
  store i32 0, i32* %10, align 4
  br label %521

521:                                              ; preds = %549, %520
  %522 = load i32, i32* %10, align 4
  %523 = zext i32 %522 to i64
  %524 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %525 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %524, i32 0, i32 0
  %526 = load i64, i64* %525, align 8
  %527 = icmp ult i64 %523, %526
  br i1 %527, label %528, label %552

528:                                              ; preds = %521
  %529 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %530 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %529, i32 0, i32 3
  %531 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %530, align 8
  %532 = load i32, i32* %10, align 4
  %533 = zext i32 %532 to i64
  %534 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %531, i64 %533
  %535 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %534, i32 0, i32 4
  %536 = load %struct.task_struct*, %struct.task_struct** %535, align 8
  %537 = icmp ne %struct.task_struct* %536, null
  br i1 %537, label %538, label %548

538:                                              ; preds = %528
  %539 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %540 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %539, i32 0, i32 3
  %541 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %540, align 8
  %542 = load i32, i32* %10, align 4
  %543 = zext i32 %542 to i64
  %544 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %541, i64 %543
  %545 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %544, i32 0, i32 4
  %546 = load %struct.task_struct*, %struct.task_struct** %545, align 8
  %547 = call i32 @kthread_stop(%struct.task_struct* %546)
  br label %548

548:                                              ; preds = %538, %528
  br label %549

549:                                              ; preds = %548
  %550 = load i32, i32* %10, align 4
  %551 = add i32 %550, 1
  store i32 %551, i32* %10, align 4
  br label %521

552:                                              ; preds = %521
  br label %553

553:                                              ; preds = %552, %407
  %554 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %555 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %554, i32 0, i32 4
  %556 = load i32, i32* %555, align 8
  %557 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %558 = call i32 @sp_free_ccp_irq(i32 %556, %struct.ccp_device* %557)
  br label %559

559:                                              ; preds = %553, %275, %214, %118, %67
  store i32 0, i32* %10, align 4
  br label %560

560:                                              ; preds = %577, %559
  %561 = load i32, i32* %10, align 4
  %562 = zext i32 %561 to i64
  %563 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %564 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %563, i32 0, i32 0
  %565 = load i64, i64* %564, align 8
  %566 = icmp ult i64 %562, %565
  br i1 %566, label %567, label %580

567:                                              ; preds = %560
  %568 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %569 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %568, i32 0, i32 3
  %570 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %569, align 8
  %571 = load i32, i32* %10, align 4
  %572 = zext i32 %571 to i64
  %573 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %570, i64 %572
  %574 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %573, i32 0, i32 3
  %575 = load %struct.dma_pool*, %struct.dma_pool** %574, align 8
  %576 = call i32 @dma_pool_destroy(%struct.dma_pool* %575)
  br label %577

577:                                              ; preds = %567
  %578 = load i32, i32* %10, align 4
  %579 = add i32 %578, 1
  store i32 %579, i32* %10, align 4
  br label %560

580:                                              ; preds = %560
  %581 = load i32, i32* %14, align 4
  store i32 %581, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %582

582:                                              ; preds = %580, %516
  %583 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %583)
  %584 = load i32, i32* %2, align 4
  ret i32 %584
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @ioread32(i64) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local %struct.dma_pool* @dma_pool_create(i8*, %struct.device*, i32, i32, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @BUILD_BUG_ON(i32) #2

declare dso_local i32 @Q_SIZE(i32) #2

declare dso_local i32 @dmam_alloc_coherent(%struct.device*, i32, i32*, i32) #2

declare dso_local i32 @init_waitqueue_head(i32*) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #2

declare dso_local i32 @dev_notice(%struct.device*, i8*) #2

declare dso_local i32 @ccp5_disable_queue_interrupts(%struct.ccp_device*) #2

declare dso_local i32 @iowrite32(i32, i64) #2

declare dso_local i32 @sp_request_ccp_irq(i32, i32, i8*, %struct.ccp_device*) #2

declare dso_local i32 @tasklet_init(i32*, i32, i64) #2

declare dso_local i32 @low_address(i32) #2

declare dso_local i32 @high_address(i32) #2

declare dso_local i32 @ccp_find_lsb_regions(%struct.ccp_cmd_queue*, i32) #2

declare dso_local i32 @ccp_assign_lsbs(%struct.ccp_device*) #2

declare dso_local i8* @ccp_lsb_alloc(%struct.ccp_cmd_queue*, i32) #2

declare dso_local %struct.task_struct* @kthread_create(i32, %struct.ccp_cmd_queue*, i8*, i8*, i32) #2

declare dso_local i64 @IS_ERR(%struct.task_struct*) #2

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #2

declare dso_local i32 @wake_up_process(%struct.task_struct*) #2

declare dso_local i32 @ccp5_enable_queue_interrupts(%struct.ccp_device*) #2

declare dso_local i32 @ccp_add_device(%struct.ccp_device*) #2

declare dso_local i32 @ccp_register_rng(%struct.ccp_device*) #2

declare dso_local i32 @ccp_dmaengine_register(%struct.ccp_device*) #2

declare dso_local i32 @ccp_unregister_rng(%struct.ccp_device*) #2

declare dso_local i32 @kthread_stop(%struct.task_struct*) #2

declare dso_local i32 @sp_free_ccp_irq(i32, %struct.ccp_device*) #2

declare dso_local i32 @dma_pool_destroy(%struct.dma_pool*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
