; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/savage/extr_savage_bci.c_savage_do_init_bci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/savage/extr_savage_bci.c_savage_do_init_bci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64, %struct.TYPE_10__*, %struct.TYPE_15__*, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_15__ = type { i64, i32, i32, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i64*, i64, %struct.TYPE_12__*, i32, %struct.TYPE_11__*, i64*, i64, %struct.TYPE_16__*, i32*, i32, %struct.TYPE_15__, %struct.TYPE_15__*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"invalid frame buffer bpp %d!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid depth buffer bpp %d!\0A\00", align 1
@SAVAGE_DMA_AGP = common dso_local global i32 0, align 4
@SAVAGE_DMA_PCI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid dma memory type %d!\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"could not find sarea!\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"could not find shadow status region!\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"could not find DMA buffer region!\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"failed to ioremap DMA buffer region!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"could not find agp texture region!\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"command DMA not supported on Savage3D/MX/IX.\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"command and vertex DMA not supported at the same time.\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"could not find command DMA region!\0A\00", align 1
@_DRM_AGP = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [47 x i8] c"AGP command DMA region is not a _DRM_AGP map!\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"failed to ioremap command DMA region!\0A\00", align 1
@_DRM_CONSISTENT = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [54 x i8] c"PCI command DMA region is not a _DRM_CONSISTENT map!\0A\00", align 1
@savage_dma_flush = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [36 x i8] c"falling back to faked command DMA.\0A\00", align 1
@SAVAGE_FAKE_DMA_SIZE = common dso_local global i32 0, align 4
@_DRM_SHM = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [38 x i8] c"could not allocate faked DMA buffer!\0A\00", align 1
@savage_fake_dma_flush = common dso_local global i32 0, align 4
@S3_SAVAGE4 = common dso_local global i64 0, align 8
@SAVAGE_BD_TILE_16BPP = common dso_local global i32 0, align 4
@SAVAGE_BD_TILE_32BPP = common dso_local global i32 0, align 4
@SAVAGE_BD_TILE_DEST = common dso_local global i32 0, align 4
@SAVAGE_BD_BW_DISABLE = common dso_local global i32 0, align 4
@SAVAGE_BD_BPP_SHIFT = common dso_local global i32 0, align 4
@SAVAGE_BD_TILE_SHIFT = common dso_local global i32 0, align 4
@SAVAGE_BCI_OFFSET = common dso_local global i32 0, align 4
@SAVAGE_FIFO_USED_MASK_S3D = common dso_local global i32 0, align 4
@SAVAGE_FIFO_USED_MASK_S4 = common dso_local global i32 0, align 4
@savage_bci_wait_fifo_shadow = common dso_local global i32 0, align 4
@savage_bci_wait_event_shadow = common dso_local global i32 0, align 4
@savage_bci_wait_fifo_s3d = common dso_local global i32 0, align 4
@savage_bci_wait_fifo_s4 = common dso_local global i32 0, align 4
@savage_bci_wait_event_reg = common dso_local global i32 0, align 4
@savage_emit_clip_rect_s3d = common dso_local global i32 0, align 4
@savage_emit_clip_rect_s4 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [31 x i8] c"could not initialize freelist\0A\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"could not initialize command DMA\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.TYPE_14__*)* @savage_do_init_bci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @savage_do_init_bci(%struct.drm_device* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 3
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %6, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 16
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 32
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %644

31:                                               ; preds = %19, %2
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 16
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 32
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %644

48:                                               ; preds = %36, %31
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 15
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SAVAGE_DMA_AGP, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %48
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 15
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SAVAGE_DMA_PCI, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 15
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %644

67:                                               ; preds = %54, %48
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 18
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 33
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 17
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 32
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 16
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 31
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 15
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 24
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 14
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 30
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 13
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 29
  store i32 %105, i32* %107, align 4
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 12
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 28
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 11
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 27
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 10
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 26
  store i32 %135, i32* %137, align 8
  %138 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %139 = call %struct.TYPE_16__* @drm_legacy_getsarea(%struct.drm_device* %138)
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 19
  store %struct.TYPE_16__* %139, %struct.TYPE_16__** %141, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 19
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %143, align 8
  %145 = icmp ne %struct.TYPE_16__* %144, null
  br i1 %145, label %152, label %146

146:                                              ; preds = %67
  %147 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %148 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %149 = call i32 @savage_do_cleanup_bci(%struct.drm_device* %148)
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %3, align 4
  br label %644

152:                                              ; preds = %67
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %177

157:                                              ; preds = %152
  %158 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = call i8* @drm_legacy_findmap(%struct.drm_device* %158, i64 %161)
  %163 = bitcast i8* %162 to %struct.TYPE_12__*
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 14
  store %struct.TYPE_12__* %163, %struct.TYPE_12__** %165, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 14
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %167, align 8
  %169 = icmp ne %struct.TYPE_12__* %168, null
  br i1 %169, label %176, label %170

170:                                              ; preds = %157
  %171 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %172 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %173 = call i32 @savage_do_cleanup_bci(%struct.drm_device* %172)
  %174 = load i32, i32* @EINVAL, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %3, align 4
  br label %644

176:                                              ; preds = %157
  br label %180

177:                                              ; preds = %152
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 14
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %179, align 8
  br label %180

180:                                              ; preds = %177, %176
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 24
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @SAVAGE_DMA_AGP, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %234

186:                                              ; preds = %180
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 6
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %234

191:                                              ; preds = %186
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 6
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %196 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %195, i32 0, i32 0
  store i64 %194, i64* %196, align 8
  %197 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 6
  %200 = load i64, i64* %199, align 8
  %201 = call i8* @drm_legacy_findmap(%struct.drm_device* %197, i64 %200)
  %202 = bitcast i8* %201 to %struct.TYPE_15__*
  %203 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %204 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %203, i32 0, i32 2
  store %struct.TYPE_15__* %202, %struct.TYPE_15__** %204, align 8
  %205 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %206 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %205, i32 0, i32 2
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %206, align 8
  %208 = icmp ne %struct.TYPE_15__* %207, null
  br i1 %208, label %215, label %209

209:                                              ; preds = %191
  %210 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %211 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %212 = call i32 @savage_do_cleanup_bci(%struct.drm_device* %211)
  %213 = load i32, i32* @EINVAL, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %3, align 4
  br label %644

215:                                              ; preds = %191
  %216 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %217 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %216, i32 0, i32 2
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %217, align 8
  %219 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %220 = call i32 @drm_legacy_ioremap(%struct.TYPE_15__* %218, %struct.drm_device* %219)
  %221 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %222 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %221, i32 0, i32 2
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %233, label %227

227:                                              ; preds = %215
  %228 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %229 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %230 = call i32 @savage_do_cleanup_bci(%struct.drm_device* %229)
  %231 = load i32, i32* @ENOMEM, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %3, align 4
  br label %644

233:                                              ; preds = %215
  br label %234

234:                                              ; preds = %233, %186, %180
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 7
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %259

239:                                              ; preds = %234
  %240 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 7
  %243 = load i64, i64* %242, align 8
  %244 = call i8* @drm_legacy_findmap(%struct.drm_device* %240, i64 %243)
  %245 = bitcast i8* %244 to i32*
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 25
  store i32* %245, i32** %247, align 8
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 25
  %250 = load i32*, i32** %249, align 8
  %251 = icmp ne i32* %250, null
  br i1 %251, label %258, label %252

252:                                              ; preds = %239
  %253 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %254 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %255 = call i32 @savage_do_cleanup_bci(%struct.drm_device* %254)
  %256 = load i32, i32* @EINVAL, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %3, align 4
  br label %644

258:                                              ; preds = %239
  br label %262

259:                                              ; preds = %234
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 25
  store i32* null, i32** %261, align 8
  br label %262

262:                                              ; preds = %259, %258
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 8
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %371

267:                                              ; preds = %262
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 5
  %270 = load i64, i64* %269, align 8
  %271 = call i64 @S3_SAVAGE3D_SERIES(i64 %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %267
  %274 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  %275 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %276 = call i32 @savage_do_cleanup_bci(%struct.drm_device* %275)
  %277 = load i32, i32* @EINVAL, align 4
  %278 = sub nsw i32 0, %277
  store i32 %278, i32* %3, align 4
  br label %644

279:                                              ; preds = %267
  %280 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %281 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %280, i32 0, i32 1
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %281, align 8
  %283 = icmp ne %struct.TYPE_10__* %282, null
  br i1 %283, label %284, label %297

284:                                              ; preds = %279
  %285 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %286 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %285, i32 0, i32 1
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %297

291:                                              ; preds = %284
  %292 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0))
  %293 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %294 = call i32 @savage_do_cleanup_bci(%struct.drm_device* %293)
  %295 = load i32, i32* @EINVAL, align 4
  %296 = sub nsw i32 0, %295
  store i32 %296, i32* %3, align 4
  br label %644

