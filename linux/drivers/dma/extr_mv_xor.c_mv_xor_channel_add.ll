; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor.c_mv_xor_channel_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor.c_mv_xor_channel_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_xor_chan = type { i32, i32, i64, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, %struct.mv_xor_device*, %struct.dma_device }
%struct.TYPE_2__ = type { i32, %struct.dma_device* }
%struct.dma_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.mv_xor_device = type { i64, i32, i32 }
%struct.platform_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XOR_ORION = common dso_local global i64 0, align 8
@XOR_MODE_IN_REG = common dso_local global i64 0, align 8
@XOR_MODE_IN_DESC = common dso_local global i64 0, align 8
@MV_XOR_MIN_BYTE_COUNT = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MV_XOR_POOL_SIZE = common dso_local global i32 0, align 4
@mv_xor_alloc_chan_resources = common dso_local global i32 0, align 4
@mv_xor_free_chan_resources = common dso_local global i32 0, align 4
@mv_xor_status = common dso_local global i32 0, align 4
@mv_xor_issue_pending = common dso_local global i32 0, align 4
@DMA_INTERRUPT = common dso_local global i32 0, align 4
@mv_xor_prep_dma_interrupt = common dso_local global i32 0, align 4
@DMA_MEMCPY = common dso_local global i32 0, align 4
@mv_xor_prep_dma_memcpy = common dso_local global i32 0, align 4
@DMA_XOR = common dso_local global i32 0, align 4
@mv_xor_prep_dma_xor = common dso_local global i32 0, align 4
@mv_xor_tasklet = common dso_local global i32 0, align 4
@mv_xor_interrupt_handler = common dso_local global i32 0, align 4
@XOR_OPERATION_MODE_IN_DESC = common dso_local global i32 0, align 4
@XOR_OPERATION_MODE_XOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"memcpy self test returned %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"xor self test returned %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Marvell XOR (%s): ( %s%s%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Descriptor Mode\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Registers Mode\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"xor \00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"cpy \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"intr \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mv_xor_chan* (%struct.mv_xor_device*, %struct.platform_device*, i32, i32, i32)* @mv_xor_channel_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mv_xor_chan* @mv_xor_channel_add(%struct.mv_xor_device* %0, %struct.platform_device* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mv_xor_chan*, align 8
  %7 = alloca %struct.mv_xor_device*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mv_xor_chan*, align 8
  %14 = alloca %struct.dma_device*, align 8
  store %struct.mv_xor_device* %0, %struct.mv_xor_device** %7, align 8
  store %struct.platform_device* %1, %struct.platform_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mv_xor_chan* @devm_kzalloc(i32* %16, i32 160, i32 %17)
  store %struct.mv_xor_chan* %18, %struct.mv_xor_chan** %13, align 8
  %19 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %20 = icmp ne %struct.mv_xor_chan* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.mv_xor_chan* @ERR_PTR(i32 %23)
  store %struct.mv_xor_chan* %24, %struct.mv_xor_chan** %6, align 8
  br label %318

25:                                               ; preds = %5
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %28 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %31 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.mv_xor_device*, %struct.mv_xor_device** %7, align 8
  %33 = getelementptr inbounds %struct.mv_xor_device, %struct.mv_xor_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @XOR_ORION, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %25
  %38 = load i64, i64* @XOR_MODE_IN_REG, align 8
  %39 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %40 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  br label %45

41:                                               ; preds = %25
  %42 = load i64, i64* @XOR_MODE_IN_DESC, align 8
  %43 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %44 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %47 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %46, i32 0, i32 19
  store %struct.dma_device* %47, %struct.dma_device** %14, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %51 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %50, i32 0, i32 10
  store i32* %49, i32** %51, align 8
  %52 = load %struct.mv_xor_device*, %struct.mv_xor_device** %7, align 8
  %53 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %54 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %53, i32 0, i32 18
  store %struct.mv_xor_device* %52, %struct.mv_xor_device** %54, align 8
  %55 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %56 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %55, i32 0, i32 10
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %59 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %58, i32 0, i32 16
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @MV_XOR_MIN_BYTE_COUNT, align 4
  %62 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %63 = call i8* @dma_map_single(i32* %57, i32 %60, i32 %61, i32 %62)
  %64 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %65 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %64, i32 0, i32 17
  store i8* %63, i8** %65, align 8
  %66 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %67 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %66, i32 0, i32 10
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %70 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %69, i32 0, i32 14
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @MV_XOR_MIN_BYTE_COUNT, align 4
  %73 = load i32, i32* @DMA_TO_DEVICE, align 4
  %74 = call i8* @dma_map_single(i32* %68, i32 %71, i32 %72, i32 %73)
  %75 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %76 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %75, i32 0, i32 15
  store i8* %74, i8** %76, align 8
  %77 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load i32, i32* @MV_XOR_POOL_SIZE, align 4
  %80 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %81 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %80, i32 0, i32 3
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i32 @dma_alloc_wc(i32* %78, i32 %79, i32* %81, i32 %82)
  %84 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %85 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %87 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %45
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  %93 = call %struct.mv_xor_chan* @ERR_PTR(i32 %92)
  store %struct.mv_xor_chan* %93, %struct.mv_xor_chan** %6, align 8
  br label %318

94:                                               ; preds = %45
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %97 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %99 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %98, i32 0, i32 2
  %100 = call i32 @INIT_LIST_HEAD(i32* %99)
  %101 = load i32, i32* @mv_xor_alloc_chan_resources, align 4
  %102 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %103 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %102, i32 0, i32 9
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @mv_xor_free_chan_resources, align 4
  %105 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %106 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %105, i32 0, i32 8
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* @mv_xor_status, align 4
  %108 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %109 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %108, i32 0, i32 7
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @mv_xor_issue_pending, align 4
  %111 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %112 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* @DMA_INTERRUPT, align 4
  %114 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %115 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @dma_has_cap(i32 %113, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %94
  %120 = load i32, i32* @mv_xor_prep_dma_interrupt, align 4
  %121 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %122 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %119, %94
  %124 = load i32, i32* @DMA_MEMCPY, align 4
  %125 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %126 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @dma_has_cap(i32 %124, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %123
  %131 = load i32, i32* @mv_xor_prep_dma_memcpy, align 4
  %132 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %133 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 8
  br label %134

134:                                              ; preds = %130, %123
  %135 = load i32, i32* @DMA_XOR, align 4
  %136 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %137 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @dma_has_cap(i32 %135, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %134
  %142 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %143 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %142, i32 0, i32 0
  store i32 8, i32* %143, align 8
  %144 = load i32, i32* @mv_xor_prep_dma_xor, align 4
  %145 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %146 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %141, %134
  %148 = load %struct.mv_xor_device*, %struct.mv_xor_device** %7, align 8
  %149 = getelementptr inbounds %struct.mv_xor_device, %struct.mv_xor_device* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %152 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %151, i32 0, i32 13
  store i32 %150, i32* %152, align 4
  %153 = load %struct.mv_xor_device*, %struct.mv_xor_device** %7, align 8
  %154 = getelementptr inbounds %struct.mv_xor_device, %struct.mv_xor_device* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %157 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %156, i32 0, i32 12
  store i32 %155, i32* %157, align 8
  %158 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %159 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %158, i32 0, i32 11
  %160 = load i32, i32* @mv_xor_tasklet, align 4
  %161 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %162 = ptrtoint %struct.mv_xor_chan* %161 to i64
  %163 = call i32 @tasklet_init(i32* %159, i32 %160, i64 %162)
  %164 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %165 = call i32 @mv_chan_clear_err_status(%struct.mv_xor_chan* %164)
  %166 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %167 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @mv_xor_interrupt_handler, align 4
  %170 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = call i32 @dev_name(i32* %171)
  %173 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %174 = call i32 @request_irq(i32 %168, i32 %169, i32 0, i32 %172, %struct.mv_xor_chan* %173)
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* %12, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %147
  br label %305

178:                                              ; preds = %147
  %179 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %180 = call i32 @mv_chan_unmask_interrupts(%struct.mv_xor_chan* %179)
  %181 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %182 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @XOR_MODE_IN_DESC, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %178
  %187 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %188 = load i32, i32* @XOR_OPERATION_MODE_IN_DESC, align 4
  %189 = call i32 @mv_chan_set_mode(%struct.mv_xor_chan* %187, i32 %188)
  br label %194

190:                                              ; preds = %178
  %191 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %192 = load i32, i32* @XOR_OPERATION_MODE_XOR, align 4
  %193 = call i32 @mv_chan_set_mode(%struct.mv_xor_chan* %191, i32 %192)
  br label %194

194:                                              ; preds = %190, %186
  %195 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %196 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %195, i32 0, i32 10
  %197 = call i32 @spin_lock_init(i32* %196)
  %198 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %199 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %198, i32 0, i32 9
  %200 = call i32 @INIT_LIST_HEAD(i32* %199)
  %201 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %202 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %201, i32 0, i32 8
  %203 = call i32 @INIT_LIST_HEAD(i32* %202)
  %204 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %205 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %204, i32 0, i32 7
  %206 = call i32 @INIT_LIST_HEAD(i32* %205)
  %207 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %208 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %207, i32 0, i32 6
  %209 = call i32 @INIT_LIST_HEAD(i32* %208)
  %210 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %211 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %212 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %211, i32 0, i32 5
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 1
  store %struct.dma_device* %210, %struct.dma_device** %213, align 8
  %214 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %215 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %214, i32 0, i32 5
  %216 = call i32 @dma_cookie_init(%struct.TYPE_2__* %215)
  %217 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %218 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %217, i32 0, i32 5
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 0
  %220 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %221 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %220, i32 0, i32 2
  %222 = call i32 @list_add_tail(i32* %219, i32* %221)
  %223 = load i32, i32* @DMA_MEMCPY, align 4
  %224 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %225 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i64 @dma_has_cap(i32 %223, i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %240

229:                                              ; preds = %194
  %230 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %231 = call i32 @mv_chan_memcpy_self_test(%struct.mv_xor_chan* %230)
  store i32 %231, i32* %12, align 4
  %232 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %233 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %232, i32 0, i32 0
  %234 = load i32, i32* %12, align 4
  %235 = call i32 @dev_dbg(i32* %233, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %234)
  %236 = load i32, i32* %12, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %229
  br label %299

239:                                              ; preds = %229
  br label %240

240:                                              ; preds = %239, %194
  %241 = load i32, i32* @DMA_XOR, align 4
  %242 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %243 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i64 @dma_has_cap(i32 %241, i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %258

247:                                              ; preds = %240
  %248 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %249 = call i32 @mv_chan_xor_self_test(%struct.mv_xor_chan* %248)
  store i32 %249, i32* %12, align 4
  %250 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %251 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %250, i32 0, i32 0
  %252 = load i32, i32* %12, align 4
  %253 = call i32 @dev_dbg(i32* %251, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %252)
  %254 = load i32, i32* %12, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %247
  br label %299

257:                                              ; preds = %247
  br label %258

258:                                              ; preds = %257, %240
  %259 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %260 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %259, i32 0, i32 0
  %261 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %262 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  %265 = zext i1 %264 to i64
  %266 = select i1 %264, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)
  %267 = load i32, i32* @DMA_XOR, align 4
  %268 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %269 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = call i64 @dma_has_cap(i32 %267, i32 %270)
  %272 = icmp ne i64 %271, 0
  %273 = zext i1 %272 to i64
  %274 = select i1 %272, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %275 = load i32, i32* @DMA_MEMCPY, align 4
  %276 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %277 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = call i64 @dma_has_cap(i32 %275, i32 %278)
  %280 = icmp ne i64 %279, 0
  %281 = zext i1 %280 to i64
  %282 = select i1 %280, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %283 = load i32, i32* @DMA_INTERRUPT, align 4
  %284 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %285 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = call i64 @dma_has_cap(i32 %283, i32 %286)
  %288 = icmp ne i64 %287, 0
  %289 = zext i1 %288 to i64
  %290 = select i1 %288, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %291 = call i32 @dev_info(i32* %260, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %266, i8* %274, i8* %282, i8* %290)
  %292 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %293 = call i32 @dma_async_device_register(%struct.dma_device* %292)
  store i32 %293, i32* %12, align 4
  %294 = load i32, i32* %12, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %258
  br label %299

297:                                              ; preds = %258
  %298 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  store %struct.mv_xor_chan* %298, %struct.mv_xor_chan** %6, align 8
  br label %318

299:                                              ; preds = %296, %256, %238
  %300 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %301 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %304 = call i32 @free_irq(i32 %302, %struct.mv_xor_chan* %303)
  br label %305

305:                                              ; preds = %299, %177
  %306 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %307 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %306, i32 0, i32 0
  %308 = load i32, i32* @MV_XOR_POOL_SIZE, align 4
  %309 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %310 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %13, align 8
  %313 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 8
  %315 = call i32 @dma_free_coherent(i32* %307, i32 %308, i32 %311, i32 %314)
  %316 = load i32, i32* %12, align 4
  %317 = call %struct.mv_xor_chan* @ERR_PTR(i32 %316)
  store %struct.mv_xor_chan* %317, %struct.mv_xor_chan** %6, align 8
  br label %318

318:                                              ; preds = %305, %297, %90, %21
  %319 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %6, align 8
  ret %struct.mv_xor_chan* %319
}

declare dso_local %struct.mv_xor_chan* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.mv_xor_chan* @ERR_PTR(i32) #1

declare dso_local i8* @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_alloc_wc(i32*, i32, i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @dma_has_cap(i32, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @mv_chan_clear_err_status(%struct.mv_xor_chan*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.mv_xor_chan*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @mv_chan_unmask_interrupts(%struct.mv_xor_chan*) #1

declare dso_local i32 @mv_chan_set_mode(%struct.mv_xor_chan*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dma_cookie_init(%struct.TYPE_2__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mv_chan_memcpy_self_test(%struct.mv_xor_chan*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @mv_chan_xor_self_test(%struct.mv_xor_chan*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @dma_async_device_register(%struct.dma_device*) #1

declare dso_local i32 @free_irq(i32, %struct.mv_xor_chan*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
