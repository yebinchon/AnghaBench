; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_dsi.c_vc4_dsi_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_dsi.c_vc4_dsi_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.drm_device = type { i32 }
%struct.vc4_dev = type { %struct.vc4_dsi* }
%struct.vc4_dsi = type { i64, %struct.TYPE_7__, %struct.TYPE_8__*, i8*, i8*, i8*, i8*, i64, i32, i32, i8*, i32, i8* }
%struct.TYPE_7__ = type { i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32* }
%struct.vc4_dsi_encoder = type { %struct.TYPE_6__, %struct.vc4_dsi* }
%struct.TYPE_6__ = type { %struct.TYPE_8__, i32 }
%struct.drm_panel = type { i32 }
%struct.of_device_id = type { i64 }

@vc4_dsi_dt_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VC4_ENCODER_TYPE_DSI1 = common dso_local global i32 0, align 4
@dsi0_regs = common dso_local global i8* null, align 8
@dsi1_regs = common dso_local global i8* null, align 8
@ID = common dso_local global i32 0, align 4
@DSI_ID_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Port returned 0x%08x for ID instead of 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to get DMA memory\0A\00", align 1
@DMA_MEMCPY = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to get DMA channel: %d\0A\00", align 1
@INT_EN = common dso_local global i32 0, align 4
@DSI1_INTERRUPTS_ALWAYS_ENABLED = common dso_local global i64 0, align 8
@INT_STAT = common dso_local global i32 0, align 4
@vc4_dsi_irq_defer_to_thread_handler = common dso_local global i32 0, align 4
@vc4_dsi_irq_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"vc4 dsi\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to get interrupt: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to get escape clock: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Failed to get phy clock: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"pixel\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Failed to get pixel clock: %d\0A\00", align 1
@DRM_MODE_CONNECTOR_DSI = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"Failed to set esc clock: %d\0A\00", align 1
@vc4_dsi_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_DSI = common dso_local global i32 0, align 4
@vc4_dsi_encoder_helper_funcs = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"bridge attach failed: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"dsi0_regs\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"dsi1_regs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @vc4_dsi_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_dsi_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.vc4_dev*, align 8
  %11 = alloca %struct.vc4_dsi*, align 8
  %12 = alloca %struct.vc4_dsi_encoder*, align 8
  %13 = alloca %struct.drm_panel*, align 8
  %14 = alloca %struct.of_device_id*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.platform_device* @to_platform_device(%struct.device* %17)
  store %struct.platform_device* %18, %struct.platform_device** %8, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call i8* @dev_get_drvdata(%struct.device* %19)
  %21 = bitcast i8* %20 to %struct.drm_device*
  store %struct.drm_device* %21, %struct.drm_device** %9, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %23 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %22)
  store %struct.vc4_dev* %23, %struct.vc4_dev** %10, align 8
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = call i8* @dev_get_drvdata(%struct.device* %24)
  %26 = bitcast i8* %25 to %struct.vc4_dsi*
  store %struct.vc4_dsi* %26, %struct.vc4_dsi** %11, align 8
  %27 = load i32, i32* @vc4_dsi_dt_match, align 4
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = call %struct.of_device_id* @of_match_device(i32 %27, %struct.device* %28)
  store %struct.of_device_id* %29, %struct.of_device_id** %14, align 8
  %30 = load %struct.of_device_id*, %struct.of_device_id** %14, align 8
  %31 = icmp ne %struct.of_device_id* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %411

35:                                               ; preds = %3
  %36 = load %struct.of_device_id*, %struct.of_device_id** %14, align 8
  %37 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %40 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.vc4_dsi_encoder* @devm_kzalloc(%struct.device* %41, i32 24, i32 %42)
  store %struct.vc4_dsi_encoder* %43, %struct.vc4_dsi_encoder** %12, align 8
  %44 = load %struct.vc4_dsi_encoder*, %struct.vc4_dsi_encoder** %12, align 8
  %45 = icmp ne %struct.vc4_dsi_encoder* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %35
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %411