297:                                              ; preds = %284, %279
  %298 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %299 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 8
  %301 = load i64, i64* %300, align 8
  %302 = call i8* @drm_legacy_findmap(%struct.drm_device* %298, i64 %301)
  %303 = bitcast i8* %302 to %struct.TYPE_15__*
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 23
  store %struct.TYPE_15__* %303, %struct.TYPE_15__** %305, align 8
  %306 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %306, i32 0, i32 23
  %308 = load %struct.TYPE_15__*, %struct.TYPE_15__** %307, align 8
  %309 = icmp ne %struct.TYPE_15__* %308, null
  br i1 %309, label %316, label %310

310:                                              ; preds = %297
  %311 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %312 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %313 = call i32 @savage_do_cleanup_bci(%struct.drm_device* %312)
  %314 = load i32, i32* @EINVAL, align 4
  %315 = sub nsw i32 0, %314
  store i32 %315, i32* %3, align 4
  br label %644

316:                                              ; preds = %297
  %317 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %317, i32 0, i32 24
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @SAVAGE_DMA_AGP, align 4
  %321 = icmp eq i32 %319, %320
  br i1 %321, label %322, label %355

322:                                              ; preds = %316
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 23
  %325 = load %struct.TYPE_15__*, %struct.TYPE_15__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @_DRM_AGP, align 8
  %329 = icmp ne i64 %327, %328
  br i1 %329, label %330, label %336

