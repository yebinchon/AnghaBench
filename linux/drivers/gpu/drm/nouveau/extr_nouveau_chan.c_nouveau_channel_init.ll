; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_chan.c_nouveau_channel_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_chan.c_nouveau_channel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { i32, i32, i32, %struct.nouveau_drm*, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_18__, %struct.TYPE_15__*, %struct.TYPE_18__, i32, %struct.nvif_device* }
%struct.nouveau_drm = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.nvif_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64 }
%struct.nv_dma_v0 = type { i64, i64, i8*, i8* }
%struct.TYPE_11__ = type { i32 (%struct.nouveau_channel*)* }

@FERMI_CHANNEL_GPFIFO = common dso_local global i32 0, align 4
@nouveau_channel_killed = common dso_local global i32 0, align 4
@NV906F_V0_NTFY_KILLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to request channel kill notification: %d\0A\00", align 1
@NV_DEVICE_INFO_V0_FERMI = common dso_local global i64 0, align 8
@NV_DEVICE_INFO_V0_TESLA = common dso_local global i64 0, align 8
@NV_DMA_V0_TARGET_VM = common dso_local global i8* null, align 8
@NV_DMA_V0_ACCESS_VM = common dso_local global i8* null, align 8
@NV_DMA_V0_TARGET_VRAM = common dso_local global i8* null, align 8
@NV_DMA_V0_ACCESS_RDWR = common dso_local global i8* null, align 8
@NV_DMA_IN_MEMORY = common dso_local global i32 0, align 4
@NV_DMA_V0_TARGET_AGP = common dso_local global i8* null, align 8
@NOUVEAU_DMA_SKIPS = common dso_local global i32 0, align 4
@NV_DEVICE_INFO_V0_CELSIUS = common dso_local global i64 0, align 8
@NVIF_CLASS_SW_NV04 = common dso_local global i32 0, align 4
@NvSubSw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_channel*, i32, i32)* @nouveau_channel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_channel_init(%struct.nouveau_channel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvif_device*, align 8
  %9 = alloca %struct.nouveau_drm*, align 8
  %10 = alloca %struct.nv_dma_v0, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %14 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %13, i32 0, i32 11
  %15 = load %struct.nvif_device*, %struct.nvif_device** %14, align 8
  store %struct.nvif_device* %15, %struct.nvif_device** %8, align 8
  %16 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %17 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %16, i32 0, i32 3
  %18 = load %struct.nouveau_drm*, %struct.nouveau_drm** %17, align 8
  store %struct.nouveau_drm* %18, %struct.nouveau_drm** %9, align 8
  %19 = bitcast %struct.nv_dma_v0* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 32, i1 false)
  %20 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %21 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %20, i32 0, i32 5
  %22 = call i32 @nvif_object_map(%struct.TYPE_17__* %21, i32* null, i32 0)
  %23 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %24 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @FERMI_CHANNEL_GPFIFO, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %3
  %30 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %31 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %30, i32 0, i32 5
  %32 = load i32, i32* @nouveau_channel_killed, align 4
  %33 = load i32, i32* @NV906F_V0_NTFY_KILLED, align 4
  %34 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %35 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %34, i32 0, i32 10
  %36 = call i32 @nvif_notify_init(%struct.TYPE_17__* %31, i32 %32, i32 1, i32 %33, i32* null, i32 0, i32 0, i32* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %41 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %40, i32 0, i32 10
  %42 = call i32 @nvif_notify_get(i32* %41)
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %39, %29
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.nouveau_drm*, %struct.nouveau_drm** %9, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @NV_ERROR(%struct.nouveau_drm* %47, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %4, align 4
  br label %324

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %3
  %53 = load %struct.nvif_device*, %struct.nvif_device** %8, align 8
  %54 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NV_DEVICE_INFO_V0_FERMI, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %188

59:                                               ; preds = %52
  %60 = load %struct.nvif_device*, %struct.nvif_device** %8, align 8
  %61 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @NV_DEVICE_INFO_V0_TESLA, align 8
  %65 = icmp sge i64 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %59
  %67 = load i8*, i8** @NV_DMA_V0_TARGET_VM, align 8
  %68 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %10, i32 0, i32 3
  store i8* %67, i8** %68, align 8
  %69 = load i8*, i8** @NV_DMA_V0_ACCESS_VM, align 8
  %70 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %10, i32 0, i32 2
  store i8* %69, i8** %70, align 8
  %71 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %10, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %73 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %72, i32 0, i32 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %77, 1
  %79 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %10, i32 0, i32 0
  store i64 %78, i64* %79, align 8
  br label %92

80:                                               ; preds = %59
  %81 = load i8*, i8** @NV_DMA_V0_TARGET_VRAM, align 8
  %82 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %10, i32 0, i32 3
  store i8* %81, i8** %82, align 8
  %83 = load i8*, i8** @NV_DMA_V0_ACCESS_RDWR, align 8
  %84 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %10, i32 0, i32 2
  store i8* %83, i8** %84, align 8
  %85 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %10, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load %struct.nvif_device*, %struct.nvif_device** %8, align 8
  %87 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %89, 1
  %91 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %10, i32 0, i32 0
  store i64 %90, i64* %91, align 8
  br label %92

92:                                               ; preds = %80, %66
  %93 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %94 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %93, i32 0, i32 5
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @NV_DMA_IN_MEMORY, align 4
  %97 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %98 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %97, i32 0, i32 9
  %99 = call i32 @nvif_object_init(%struct.TYPE_17__* %94, i32 %95, i32 %96, %struct.nv_dma_v0* %10, i32 32, %struct.TYPE_18__* %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %4, align 4
  br label %324

104:                                              ; preds = %92
  %105 = load %struct.nvif_device*, %struct.nvif_device** %8, align 8
  %106 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @NV_DEVICE_INFO_V0_TESLA, align 8
  %110 = icmp sge i64 %108, %109
  br i1 %110, label %111, label %125

111:                                              ; preds = %104
  %112 = load i8*, i8** @NV_DMA_V0_TARGET_VM, align 8
  %113 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %10, i32 0, i32 3
  store i8* %112, i8** %113, align 8
  %114 = load i8*, i8** @NV_DMA_V0_ACCESS_VM, align 8
  %115 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %10, i32 0, i32 2
  store i8* %114, i8** %115, align 8
  %116 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %10, i32 0, i32 1
  store i64 0, i64* %116, align 8
  %117 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %118 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %117, i32 0, i32 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %122, 1
  %124 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %10, i32 0, i32 0
  store i64 %123, i64* %124, align 8
  br label %175

125:                                              ; preds = %104
  %126 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %127 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %126, i32 0, i32 3
  %128 = load %struct.nouveau_drm*, %struct.nouveau_drm** %127, align 8
  %129 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %160

133:                                              ; preds = %125
  %134 = load i8*, i8** @NV_DMA_V0_TARGET_AGP, align 8
  %135 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %10, i32 0, i32 3
  store i8* %134, i8** %135, align 8
  %136 = load i8*, i8** @NV_DMA_V0_ACCESS_RDWR, align 8
  %137 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %10, i32 0, i32 2
  store i8* %136, i8** %137, align 8
  %138 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %139 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %138, i32 0, i32 3
  %140 = load %struct.nouveau_drm*, %struct.nouveau_drm** %139, align 8
  %141 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %10, i32 0, i32 1
  store i64 %143, i64* %144, align 8
  %145 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %146 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %145, i32 0, i32 3
  %147 = load %struct.nouveau_drm*, %struct.nouveau_drm** %146, align 8
  %148 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %152 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %151, i32 0, i32 3
  %153 = load %struct.nouveau_drm*, %struct.nouveau_drm** %152, align 8
  %154 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %150, %156
  %158 = sub nsw i64 %157, 1
  %159 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %10, i32 0, i32 0
  store i64 %158, i64* %159, align 8
  br label %174

160:                                              ; preds = %125
  %161 = load i8*, i8** @NV_DMA_V0_TARGET_VM, align 8
  %162 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %10, i32 0, i32 3
  store i8* %161, i8** %162, align 8
  %163 = load i8*, i8** @NV_DMA_V0_ACCESS_RDWR, align 8
  %164 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %10, i32 0, i32 2
  store i8* %163, i8** %164, align 8
  %165 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %10, i32 0, i32 1
  store i64 0, i64* %165, align 8
  %166 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %167 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %166, i32 0, i32 8
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = sub nsw i64 %171, 1
  %173 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %10, i32 0, i32 0
  store i64 %172, i64* %173, align 8
  br label %174

174:                                              ; preds = %160, %133
  br label %175

175:                                              ; preds = %174, %111
  %176 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %177 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %176, i32 0, i32 5
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* @NV_DMA_IN_MEMORY, align 4
  %180 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %181 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %180, i32 0, i32 7
  %182 = call i32 @nvif_object_init(%struct.TYPE_17__* %177, i32 %178, i32 %179, %struct.nv_dma_v0* %10, i32 32, %struct.TYPE_18__* %181)
  store i32 %182, i32* %11, align 4
  %183 = load i32, i32* %11, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %175
  %186 = load i32, i32* %11, align 4
  store i32 %186, i32* %4, align 4
  br label %324

187:                                              ; preds = %175
  br label %188

188:                                              ; preds = %187, %52
  %189 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %190 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %189, i32 0, i32 5
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = and i32 %192, 255
  switch i32 %193, label %202 [
    i32 107, label %194
    i32 110, label %194
  ]

194:                                              ; preds = %188, %188
  %195 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %196 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %195, i32 0, i32 0
  store i32 64, i32* %196, align 8
  %197 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %198 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %197, i32 0, i32 1
  store i32 68, i32* %198, align 4
  %199 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %200 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %199, i32 0, i32 6
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 0
  store i32 16382, i32* %201, align 8
  br label %237

202:                                              ; preds = %188
  %203 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %204 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %203, i32 0, i32 0
  store i32 64, i32* %204, align 8
  %205 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %206 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %205, i32 0, i32 1
  store i32 68, i32* %206, align 4
  %207 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %208 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %207, i32 0, i32 2
  store i32 96, i32* %208, align 8
  %209 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %210 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %209, i32 0, i32 6
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 1
  store i32 16384, i32* %211, align 4
  %212 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %213 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %212, i32 0, i32 6
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 2
  store i32 1023, i32* %214, align 8
  %215 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %216 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %215, i32 0, i32 6
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 3
  store i32 0, i32* %217, align 4
  %218 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %219 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %218, i32 0, i32 6
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %223 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %222, i32 0, i32 6
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = sub nsw i32 %221, %225
  %227 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %228 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %227, i32 0, i32 6
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 4
  store i32 %226, i32* %229, align 8
  %230 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %231 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %230, i32 0, i32 6
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %235 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %234, i32 0, i32 6
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 0
  store i32 %233, i32* %236, align 8
  br label %237

237:                                              ; preds = %202, %194
  %238 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %239 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %238, i32 0, i32 6
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 5
  store i32 0, i32* %240, align 4
  %241 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %242 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %241, i32 0, i32 6
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %246 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %245, i32 0, i32 6
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 6
  store i32 %244, i32* %247, align 8
  %248 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %249 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %248, i32 0, i32 6
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %253 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %252, i32 0, i32 6
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 6
  %255 = load i32, i32* %254, align 8
  %256 = sub nsw i32 %251, %255
  %257 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %258 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %257, i32 0, i32 6
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 7
  store i32 %256, i32* %259, align 4
  %260 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %261 = load i32, i32* @NOUVEAU_DMA_SKIPS, align 4
  %262 = call i32 @RING_SPACE(%struct.nouveau_channel* %260, i32 %261)
  store i32 %262, i32* %11, align 4
  %263 = load i32, i32* %11, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %237
  %266 = load i32, i32* %11, align 4
  store i32 %266, i32* %4, align 4
  br label %324

267:                                              ; preds = %237
  store i32 0, i32* %12, align 4
  br label %268

268:                                              ; preds = %275, %267
  %269 = load i32, i32* %12, align 4
  %270 = load i32, i32* @NOUVEAU_DMA_SKIPS, align 4
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %272, label %278

272:                                              ; preds = %268
  %273 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %274 = call i32 @OUT_RING(%struct.nouveau_channel* %273, i32 0)
  br label %275

275:                                              ; preds = %272
  %276 = load i32, i32* %12, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %12, align 4
  br label %268

278:                                              ; preds = %268
  %279 = load %struct.nvif_device*, %struct.nvif_device** %8, align 8
  %280 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @NV_DEVICE_INFO_V0_CELSIUS, align 8
  %284 = icmp slt i64 %282, %283
  br i1 %284, label %285, label %315

285:                                              ; preds = %278
  %286 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %287 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %286, i32 0, i32 5
  %288 = load i32, i32* @NVIF_CLASS_SW_NV04, align 4
  %289 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %290 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %289, i32 0, i32 4
  %291 = call i32 @nvif_object_init(%struct.TYPE_17__* %287, i32 110, i32 %288, %struct.nv_dma_v0* null, i32 0, %struct.TYPE_18__* %290)
  store i32 %291, i32* %11, align 4
  %292 = load i32, i32* %11, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %285
  %295 = load i32, i32* %11, align 4
  store i32 %295, i32* %4, align 4
  br label %324

296:                                              ; preds = %285
  %297 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %298 = call i32 @RING_SPACE(%struct.nouveau_channel* %297, i32 2)
  store i32 %298, i32* %11, align 4
  %299 = load i32, i32* %11, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %296
  %302 = load i32, i32* %11, align 4
  store i32 %302, i32* %4, align 4
  br label %324

303:                                              ; preds = %296
  %304 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %305 = load i32, i32* @NvSubSw, align 4
  %306 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %304, i32 %305, i32 0, i32 1)
  %307 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %308 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %309 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %308, i32 0, i32 4
  %310 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = call i32 @OUT_RING(%struct.nouveau_channel* %307, i32 %311)
  %313 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %314 = call i32 @FIRE_RING(%struct.nouveau_channel* %313)
  br label %315

315:                                              ; preds = %303, %278
  %316 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %317 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %316, i32 0, i32 3
  %318 = load %struct.nouveau_drm*, %struct.nouveau_drm** %317, align 8
  %319 = call %struct.TYPE_11__* @nouveau_fence(%struct.nouveau_drm* %318)
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 0
  %321 = load i32 (%struct.nouveau_channel*)*, i32 (%struct.nouveau_channel*)** %320, align 8
  %322 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %323 = call i32 %321(%struct.nouveau_channel* %322)
  store i32 %323, i32* %4, align 4
  br label %324

324:                                              ; preds = %315, %301, %294, %265, %185, %102, %46
  %325 = load i32, i32* %4, align 4
  ret i32 %325
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nvif_object_map(%struct.TYPE_17__*, i32*, i32) #2

declare dso_local i32 @nvif_notify_init(%struct.TYPE_17__*, i32, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @nvif_notify_get(i32*) #2

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*, i32) #2

declare dso_local i32 @nvif_object_init(%struct.TYPE_17__*, i32, i32, %struct.nv_dma_v0*, i32, %struct.TYPE_18__*) #2

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #2

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #2

declare dso_local i32 @BEGIN_NV04(%struct.nouveau_channel*, i32, i32, i32) #2

declare dso_local i32 @FIRE_RING(%struct.nouveau_channel*) #2

declare dso_local %struct.TYPE_11__* @nouveau_fence(%struct.nouveau_drm*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