49:                                               ; preds = %35
  %50 = load i32, i32* @VC4_ENCODER_TYPE_DSI1, align 4
  %51 = load %struct.vc4_dsi_encoder*, %struct.vc4_dsi_encoder** %12, align 8
  %52 = getelementptr inbounds %struct.vc4_dsi_encoder, %struct.vc4_dsi_encoder* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 8
  %54 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %55 = load %struct.vc4_dsi_encoder*, %struct.vc4_dsi_encoder** %12, align 8
  %56 = getelementptr inbounds %struct.vc4_dsi_encoder, %struct.vc4_dsi_encoder* %55, i32 0, i32 1
  store %struct.vc4_dsi* %54, %struct.vc4_dsi** %56, align 8
  %57 = load %struct.vc4_dsi_encoder*, %struct.vc4_dsi_encoder** %12, align 8
  %58 = getelementptr inbounds %struct.vc4_dsi_encoder, %struct.vc4_dsi_encoder* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %61 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %60, i32 0, i32 2
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %61, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %63 = call i8* @vc4_ioremap_regs(%struct.platform_device* %62, i32 0)
  %64 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %65 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %64, i32 0, i32 12
  store i8* %63, i8** %65, align 8
  %66 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %67 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %66, i32 0, i32 12
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @IS_ERR(i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %49
  %72 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %73 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %72, i32 0, i32 12
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @PTR_ERR(i8* %74)
  store i32 %75, i32* %4, align 4
  br label %411

76:                                               ; preds = %49
  %77 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %78 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %77, i32 0, i32 12
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %81 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  store i8* %79, i8** %82, align 8
  %83 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %84 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %76
  %88 = load i8*, i8** @dsi0_regs, align 8
  %89 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %90 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i8* %88, i8** %91, align 8
  %92 = load i8*, i8** @dsi0_regs, align 8
  %93 = call i8* @ARRAY_SIZE(i8* %92)
  %94 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %95 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store i8* %93, i8** %96, align 8
  br label %107

97:                                               ; preds = %76
  %98 = load i8*, i8** @dsi1_regs, align 8
  %99 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %100 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  store i8* %98, i8** %101, align 8
  %102 = load i8*, i8** @dsi1_regs, align 8
  %103 = call i8* @ARRAY_SIZE(i8* %102)
  %104 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %105 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  store i8* %103, i8** %106, align 8
  br label %107

107:                                              ; preds = %97, %87
  %108 = load i32, i32* @ID, align 4
  %109 = call i64 @DSI_PORT_READ(i32 %108)
  %110 = load i64, i64* @DSI_ID_VALUE, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %107
  %113 = load %struct.device*, %struct.device** %5, align 8
  %114 = load i32, i32* @ID, align 4
  %115 = call i64 @DSI_PORT_READ(i32 %114)
  %116 = trunc i64 %115 to i32
  %117 = load i64, i64* @DSI_ID_VALUE, align 8
  %118 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %113, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %116, i64 %117)
  %119 = load i32, i32* @ENODEV, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %4, align 4
  br label %411

121:                                              ; preds = %107
  %122 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %123 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %124, 1
  br i1 %125, label %126, label %178

126:                                              ; preds = %121
  %127 = load %struct.device*, %struct.device** %5, align 8
  %128 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %129 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %128, i32 0, i32 11
  %130 = load i32, i32* @GFP_KERNEL, align 4
  %131 = call i64 @dma_alloc_coherent(%struct.device* %127, i32 4, i32* %129, i32 %130)
  %132 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %133 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %132, i32 0, i32 7
  store i64 %131, i64* %133, align 8
  %134 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %135 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %134, i32 0, i32 7
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %126
  %139 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %4, align 4
  br label %411