330:                                              ; preds = %322
  %331 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0))
  %332 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %333 = call i32 @savage_do_cleanup_bci(%struct.drm_device* %332)
  %334 = load i32, i32* @EINVAL, align 4
  %335 = sub nsw i32 0, %334
  store i32 %335, i32* %3, align 4
  br label %644

336:                                              ; preds = %322
  %337 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i32 0, i32 23
  %339 = load %struct.TYPE_15__*, %struct.TYPE_15__** %338, align 8
  %340 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %341 = call i32 @drm_legacy_ioremap(%struct.TYPE_15__* %339, %struct.drm_device* %340)
  %342 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %342, i32 0, i32 23
  %344 = load %struct.TYPE_15__*, %struct.TYPE_15__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 8
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %354, label %348

348:                                              ; preds = %336
  %349 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  %350 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %351 = call i32 @savage_do_cleanup_bci(%struct.drm_device* %350)
  %352 = load i32, i32* @ENOMEM, align 4
  %353 = sub nsw i32 0, %352
  store i32 %353, i32* %3, align 4
  br label %644

354:                                              ; preds = %336
  br label %370

355:                                              ; preds = %316
  %356 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %356, i32 0, i32 23
  %358 = load %struct.TYPE_15__*, %struct.TYPE_15__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = load i64, i64* @_DRM_CONSISTENT, align 8
  %362 = icmp ne i64 %360, %361
  br i1 %362, label %363, label %369

363:                                              ; preds = %355
  %364 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0))
  %365 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %366 = call i32 @savage_do_cleanup_bci(%struct.drm_device* %365)
  %367 = load i32, i32* @EINVAL, align 4
  %368 = sub nsw i32 0, %367
  store i32 %368, i32* %3, align 4
  br label %644

369:                                              ; preds = %355
  br label %370

370:                                              ; preds = %369, %354
  br label %374

371:                                              ; preds = %262
  %372 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %372, i32 0, i32 23
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %373, align 8
  br label %374

374:                                              ; preds = %371, %370
  %375 = load i32, i32* @savage_dma_flush, align 4
  %376 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %376, i32 0, i32 21
  store i32 %375, i32* %377, align 8
  %378 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %379 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %378, i32 0, i32 23
  %380 = load %struct.TYPE_15__*, %struct.TYPE_15__** %379, align 8
  %381 = icmp ne %struct.TYPE_15__* %380, null
  br i1 %381, label %420, label %382

382:                                              ; preds = %374
  %383 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  %384 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %385 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %384, i32 0, i32 22
  %386 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %385, i32 0, i32 3
  store i64 0, i64* %386, align 8
  %387 = load i32, i32* @SAVAGE_FAKE_DMA_SIZE, align 4
  %388 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %389 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %388, i32 0, i32 22
  %390 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %389, i32 0, i32 2
  store i32 %387, i32* %390, align 4
  %391 = load i64, i64* @_DRM_SHM, align 8
  %392 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %393 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %392, i32 0, i32 22
  %394 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %393, i32 0, i32 0
  store i64 %391, i64* %394, align 8
  %395 = load i32, i32* @SAVAGE_FAKE_DMA_SIZE, align 4
  %396 = load i32, i32* @GFP_KERNEL, align 4
  %397 = call i32 @kmalloc(i32 %395, i32 %396)
  %398 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %399 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %398, i32 0, i32 22
  %400 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %399, i32 0, i32 1
  store i32 %397, i32* %400, align 8
  %401 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %401, i32 0, i32 22
  %403 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 8
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %412, label %406

