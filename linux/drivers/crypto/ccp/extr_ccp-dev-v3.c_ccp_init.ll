; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v3.c_ccp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v3.c_ccp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_device = type { i32, i64, i64, i8*, i32, i32, %struct.ccp_cmd_queue*, i32, i32, i64, i64, i32, %struct.device* }
%struct.ccp_cmd_queue = type { i32, i32, i32, %struct.dma_pool*, %struct.task_struct*, i64, i64, i32, i32, i8*, i8*, %struct.ccp_device* }
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
@KSB_START = common dso_local global i8* null, align 8
@CMD_Q_STATUS_BASE = common dso_local global i64 0, align 8
@CMD_Q_STATUS_INCR = common dso_local global i32 0, align 4
@CMD_Q_INT_STATUS_BASE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"queue #%u available\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"no command queues available\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"%u command queues available\0A\00", align 1
@IRQ_STATUS_REG = common dso_local global i64 0, align 8
@ccp_irq_handler = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"unable to allocate an IRQ\0A\00", align 1
@ccp_irq_bh = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Starting threads...\0A\00", align 1
@ccp_cmd_queue_thread = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"%s-q%u\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"error creating queue thread (%ld)\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Enabling interrupts...\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Registering device...\0A\00", align 1
@CMD_Q_CACHE_BASE = common dso_local global i64 0, align 8
@CMD_Q_CACHE_INC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccp_device*)* @ccp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_init(%struct.ccp_device* %0) #0 {
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
  %12 = alloca %struct.task_struct*, align 8
  %13 = alloca i32, align 4
  store %struct.ccp_device* %0, %struct.ccp_device** %3, align 8
  %14 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %15 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %14, i32 0, i32 12
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %4, align 8
  %17 = load i32, i32* @MAX_DMAPOOL_NAME_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %22 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %24 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %23, i32 0, i32 10
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @Q_MASK_REG, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @ioread32(i64 %27)
  store i32 %28, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %167, %1
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @MAX_HW_QUEUES, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %35 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %38 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br label %41

41:                                               ; preds = %33, %29
  %42 = phi i1 [ false, %29 ], [ %40, %33 ]
  br i1 %42, label %43, label %170

43:                                               ; preds = %41
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = shl i32 1, %45
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  br label %167

50:                                               ; preds = %43
  %51 = trunc i64 %18 to i32
  %52 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %53 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %52, i32 0, i32 3
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @snprintf(i8* %20, i32 %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %54, i32 %55)
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load i32, i32* @CCP_DMAPOOL_MAX_SIZE, align 4
  %59 = load i32, i32* @CCP_DMAPOOL_ALIGN, align 4
  %60 = call %struct.dma_pool* @dma_pool_create(i8* %20, %struct.device* %57, i32 %58, i32 %59, i32 0)
  store %struct.dma_pool* %60, %struct.dma_pool** %6, align 8
  %61 = load %struct.dma_pool*, %struct.dma_pool** %6, align 8
  %62 = icmp ne %struct.dma_pool* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %50
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %11, align 4
  br label %356

