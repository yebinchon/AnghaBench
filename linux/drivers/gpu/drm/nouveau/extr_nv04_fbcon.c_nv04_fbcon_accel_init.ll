; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv04_fbcon.c_nv04_fbcon_accel_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv04_fbcon.c_nv04_fbcon_accel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_17__, %struct.TYPE_15__, %struct.nouveau_fbdev* }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.nouveau_fbdev = type { %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_10__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_10__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_11__, %struct.nouveau_channel* }
%struct.TYPE_11__ = type { %struct.nvif_device }
%struct.nvif_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32 }
%struct.nouveau_channel = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NV_DEVICE_INFO_V0_CELSIUS = common dso_local global i64 0, align 8
@NvSubCtxSurf2D = common dso_local global i32 0, align 4
@NvSubImageBlit = common dso_local global i32 0, align 4
@NvSubGdiRect = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_fbcon_accel_init(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.nouveau_fbdev*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.nouveau_channel*, align 8
  %8 = alloca %struct.nvif_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 2
  %15 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %14, align 8
  store %struct.nouveau_fbdev* %15, %struct.nouveau_fbdev** %4, align 8
  %16 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %17 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  store %struct.drm_device* %19, %struct.drm_device** %5, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %20)
  store %struct.nouveau_drm* %21, %struct.nouveau_drm** %6, align 8
  %22 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %23 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %22, i32 0, i32 1
  %24 = load %struct.nouveau_channel*, %struct.nouveau_channel** %23, align 8
  store %struct.nouveau_channel* %24, %struct.nouveau_channel** %7, align 8
  %25 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %26 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store %struct.nvif_device* %27, %struct.nvif_device** %8, align 8
  %28 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %45 [
    i32 8, label %32
    i32 16, label %33
    i32 32, label %34
  ]

32:                                               ; preds = %1
  store i32 1, i32* %9, align 4
  store i32 3, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %48

33:                                               ; preds = %1
  store i32 4, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %48

34:                                               ; preds = %1
  %35 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %41 [
    i32 0, label %40
    i32 8, label %40
  ]

40:                                               ; preds = %34, %34
  br label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %362

44:                                               ; preds = %40
  store i32 6, i32* %9, align 4
  store i32 3, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %48

45:                                               ; preds = %1
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %362