406:                                              ; preds = %382
  %407 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  %408 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %409 = call i32 @savage_do_cleanup_bci(%struct.drm_device* %408)
  %410 = load i32, i32* @ENOMEM, align 4
  %411 = sub nsw i32 0, %410
  store i32 %411, i32* %3, align 4
  br label %644

412:                                              ; preds = %382
  %413 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %414 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %413, i32 0, i32 22
  %415 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %415, i32 0, i32 23
  store %struct.TYPE_15__* %414, %struct.TYPE_15__** %416, align 8
  %417 = load i32, i32* @savage_fake_dma_flush, align 4
  %418 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %419 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %418, i32 0, i32 21
  store i32 %417, i32* %419, align 8
  br label %420

420:                                              ; preds = %412, %374
  %421 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %422 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %421, i32 0, i32 19
  %423 = load %struct.TYPE_16__*, %struct.TYPE_16__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %423, i32 0, i32 0
  %425 = load i64, i64* %424, align 8
  %426 = inttoptr i64 %425 to i32*
  %427 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %428 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %427, i32 0, i32 9
  %429 = load i32, i32* %428, align 8
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, i32* %426, i64 %430
  %432 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %433 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %432, i32 0, i32 20
  store i32* %431, i32** %433, align 8
  %434 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %435 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %434, i32 0, i32 5
  %436 = load i64, i64* %435, align 8
  %437 = load i64, i64* @S3_SAVAGE4, align 8
  %438 = icmp sle i64 %436, %437
  br i1 %438, label %439, label %460

439:                                              ; preds = %420
  %440 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %441 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = icmp eq i32 %442, 16
  br i1 %443, label %444, label %446

444:                                              ; preds = %439
  %445 = load i32, i32* @SAVAGE_BD_TILE_16BPP, align 4
  br label %448

446:                                              ; preds = %439
  %447 = load i32, i32* @SAVAGE_BD_TILE_32BPP, align 4
  br label %448

448:                                              ; preds = %446, %444
  %449 = phi i32 [ %445, %444 ], [ %447, %446 ]
  store i32 %449, i32* %7, align 4
  %450 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %451 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %450, i32 0, i32 3
  %452 = load i32, i32* %451, align 4
  %453 = icmp eq i32 %452, 16
  br i1 %453, label %454, label %456

454:                                              ; preds = %448
  %455 = load i32, i32* @SAVAGE_BD_TILE_16BPP, align 4
  br label %458

456:                                              ; preds = %448
  %457 = load i32, i32* @SAVAGE_BD_TILE_32BPP, align 4
  br label %458

458:                                              ; preds = %456, %454
  %459 = phi i32 [ %455, %454 ], [ %457, %456 ]
  store i32 %459, i32* %8, align 4
  br label %463

460:                                              ; preds = %420
  %461 = load i32, i32* @SAVAGE_BD_TILE_DEST, align 4
  store i32 %461, i32* %7, align 4
  %462 = load i32, i32* @SAVAGE_BD_TILE_DEST, align 4
  store i32 %462, i32* %8, align 4
  br label %463