68:                                               ; preds = %50
  %69 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %70 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %69, i32 0, i32 6
  %71 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %70, align 8
  %72 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %73 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %71, i64 %74
  store %struct.ccp_cmd_queue* %75, %struct.ccp_cmd_queue** %5, align 8
  %76 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %77 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %77, align 8
  %80 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %81 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %82 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %81, i32 0, i32 11
  store %struct.ccp_device* %80, %struct.ccp_device** %82, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %85 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.dma_pool*, %struct.dma_pool** %6, align 8
  %87 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %88 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %87, i32 0, i32 3
  store %struct.dma_pool* %86, %struct.dma_pool** %88, align 8
  %89 = load i8*, i8** @KSB_START, align 8
  %90 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %91 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %90, i32 0, i32 11
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr i8, i8* %89, i64 %94
  %96 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %97 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %96, i32 0, i32 10
  store i8* %95, i8** %97, align 8
  %98 = load i8*, i8** @KSB_START, align 8
  %99 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %100 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %99, i32 0, i32 11
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr i8, i8* %98, i64 %103
  %105 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %106 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %105, i32 0, i32 9
  store i8* %104, i8** %106, align 8
  %107 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %108 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = sub nsw i32 %109, 2
  store i32 %110, i32* %108, align 8
  %111 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %112 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %111, i32 0, i32 10
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @CMD_Q_STATUS_BASE, align 8
  %115 = add nsw i64 %113, %114
  %116 = load i32, i32* @CMD_Q_STATUS_INCR, align 4
  %117 = load i32, i32* %10, align 4
  %118 = mul i32 %116, %117
  %119 = zext i32 %118 to i64
  %120 = add nsw i64 %115, %119
  %121 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %122 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %121, i32 0, i32 5
  store i64 %120, i64* %122, align 8
  %123 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %124 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %123, i32 0, i32 10
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @CMD_Q_INT_STATUS_BASE, align 8
  %127 = add nsw i64 %125, %126
  %128 = load i32, i32* @CMD_Q_STATUS_INCR, align 4
  %129 = load i32, i32* %10, align 4
  %130 = mul i32 %128, %129
  %131 = zext i32 %130 to i64
  %132 = add nsw i64 %127, %131
  %133 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %134 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %133, i32 0, i32 6
  store i64 %132, i64* %134, align 8
  %135 = load i32, i32* %10, align 4
  %136 = mul i32 %135, 2
  %137 = shl i32 1, %136
  %138 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %139 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %10, align 4
  %141 = mul i32 %140, 2
  %142 = add i32 %141, 1
  %143 = shl i32 1, %142
  %144 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %145 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  %146 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %147 = call i32 @ccp_get_free_slots(%struct.ccp_cmd_queue* %146)
  %148 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %149 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %148, i32 0, i32 8
  store i32 %147, i32* %149, align 4
  %150 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %151 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %150, i32 0, i32 7
  %152 = call i32 @init_waitqueue_head(i32* %151)
  %153 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %154 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %157 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %155, %158
  %160 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %161 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  %164 = load %struct.device*, %struct.device** %4, align 8
  %165 = load i32, i32* %10, align 4
  %166 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %164, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %165)
  br label %167

167:                                              ; preds = %68, %49
  %168 = load i32, i32* %10, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %10, align 4
  br label %29