48:                                               ; preds = %44, %33, %32
  %49 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %50 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %49, i32 0, i32 1
  %51 = load %struct.nvif_device*, %struct.nvif_device** %8, align 8
  %52 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @NV_DEVICE_INFO_V0_CELSIUS, align 8
  %56 = icmp sge i64 %54, %55
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 98, i32 66
  %59 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %60 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %59, i32 0, i32 2
  %61 = call i32 @nvif_object_init(i32* %50, i32 98, i32 %58, i32* null, i32 0, %struct.TYPE_18__* %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %48
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %2, align 4
  br label %362

66:                                               ; preds = %48
  %67 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %68 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %67, i32 0, i32 1
  %69 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %70 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %69, i32 0, i32 5
  %71 = call i32 @nvif_object_init(i32* %68, i32 25, i32 25, i32* null, i32 0, %struct.TYPE_18__* %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %2, align 4
  br label %362

76:                                               ; preds = %66
  %77 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %78 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %77, i32 0, i32 1
  %79 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %80 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %79, i32 0, i32 0
  %81 = call i32 @nvif_object_init(i32* %78, i32 67, i32 67, i32* null, i32 0, %struct.TYPE_18__* %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %2, align 4
  br label %362

86:                                               ; preds = %76
  %87 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %88 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %87, i32 0, i32 1
  %89 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %90 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %89, i32 0, i32 1
  %91 = call i32 @nvif_object_init(i32* %88, i32 68, i32 68, i32* null, i32 0, %struct.TYPE_18__* %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %2, align 4
  br label %362

96:                                               ; preds = %86
  %97 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %98 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %97, i32 0, i32 1
  %99 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %100 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %99, i32 0, i32 3
  %101 = call i32 @nvif_object_init(i32* %98, i32 74, i32 74, i32* null, i32 0, %struct.TYPE_18__* %100)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %2, align 4
  br label %362

106:                                              ; preds = %96
  %107 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %108 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %107, i32 0, i32 1
  %109 = load %struct.nvif_device*, %struct.nvif_device** %8, align 8
  %110 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp sge i32 %112, 17
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 159, i32 95
  %116 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %117 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %116, i32 0, i32 4
  %118 = call i32 @nvif_object_init(i32* %108, i32 95, i32 %115, i32* null, i32 0, %struct.TYPE_18__* %117)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %106
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %2, align 4
  br label %362

123:                                              ; preds = %106
  %124 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %125 = load %struct.nvif_device*, %struct.nvif_device** %8, align 8
  %126 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = icmp sge i32 %128, 17
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 4, i32 0
  %132 = add nsw i32 49, %131
  %133 = call i64 @RING_SPACE(%struct.nouveau_channel* %124, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %123
  %136 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %137 = call i32 @nouveau_fbcon_gpu_lockup(%struct.fb_info* %136)
  store i32 0, i32* %2, align 4
  br label %362

138:                                              ; preds = %123
  %139 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %140 = load i32, i32* @NvSubCtxSurf2D, align 4
  %141 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %139, i32 %140, i32 0, i32 1)
  %142 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %143 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %144 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @OUT_RING(%struct.nouveau_channel* %142, i32 %146)
  %148 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %149 = load i32, i32* @NvSubCtxSurf2D, align 4
  %150 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %148, i32 %149, i32 388, i32 2)
  %151 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %152 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %153 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @OUT_RING(%struct.nouveau_channel* %151, i32 %155)
  %157 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %158 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %159 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @OUT_RING(%struct.nouveau_channel* %157, i32 %161)
  %163 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %164 = load i32, i32* @NvSubCtxSurf2D, align 4
  %165 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %163, i32 %164, i32 768, i32 4)
  %166 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @OUT_RING(%struct.nouveau_channel* %166, i32 %167)
  %169 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %170 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %171 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %175 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = shl i32 %177, 16
  %179 = or i32 %173, %178
  %180 = call i32 @OUT_RING(%struct.nouveau_channel* %169, i32 %179)
  %181 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %182 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %183 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %187 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = sub nsw i32 %185, %189
  %191 = call i32 @OUT_RING(%struct.nouveau_channel* %181, i32 %190)
  %192 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %193 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %194 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %198 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = sub nsw i32 %196, %200
  %202 = call i32 @OUT_RING(%struct.nouveau_channel* %192, i32 %201)
  %203 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %204 = load i32, i32* @NvSubCtxSurf2D, align 4
  %205 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %203, i32 %204, i32 0, i32 1)
  %206 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %207 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %208 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @OUT_RING(%struct.nouveau_channel* %206, i32 %210)
  %212 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %213 = load i32, i32* @NvSubCtxSurf2D, align 4
  %214 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %212, i32 %213, i32 768, i32 1)
  %215 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %216 = call i32 @OUT_RING(%struct.nouveau_channel* %215, i32 85)
  %217 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %218 = load i32, i32* @NvSubCtxSurf2D, align 4
  %219 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %217, i32 %218, i32 0, i32 1)
  %220 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %221 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %222 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @OUT_RING(%struct.nouveau_channel* %220, i32 %224)
  %226 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %227 = load i32, i32* @NvSubCtxSurf2D, align 4
  %228 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %226, i32 %227, i32 768, i32 8)
  %229 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %230 = load i32, i32* %10, align 4
  %231 = call i32 @OUT_RING(%struct.nouveau_channel* %229, i32 %230)
  %232 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %233 = call i32 @OUT_RING(%struct.nouveau_channel* %232, i32 1)
  %234 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %235 = call i32 @OUT_RING(%struct.nouveau_channel* %234, i32 0)
  %236 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %237 = call i32 @OUT_RING(%struct.nouveau_channel* %236, i32 1)
  %238 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %239 = call i32 @OUT_RING(%struct.nouveau_channel* %238, i32 -1)
  %240 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %241 = call i32 @OUT_RING(%struct.nouveau_channel* %240, i32 -1)
  %242 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %243 = call i32 @OUT_RING(%struct.nouveau_channel* %242, i32 -1)
  %244 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %245 = call i32 @OUT_RING(%struct.nouveau_channel* %244, i32 -1)
  %246 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %247 = load i32, i32* @NvSubCtxSurf2D, align 4
  %248 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %246, i32 %247, i32 0, i32 1)
  %249 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %250 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %251 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %250, i32 0, i32 5
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @OUT_RING(%struct.nouveau_channel* %249, i32 %253)
  %255 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %256 = load i32, i32* @NvSubCtxSurf2D, align 4
  %257 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %255, i32 %256, i32 768, i32 2)
  %258 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %259 = call i32 @OUT_RING(%struct.nouveau_channel* %258, i32 0)
  %260 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %261 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %262 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = shl i32 %264, 16
  %266 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %267 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = or i32 %265, %269
  %271 = call i32 @OUT_RING(%struct.nouveau_channel* %260, i32 %270)
  %272 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %273 = load i32, i32* @NvSubImageBlit, align 4
  %274 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %272, i32 %273, i32 0, i32 1)
  %275 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %276 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %277 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %276, i32 0, i32 4
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @OUT_RING(%struct.nouveau_channel* %275, i32 %279)
  %281 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %282 = load i32, i32* @NvSubImageBlit, align 4
  %283 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %281, i32 %282, i32 412, i32 1)
  %284 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %285 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %286 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @OUT_RING(%struct.nouveau_channel* %284, i32 %288)
  %290 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %291 = load i32, i32* @NvSubImageBlit, align 4
  %292 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %290, i32 %291, i32 764, i32 1)
  %293 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %294 = call i32 @OUT_RING(%struct.nouveau_channel* %293, i32 3)
  %295 = load %struct.nvif_device*, %struct.nvif_device** %8, align 8
  %296 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  %299 = icmp sge i32 %298, 17
  br i1 %299, label %300, label %310