463:                                              ; preds = %460, %458
  %464 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %465 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 4
  %467 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %468 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = sdiv i32 %469, 8
  %471 = sdiv i32 %466, %470
  store i32 %471, i32* %9, align 4
  %472 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %473 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %472, i32 0, i32 2
  %474 = load i32, i32* %473, align 8
  %475 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %476 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 8
  %478 = sdiv i32 %477, 8
  %479 = sdiv i32 %474, %478
  store i32 %479, i32* %10, align 4
  %480 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %481 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %480, i32 0, i32 4
  %482 = load i32, i32* %481, align 8
  %483 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %484 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %483, i32 0, i32 3
  %485 = load i32, i32* %484, align 4
  %486 = sdiv i32 %485, 8
  %487 = sdiv i32 %482, %486
  store i32 %487, i32* %11, align 4
  %488 = load i32, i32* %9, align 4
  %489 = load i32, i32* @SAVAGE_BD_BW_DISABLE, align 4
  %490 = or i32 %488, %489
  %491 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %492 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 8
  %494 = load i32, i32* @SAVAGE_BD_BPP_SHIFT, align 4
  %495 = shl i32 %493, %494
  %496 = or i32 %490, %495
  %497 = load i32, i32* %7, align 4
  %498 = load i32, i32* @SAVAGE_BD_TILE_SHIFT, align 4
  %499 = shl i32 %497, %498
  %500 = or i32 %496, %499
  %501 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %502 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %501, i32 0, i32 6
  store i32 %500, i32* %502, align 8
  %503 = load i32, i32* %10, align 4
  %504 = load i32, i32* @SAVAGE_BD_BW_DISABLE, align 4
  %505 = or i32 %503, %504
  %506 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %507 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = load i32, i32* @SAVAGE_BD_BPP_SHIFT, align 4
  %510 = shl i32 %508, %509
  %511 = or i32 %505, %510
  %512 = load i32, i32* %7, align 4
  %513 = load i32, i32* @SAVAGE_BD_TILE_SHIFT, align 4
  %514 = shl i32 %512, %513
  %515 = or i32 %511, %514
  %516 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %517 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %516, i32 0, i32 7
  store i32 %515, i32* %517, align 4
  %518 = load i32, i32* %11, align 4
  %519 = load i32, i32* @SAVAGE_BD_BW_DISABLE, align 4
  %520 = or i32 %518, %519
  %521 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %522 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %521, i32 0, i32 3
  %523 = load i32, i32* %522, align 4
  %524 = load i32, i32* @SAVAGE_BD_BPP_SHIFT, align 4
  %525 = shl i32 %523, %524
  %526 = or i32 %520, %525
  %527 = load i32, i32* %8, align 4
  %528 = load i32, i32* @SAVAGE_BD_TILE_SHIFT, align 4
  %529 = shl i32 %527, %528
  %530 = or i32 %526, %529
  %531 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %532 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %531, i32 0, i32 8
  store i32 %530, i32* %532, align 8
  %533 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %534 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %533, i32 0, i32 13
  store volatile i64 0, i64* %534, align 8
  %535 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %536 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %535, i32 0, i32 18
  store i64 0, i64* %536, align 8
  %537 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %538 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %537, i32 0, i32 16
  %539 = load %struct.TYPE_11__*, %struct.TYPE_11__** %538, align 8
  %540 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %539, i32 0, i32 0
  %541 = load i64, i64* %540, align 8
  %542 = inttoptr i64 %541 to i32*
  %543 = load i32, i32* @SAVAGE_BCI_OFFSET, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i32, i32* %542, i64 %544
  %546 = bitcast i32* %545 to i64*
  %547 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %548 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %547, i32 0, i32 17
  store i64* %546, i64** %548, align 8
  %549 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %550 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %549, i32 0, i32 5
  %551 = load i64, i64* %550, align 8
  %552 = call i64 @S3_SAVAGE3D_SERIES(i64 %551)
  %553 = icmp ne i64 %552, 0
  br i1 %553, label %554, label %558

554:                                              ; preds = %463
  %555 = load i32, i32* @SAVAGE_FIFO_USED_MASK_S3D, align 4
  %556 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %557 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %556, i32 0, i32 15
  store i32 %555, i32* %557, align 8
  br label %562

558:                                              ; preds = %463
  %559 = load i32, i32* @SAVAGE_FIFO_USED_MASK_S4, align 4
  %560 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %561 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %560, i32 0, i32 15
  store i32 %559, i32* %561, align 8
  br label %562

562:                                              ; preds = %558, %554
  %563 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %564 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %563, i32 0, i32 14
  %565 = load %struct.TYPE_12__*, %struct.TYPE_12__** %564, align 8
  %566 = icmp ne %struct.TYPE_12__* %565, null
  br i1 %566, label %567, label %589