170:                                              ; preds = %41
  %171 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %172 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load %struct.device*, %struct.device** %4, align 8
  %177 = call i32 (%struct.device*, i8*, ...) @dev_notice(%struct.device* %176, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %178 = load i32, i32* @EIO, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %11, align 4
  br label %356

180:                                              ; preds = %170
  %181 = load %struct.device*, %struct.device** %4, align 8
  %182 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %183 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = call i32 (%struct.device*, i8*, ...) @dev_notice(%struct.device* %181, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %184)
  %186 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %187 = call i32 @ccp_disable_queue_interrupts(%struct.ccp_device* %186)
  store i32 0, i32* %10, align 4
  br label %188

188:                                              ; preds = %210, %180
  %189 = load i32, i32* %10, align 4
  %190 = zext i32 %189 to i64
  %191 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %192 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = icmp ult i64 %190, %193
  br i1 %194, label %195, label %213

195:                                              ; preds = %188
  %196 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %197 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %196, i32 0, i32 6
  %198 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %197, align 8
  %199 = load i32, i32* %10, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %198, i64 %200
  store %struct.ccp_cmd_queue* %201, %struct.ccp_cmd_queue** %5, align 8
  %202 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %203 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %202, i32 0, i32 6
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @ioread32(i64 %204)
  %206 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %207 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %206, i32 0, i32 5
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @ioread32(i64 %208)
  br label %210

210:                                              ; preds = %195
  %211 = load i32, i32* %10, align 4
  %212 = add i32 %211, 1
  store i32 %212, i32* %10, align 4
  br label %188

213:                                              ; preds = %188
  %214 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %215 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %218 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %217, i32 0, i32 10
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @IRQ_STATUS_REG, align 8
  %221 = add nsw i64 %219, %220
  %222 = call i32 @iowrite32(i32 %216, i64 %221)
  %223 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %224 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %223, i32 0, i32 7
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @ccp_irq_handler, align 4
  %227 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %228 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %227, i32 0, i32 3
  %229 = load i8*, i8** %228, align 8
  %230 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %231 = call i32 @sp_request_ccp_irq(i32 %225, i32 %226, i8* %229, %struct.ccp_device* %230)
  store i32 %231, i32* %11, align 4
  %232 = load i32, i32* %11, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %213
  %235 = load %struct.device*, %struct.device** %4, align 8
  %236 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %235, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %356

237:                                              ; preds = %213
  %238 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %239 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %238, i32 0, i32 9
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %237
  %243 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %244 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %243, i32 0, i32 8
  %245 = load i32, i32* @ccp_irq_bh, align 4
  %246 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %247 = ptrtoint %struct.ccp_device* %246 to i64
  %248 = call i32 @tasklet_init(i32* %244, i32 %245, i64 %247)
  br label %249

249:                                              ; preds = %242, %237
  %250 = load %struct.device*, %struct.device** %4, align 8
  %251 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %250, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %252

252:                                              ; preds = %291, %249
  %253 = load i32, i32* %10, align 4
  %254 = zext i32 %253 to i64
  %255 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %256 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = icmp ult i64 %254, %257
  br i1 %258, label %259, label %294

259:                                              ; preds = %252
  %260 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %261 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %260, i32 0, i32 6
  %262 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %261, align 8
  %263 = load i32, i32* %10, align 4
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %262, i64 %264
  store %struct.ccp_cmd_queue* %265, %struct.ccp_cmd_queue** %5, align 8
  %266 = load i32, i32* @ccp_cmd_queue_thread, align 4
  %267 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %268 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %269 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %268, i32 0, i32 3
  %270 = load i8*, i8** %269, align 8
  %271 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %272 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call %struct.task_struct* @kthread_create(i32 %266, %struct.ccp_cmd_queue* %267, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %270, i32 %273)
  store %struct.task_struct* %274, %struct.task_struct** %12, align 8
  %275 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %276 = call i64 @IS_ERR(%struct.task_struct* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %285

278:                                              ; preds = %259
  %279 = load %struct.device*, %struct.device** %4, align 8
  %280 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %281 = call i32 @PTR_ERR(%struct.task_struct* %280)
  %282 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %279, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %281)
  %283 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %284 = call i32 @PTR_ERR(%struct.task_struct* %283)
  store i32 %284, i32* %11, align 4
  br label %318

285:                                              ; preds = %259
  %286 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %287 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %5, align 8
  %288 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %287, i32 0, i32 4
  store %struct.task_struct* %286, %struct.task_struct** %288, align 8
  %289 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %290 = call i32 @wake_up_process(%struct.task_struct* %289)
  br label %291

291:                                              ; preds = %285
  %292 = load i32, i32* %10, align 4
  %293 = add i32 %292, 1
  store i32 %293, i32* %10, align 4
  br label %252

294:                                              ; preds = %252
  %295 = load %struct.device*, %struct.device** %4, align 8
  %296 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %295, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %297 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %298 = call i32 @ccp_enable_queue_interrupts(%struct.ccp_device* %297)
  %299 = load %struct.device*, %struct.device** %4, align 8
  %300 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %299, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %301 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %302 = call i32 @ccp_add_device(%struct.ccp_device* %301)
  %303 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %304 = call i32 @ccp_register_rng(%struct.ccp_device* %303)
  store i32 %304, i32* %11, align 4
  %305 = load i32, i32* %11, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %294
  br label %318

308:                                              ; preds = %294
  %309 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %310 = call i32 @ccp_dmaengine_register(%struct.ccp_device* %309)
  store i32 %310, i32* %11, align 4
  %311 = load i32, i32* %11, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %308
  br label %315

314:                                              ; preds = %308
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %379

315:                                              ; preds = %313
  %316 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %317 = call i32 @ccp_unregister_rng(%struct.ccp_device* %316)
  br label %318

318:                                              ; preds = %315, %307, %278
  store i32 0, i32* %10, align 4
  br label %319

319:                                              ; preds = %347, %318
  %320 = load i32, i32* %10, align 4
  %321 = zext i32 %320 to i64
  %322 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %323 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = icmp ult i64 %321, %324
  br i1 %325, label %326, label %350

326:                                              ; preds = %319
  %327 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %328 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %327, i32 0, i32 6
  %329 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %328, align 8
  %330 = load i32, i32* %10, align 4
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %329, i64 %331
  %333 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %332, i32 0, i32 4
  %334 = load %struct.task_struct*, %struct.task_struct** %333, align 8
  %335 = icmp ne %struct.task_struct* %334, null
  br i1 %335, label %336, label %346

336:                                              ; preds = %326
  %337 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %338 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %337, i32 0, i32 6
  %339 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %338, align 8
  %340 = load i32, i32* %10, align 4
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %339, i64 %341
  %343 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %342, i32 0, i32 4
  %344 = load %struct.task_struct*, %struct.task_struct** %343, align 8
  %345 = call i32 @kthread_stop(%struct.task_struct* %344)
  br label %346

346:                                              ; preds = %336, %326
  br label %347

347:                                              ; preds = %346
  %348 = load i32, i32* %10, align 4
  %349 = add i32 %348, 1
  store i32 %349, i32* %10, align 4
  br label %319

350:                                              ; preds = %319
  %351 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %352 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %351, i32 0, i32 7
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %355 = call i32 @sp_free_ccp_irq(i32 %353, %struct.ccp_device* %354)
  br label %356

356:                                              ; preds = %350, %234, %175, %63
  store i32 0, i32* %10, align 4
  br label %357

357:                                              ; preds = %374, %356
  %358 = load i32, i32* %10, align 4
  %359 = zext i32 %358 to i64
  %360 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %361 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %360, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = icmp ult i64 %359, %362
  br i1 %363, label %364, label %377

364:                                              ; preds = %357
  %365 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %366 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %365, i32 0, i32 6
  %367 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %366, align 8
  %368 = load i32, i32* %10, align 4
  %369 = zext i32 %368 to i64
  %370 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %367, i64 %369
  %371 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %370, i32 0, i32 3
  %372 = load %struct.dma_pool*, %struct.dma_pool** %371, align 8
  %373 = call i32 @dma_pool_destroy(%struct.dma_pool* %372)
  br label %374

374:                                              ; preds = %364
  %375 = load i32, i32* %10, align 4
  %376 = add i32 %375, 1
  store i32 %376, i32* %10, align 4
  br label %357

377:                                              ; preds = %357
  %378 = load i32, i32* %11, align 4
  store i32 %378, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %379

379:                                              ; preds = %377, %314
  %380 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %380)
  %381 = load i32, i32* %2, align 4
  ret i32 %381
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ioread32(i64) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local %struct.dma_pool* @dma_pool_create(i8*, %struct.device*, i32, i32, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local i32 @ccp_get_free_slots(%struct.ccp_cmd_queue*) #2

declare dso_local i32 @init_waitqueue_head(i32*) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #2

declare dso_local i32 @dev_notice(%struct.device*, i8*, ...) #2

declare dso_local i32 @ccp_disable_queue_interrupts(%struct.ccp_device*) #2

declare dso_local i32 @iowrite32(i32, i64) #2

declare dso_local i32 @sp_request_ccp_irq(i32, i32, i8*, %struct.ccp_device*) #2

declare dso_local i32 @tasklet_init(i32*, i32, i64) #2

declare dso_local %struct.task_struct* @kthread_create(i32, %struct.ccp_cmd_queue*, i8*, i8*, i32) #2

declare dso_local i64 @IS_ERR(%struct.task_struct*) #2

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #2

declare dso_local i32 @wake_up_process(%struct.task_struct*) #2

declare dso_local i32 @ccp_enable_queue_interrupts(%struct.ccp_device*) #2

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