300:                                              ; preds = %138
  %301 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %302 = load i32, i32* @NvSubImageBlit, align 4
  %303 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %301, i32 %302, i32 288, i32 3)
  %304 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %305 = call i32 @OUT_RING(%struct.nouveau_channel* %304, i32 0)
  %306 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %307 = call i32 @OUT_RING(%struct.nouveau_channel* %306, i32 1)
  %308 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %309 = call i32 @OUT_RING(%struct.nouveau_channel* %308, i32 2)
  br label %310

310:                                              ; preds = %300, %138
  %311 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %312 = load i32, i32* @NvSubGdiRect, align 4
  %313 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %311, i32 %312, i32 0, i32 1)
  %314 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %315 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %316 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %315, i32 0, i32 3
  %317 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @OUT_RING(%struct.nouveau_channel* %314, i32 %318)
  %320 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %321 = load i32, i32* @NvSubGdiRect, align 4
  %322 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %320, i32 %321, i32 408, i32 1)
  %323 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %324 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %325 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %324, i32 0, i32 2
  %326 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = call i32 @OUT_RING(%struct.nouveau_channel* %323, i32 %327)
  %329 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %330 = load i32, i32* @NvSubGdiRect, align 4
  %331 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %329, i32 %330, i32 392, i32 2)
  %332 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %333 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %334 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @OUT_RING(%struct.nouveau_channel* %332, i32 %336)
  %338 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %339 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %340 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = call i32 @OUT_RING(%struct.nouveau_channel* %338, i32 %342)
  %344 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %345 = load i32, i32* @NvSubGdiRect, align 4
  %346 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %344, i32 %345, i32 772, i32 1)
  %347 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %348 = call i32 @OUT_RING(%struct.nouveau_channel* %347, i32 1)
  %349 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %350 = load i32, i32* @NvSubGdiRect, align 4
  %351 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %349, i32 %350, i32 768, i32 1)
  %352 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %353 = load i32, i32* %11, align 4
  %354 = call i32 @OUT_RING(%struct.nouveau_channel* %352, i32 %353)
  %355 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %356 = load i32, i32* @NvSubGdiRect, align 4
  %357 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %355, i32 %356, i32 764, i32 1)
  %358 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %359 = call i32 @OUT_RING(%struct.nouveau_channel* %358, i32 3)
  %360 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %361 = call i32 @FIRE_RING(%struct.nouveau_channel* %360)
  store i32 0, i32* %2, align 4
  br label %362

362:                                              ; preds = %310, %135, %121, %104, %94, %84, %74, %64, %45, %41
  %363 = load i32, i32* %2, align 4
  ret i32 %363
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @nvif_object_init(i32*, i32, i32, i32*, i32, %struct.TYPE_18__*) #1

declare dso_local i64 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @nouveau_fbcon_gpu_lockup(%struct.fb_info*) #1

declare dso_local i32 @BEGIN_NV04(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @FIRE_RING(%struct.nouveau_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