567:                                              ; preds = %562
  %568 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %569 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %568, i32 0, i32 14
  %570 = load %struct.TYPE_12__*, %struct.TYPE_12__** %569, align 8
  %571 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %570, i32 0, i32 0
  %572 = load i64, i64* %571, align 8
  %573 = inttoptr i64 %572 to i64*
  %574 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %575 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %574, i32 0, i32 12
  store i64* %573, i64** %575, align 8
  %576 = load i32, i32* @savage_bci_wait_fifo_shadow, align 4
  %577 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %578 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %577, i32 0, i32 11
  store i32 %576, i32* %578, align 4
  %579 = load i32, i32* @savage_bci_wait_event_shadow, align 4
  %580 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %581 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %580, i32 0, i32 10
  store i32 %579, i32* %581, align 8
  %582 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %583 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %582, i32 0, i32 13
  %584 = load volatile i64, i64* %583, align 8
  %585 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %586 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %585, i32 0, i32 12
  %587 = load i64*, i64** %586, align 8
  %588 = getelementptr inbounds i64, i64* %587, i64 1023
  store volatile i64 %584, i64* %588, align 8
  br label %609

589:                                              ; preds = %562
  %590 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %591 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %590, i32 0, i32 12
  store i64* null, i64** %591, align 8
  %592 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %593 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %592, i32 0, i32 5
  %594 = load i64, i64* %593, align 8
  %595 = call i64 @S3_SAVAGE3D_SERIES(i64 %594)
  %596 = icmp ne i64 %595, 0
  br i1 %596, label %597, label %601

597:                                              ; preds = %589
  %598 = load i32, i32* @savage_bci_wait_fifo_s3d, align 4
  %599 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %600 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %599, i32 0, i32 11
  store i32 %598, i32* %600, align 4
  br label %605

601:                                              ; preds = %589
  %602 = load i32, i32* @savage_bci_wait_fifo_s4, align 4
  %603 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %604 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %603, i32 0, i32 11
  store i32 %602, i32* %604, align 4
  br label %605

605:                                              ; preds = %601, %597
  %606 = load i32, i32* @savage_bci_wait_event_reg, align 4
  %607 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %608 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %607, i32 0, i32 10
  store i32 %606, i32* %608, align 8
  br label %609

609:                                              ; preds = %605, %567
  %610 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %611 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %610, i32 0, i32 5
  %612 = load i64, i64* %611, align 8
  %613 = call i64 @S3_SAVAGE3D_SERIES(i64 %612)
  %614 = icmp ne i64 %613, 0
  br i1 %614, label %615, label %619

615:                                              ; preds = %609
  %616 = load i32, i32* @savage_emit_clip_rect_s3d, align 4
  %617 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %618 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %617, i32 0, i32 9
  store i32 %616, i32* %618, align 4
  br label %623

619:                                              ; preds = %609
  %620 = load i32, i32* @savage_emit_clip_rect_s4, align 4
  %621 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %622 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %621, i32 0, i32 9
  store i32 %620, i32* %622, align 4
  br label %623

623:                                              ; preds = %619, %615
  %624 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %625 = call i64 @savage_freelist_init(%struct.drm_device* %624)
  %626 = icmp slt i64 %625, 0
  br i1 %626, label %627, label %633

627:                                              ; preds = %623
  %628 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0))
  %629 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %630 = call i32 @savage_do_cleanup_bci(%struct.drm_device* %629)
  %631 = load i32, i32* @ENOMEM, align 4
  %632 = sub nsw i32 0, %631
  store i32 %632, i32* %3, align 4
  br label %644

633:                                              ; preds = %623
  %634 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %635 = call i64 @savage_dma_init(%struct.TYPE_13__* %634)
  %636 = icmp slt i64 %635, 0
  br i1 %636, label %637, label %643

637:                                              ; preds = %633
  %638 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0))
  %639 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %640 = call i32 @savage_do_cleanup_bci(%struct.drm_device* %639)
  %641 = load i32, i32* @ENOMEM, align 4
  %642 = sub nsw i32 0, %641
  store i32 %642, i32* %3, align 4
  br label %644

643:                                              ; preds = %633
  store i32 0, i32* %3, align 4
  br label %644

644:                                              ; preds = %643, %637, %627, %406, %363, %348, %330, %310, %291, %273, %252, %227, %209, %170, %146, %60, %41, %24
  %645 = load i32, i32* %3, align 4
  ret i32 %645
}

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local %struct.TYPE_16__* @drm_legacy_getsarea(%struct.drm_device*) #1

declare dso_local i32 @savage_do_cleanup_bci(%struct.drm_device*) #1

declare dso_local i8* @drm_legacy_findmap(%struct.drm_device*, i64) #1

declare dso_local i32 @drm_legacy_ioremap(%struct.TYPE_15__*, %struct.drm_device*) #1

declare dso_local i64 @S3_SAVAGE3D_SERIES(i64) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i64 @savage_freelist_init(%struct.drm_device*) #1

declare dso_local i64 @savage_dma_init(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