142:                                              ; preds = %126
  %143 = load i32, i32* %15, align 4
  %144 = call i32 @dma_cap_zero(i32 %143)
  %145 = load i32, i32* @DMA_MEMCPY, align 4
  %146 = load i32, i32* %15, align 4
  %147 = call i32 @dma_cap_set(i32 %145, i32 %146)
  %148 = call i8* @dma_request_chan_by_mask(i32* %15)
  %149 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %150 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %149, i32 0, i32 10
  store i8* %148, i8** %150, align 8
  %151 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %152 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %151, i32 0, i32 10
  %153 = load i8*, i8** %152, align 8
  %154 = call i64 @IS_ERR(i8* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %170

156:                                              ; preds = %142
  %157 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %158 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %157, i32 0, i32 10
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @PTR_ERR(i8* %159)
  store i32 %160, i32* %16, align 4
  %161 = load i32, i32* %16, align 4
  %162 = load i32, i32* @EPROBE_DEFER, align 4
  %163 = sub nsw i32 0, %162
  %164 = icmp ne i32 %161, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %156
  %166 = load i32, i32* %16, align 4
  %167 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %165, %156
  %169 = load i32, i32* %16, align 4
  store i32 %169, i32* %4, align 4
  br label %411

170:                                              ; preds = %142
  %171 = load %struct.device*, %struct.device** %5, align 8
  %172 = getelementptr inbounds %struct.device, %struct.device* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @of_get_address(i32 %173, i32 0, i32* null, i32* null)
  %175 = call i32 @be32_to_cpup(i32 %174)
  %176 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %177 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %176, i32 0, i32 9
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %170, %121
  %179 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %180 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %179, i32 0, i32 8
  %181 = call i32 @init_completion(i32* %180)
  %182 = load i32, i32* @INT_EN, align 4
  %183 = load i64, i64* @DSI1_INTERRUPTS_ALWAYS_ENABLED, align 8
  %184 = call i32 @DSI_PORT_WRITE(i32 %182, i64 %183)
  %185 = load i32, i32* @INT_STAT, align 4
  %186 = load i32, i32* @INT_STAT, align 4
  %187 = call i64 @DSI_PORT_READ(i32 %186)
  %188 = call i32 @DSI_PORT_WRITE(i32 %185, i64 %187)
  %189 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %190 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %189, i32 0, i32 7
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %178
  %194 = load %struct.device*, %struct.device** %5, align 8
  %195 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %196 = call i32 @platform_get_irq(%struct.platform_device* %195, i32 0)
  %197 = load i32, i32* @vc4_dsi_irq_defer_to_thread_handler, align 4
  %198 = load i32, i32* @vc4_dsi_irq_handler, align 4
  %199 = load i32, i32* @IRQF_ONESHOT, align 4
  %200 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %201 = call i32 @devm_request_threaded_irq(%struct.device* %194, i32 %196, i32 %197, i32 %198, i32 %199, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct.vc4_dsi* %200)
  store i32 %201, i32* %16, align 4
  br label %209

202:                                              ; preds = %178
  %203 = load %struct.device*, %struct.device** %5, align 8
  %204 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %205 = call i32 @platform_get_irq(%struct.platform_device* %204, i32 0)
  %206 = load i32, i32* @vc4_dsi_irq_handler, align 4
  %207 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %208 = call i32 @devm_request_irq(%struct.device* %203, i32 %205, i32 %206, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct.vc4_dsi* %207)
  store i32 %208, i32* %16, align 4
  br label %209

209:                                              ; preds = %202, %193
  %210 = load i32, i32* %16, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %223

212:                                              ; preds = %209
  %213 = load i32, i32* %16, align 4
  %214 = load i32, i32* @EPROBE_DEFER, align 4
  %215 = sub nsw i32 0, %214
  %216 = icmp ne i32 %213, %215
  br i1 %216, label %217, label %221

217:                                              ; preds = %212
  %218 = load %struct.device*, %struct.device** %5, align 8
  %219 = load i32, i32* %16, align 4
  %220 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %218, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %219)
  br label %221

221:                                              ; preds = %217, %212
  %222 = load i32, i32* %16, align 4
  store i32 %222, i32* %4, align 4
  br label %411

223:                                              ; preds = %209
  %224 = load %struct.device*, %struct.device** %5, align 8
  %225 = call i8* @devm_clk_get(%struct.device* %224, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %226 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %227 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %226, i32 0, i32 4
  store i8* %225, i8** %227, align 8
  %228 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %229 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %228, i32 0, i32 4
  %230 = load i8*, i8** %229, align 8
  %231 = call i64 @IS_ERR(i8* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %248

233:                                              ; preds = %223
  %234 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %235 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %234, i32 0, i32 4
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 @PTR_ERR(i8* %236)
  store i32 %237, i32* %16, align 4
  %238 = load i32, i32* %16, align 4
  %239 = load i32, i32* @EPROBE_DEFER, align 4
  %240 = sub nsw i32 0, %239
  %241 = icmp ne i32 %238, %240
  br i1 %241, label %242, label %246

242:                                              ; preds = %233
  %243 = load %struct.device*, %struct.device** %5, align 8
  %244 = load i32, i32* %16, align 4
  %245 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %243, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %244)
  br label %246

246:                                              ; preds = %242, %233
  %247 = load i32, i32* %16, align 4
  store i32 %247, i32* %4, align 4
  br label %411

248:                                              ; preds = %223
  %249 = load %struct.device*, %struct.device** %5, align 8
  %250 = call i8* @devm_clk_get(%struct.device* %249, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %251 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %252 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %251, i32 0, i32 6
  store i8* %250, i8** %252, align 8
  %253 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %254 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %253, i32 0, i32 6
  %255 = load i8*, i8** %254, align 8
  %256 = call i64 @IS_ERR(i8* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %273

258:                                              ; preds = %248
  %259 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %260 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %259, i32 0, i32 6
  %261 = load i8*, i8** %260, align 8
  %262 = call i32 @PTR_ERR(i8* %261)
  store i32 %262, i32* %16, align 4
  %263 = load i32, i32* %16, align 4
  %264 = load i32, i32* @EPROBE_DEFER, align 4
  %265 = sub nsw i32 0, %264
  %266 = icmp ne i32 %263, %265
  br i1 %266, label %267, label %271

267:                                              ; preds = %258
  %268 = load %struct.device*, %struct.device** %5, align 8
  %269 = load i32, i32* %16, align 4
  %270 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %268, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %269)
  br label %271

271:                                              ; preds = %267, %258
  %272 = load i32, i32* %16, align 4
  store i32 %272, i32* %4, align 4
  br label %411

273:                                              ; preds = %248
  %274 = load %struct.device*, %struct.device** %5, align 8
  %275 = call i8* @devm_clk_get(%struct.device* %274, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %276 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %277 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %276, i32 0, i32 5
  store i8* %275, i8** %277, align 8
  %278 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %279 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %278, i32 0, i32 5
  %280 = load i8*, i8** %279, align 8
  %281 = call i64 @IS_ERR(i8* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %298

283:                                              ; preds = %273
  %284 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %285 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %284, i32 0, i32 5
  %286 = load i8*, i8** %285, align 8
  %287 = call i32 @PTR_ERR(i8* %286)
  store i32 %287, i32* %16, align 4
  %288 = load i32, i32* %16, align 4
  %289 = load i32, i32* @EPROBE_DEFER, align 4
  %290 = sub nsw i32 0, %289
  %291 = icmp ne i32 %288, %290
  br i1 %291, label %292, label %296

292:                                              ; preds = %283
  %293 = load %struct.device*, %struct.device** %5, align 8
  %294 = load i32, i32* %16, align 4
  %295 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %293, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %294)
  br label %296

296:                                              ; preds = %292, %283
  %297 = load i32, i32* %16, align 4
  store i32 %297, i32* %4, align 4
  br label %411

298:                                              ; preds = %273
  %299 = load %struct.device*, %struct.device** %5, align 8
  %300 = getelementptr inbounds %struct.device, %struct.device* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %303 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %302, i32 0, i32 3
  %304 = call i32 @drm_of_find_panel_or_bridge(i32 %301, i32 0, i32 0, %struct.drm_panel** %13, i8** %303)
  store i32 %304, i32* %16, align 4
  %305 = load i32, i32* %16, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %315

307:                                              ; preds = %298
  %308 = load i32, i32* %16, align 4
  %309 = load i32, i32* @ENODEV, align 4
  %310 = sub nsw i32 0, %309
  %311 = icmp eq i32 %308, %310
  br i1 %311, label %312, label %313

312:                                              ; preds = %307
  store i32 0, i32* %4, align 4
  br label %411

313:                                              ; preds = %307
  %314 = load i32, i32* %16, align 4
  store i32 %314, i32* %4, align 4
  br label %411

315:                                              ; preds = %298
  %316 = load %struct.drm_panel*, %struct.drm_panel** %13, align 8
  %317 = icmp ne %struct.drm_panel* %316, null
  br i1 %317, label %318, label %336

318:                                              ; preds = %315
  %319 = load %struct.device*, %struct.device** %5, align 8
  %320 = load %struct.drm_panel*, %struct.drm_panel** %13, align 8
  %321 = load i32, i32* @DRM_MODE_CONNECTOR_DSI, align 4
  %322 = call i8* @devm_drm_panel_bridge_add(%struct.device* %319, %struct.drm_panel* %320, i32 %321)
  %323 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %324 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %323, i32 0, i32 3
  store i8* %322, i8** %324, align 8
  %325 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %326 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %325, i32 0, i32 3
  %327 = load i8*, i8** %326, align 8
  %328 = call i64 @IS_ERR(i8* %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %335

330:                                              ; preds = %318
  %331 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %332 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %331, i32 0, i32 3
  %333 = load i8*, i8** %332, align 8
  %334 = call i32 @PTR_ERR(i8* %333)
  store i32 %334, i32* %4, align 4
  br label %411

335:                                              ; preds = %318
  br label %336

336:                                              ; preds = %335, %315
  %337 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %338 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %337, i32 0, i32 4
  %339 = load i8*, i8** %338, align 8
  %340 = call i32 @clk_set_rate(i8* %339, i32 100000000)
  store i32 %340, i32* %16, align 4
  %341 = load i32, i32* %16, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %348

343:                                              ; preds = %336
  %344 = load %struct.device*, %struct.device** %5, align 8
  %345 = load i32, i32* %16, align 4
  %346 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %344, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %345)
  %347 = load i32, i32* %16, align 4
  store i32 %347, i32* %4, align 4
  br label %411

348:                                              ; preds = %336
  %349 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %350 = call i32 @vc4_dsi_init_phy_clocks(%struct.vc4_dsi* %349)
  store i32 %350, i32* %16, align 4
  %351 = load i32, i32* %16, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %348
  %354 = load i32, i32* %16, align 4
  store i32 %354, i32* %4, align 4
  br label %411

355:                                              ; preds = %348
  %356 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %357 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = icmp eq i64 %358, 1
  br i1 %359, label %360, label %364

360:                                              ; preds = %355
  %361 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %362 = load %struct.vc4_dev*, %struct.vc4_dev** %10, align 8
  %363 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %362, i32 0, i32 0
  store %struct.vc4_dsi* %361, %struct.vc4_dsi** %363, align 8
  br label %364

364:                                              ; preds = %360, %355
  %365 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %366 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %367 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %366, i32 0, i32 2
  %368 = load %struct.TYPE_8__*, %struct.TYPE_8__** %367, align 8
  %369 = load i32, i32* @DRM_MODE_ENCODER_DSI, align 4
  %370 = call i32 @drm_encoder_init(%struct.drm_device* %365, %struct.TYPE_8__* %368, i32* @vc4_dsi_encoder_funcs, i32 %369, i32* null)
  %371 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %372 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %371, i32 0, i32 2
  %373 = load %struct.TYPE_8__*, %struct.TYPE_8__** %372, align 8
  %374 = call i32 @drm_encoder_helper_add(%struct.TYPE_8__* %373, i32* @vc4_dsi_encoder_helper_funcs)
  %375 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %376 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %375, i32 0, i32 2
  %377 = load %struct.TYPE_8__*, %struct.TYPE_8__** %376, align 8
  %378 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %379 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %378, i32 0, i32 3
  %380 = load i8*, i8** %379, align 8
  %381 = call i32 @drm_bridge_attach(%struct.TYPE_8__* %377, i8* %380, i32* null)
  store i32 %381, i32* %16, align 4
  %382 = load i32, i32* %16, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %389

384:                                              ; preds = %364
  %385 = load %struct.device*, %struct.device** %5, align 8
  %386 = load i32, i32* %16, align 4
  %387 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %385, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %386)
  %388 = load i32, i32* %16, align 4
  store i32 %388, i32* %4, align 4
  br label %411

389:                                              ; preds = %364
  %390 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %391 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %390, i32 0, i32 2
  %392 = load %struct.TYPE_8__*, %struct.TYPE_8__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %392, i32 0, i32 0
  store i32* null, i32** %393, align 8
  %394 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %395 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = icmp eq i64 %396, 0
  br i1 %397, label %398, label %403

398:                                              ; preds = %389
  %399 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %400 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %401 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %400, i32 0, i32 1
  %402 = call i32 @vc4_debugfs_add_regset32(%struct.drm_device* %399, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), %struct.TYPE_7__* %401)
  br label %408

403:                                              ; preds = %389
  %404 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %405 = load %struct.vc4_dsi*, %struct.vc4_dsi** %11, align 8
  %406 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %405, i32 0, i32 1
  %407 = call i32 @vc4_debugfs_add_regset32(%struct.drm_device* %404, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), %struct.TYPE_7__* %406)
  br label %408

408:                                              ; preds = %403, %398
  %409 = load %struct.device*, %struct.device** %5, align 8
  %410 = call i32 @pm_runtime_enable(%struct.device* %409)
  store i32 0, i32* %4, align 4
  br label %411

411:                                              ; preds = %408, %384, %353, %343, %330, %313, %312, %296, %271, %246, %221, %168, %138, %112, %71, %46, %32
  %412 = load i32, i32* %4, align 4
  ret i32 %412
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i8* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local %struct.vc4_dsi_encoder* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @vc4_ioremap_regs(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i64 @DSI_PORT_READ(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i64 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i8* @dma_request_chan_by_mask(i32*) #1

declare dso_local i32 @be32_to_cpup(i32) #1

declare dso_local i32 @of_get_address(i32, i32, i32*, i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @DSI_PORT_WRITE(i32, i64) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32, i32, i8*, %struct.vc4_dsi*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.vc4_dsi*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @drm_of_find_panel_or_bridge(i32, i32, i32, %struct.drm_panel**, i8**) #1

declare dso_local i8* @devm_drm_panel_bridge_add(%struct.device*, %struct.drm_panel*, i32) #1

declare dso_local i32 @clk_set_rate(i8*, i32) #1

declare dso_local i32 @vc4_dsi_init_phy_clocks(%struct.vc4_dsi*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.TYPE_8__*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @drm_bridge_attach(%struct.TYPE_8__*, i8*, i32*) #1

declare dso_local i32 @vc4_debugfs_add_regset32(%struct.drm_device*, i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
