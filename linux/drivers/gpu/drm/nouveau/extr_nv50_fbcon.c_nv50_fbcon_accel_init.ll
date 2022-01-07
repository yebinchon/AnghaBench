; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv50_fbcon.c_nv50_fbcon_accel_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv50_fbcon.c_nv50_fbcon_accel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.nouveau_fbdev* }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.nouveau_fbdev = type { %struct.TYPE_14__, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_8__ = type { %struct.drm_device*, i32 }
%struct.drm_device = type { i32 }
%struct.nouveau_framebuffer = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.nouveau_drm = type { %struct.nouveau_channel* }
%struct.nouveau_channel = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NvSub2D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_fbcon_accel_init(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.nouveau_fbdev*, align 8
  %5 = alloca %struct.nouveau_framebuffer*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca %struct.nouveau_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 2
  %13 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %12, align 8
  store %struct.nouveau_fbdev* %13, %struct.nouveau_fbdev** %4, align 8
  %14 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %15 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.nouveau_framebuffer* @nouveau_framebuffer(i32 %17)
  store %struct.nouveau_framebuffer* %18, %struct.nouveau_framebuffer** %5, align 8
  %19 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %20 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.drm_device*, %struct.drm_device** %21, align 8
  store %struct.drm_device* %22, %struct.drm_device** %6, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %24 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %23)
  store %struct.nouveau_drm* %24, %struct.nouveau_drm** %7, align 8
  %25 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %26 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %25, i32 0, i32 0
  %27 = load %struct.nouveau_channel*, %struct.nouveau_channel** %26, align 8
  store %struct.nouveau_channel* %27, %struct.nouveau_channel** %8, align 8
  %28 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %47 [
    i32 8, label %32
    i32 15, label %33
    i32 16, label %34
    i32 32, label %35
  ]

32:                                               ; preds = %1
  store i32 243, i32* %10, align 4
  br label %50

33:                                               ; preds = %1
  store i32 248, i32* %10, align 4
  br label %50

34:                                               ; preds = %1
  store i32 232, i32* %10, align 4
  br label %50

35:                                               ; preds = %1
  %36 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %43 [
    i32 0, label %41
    i32 8, label %41
    i32 2, label %42
  ]

41:                                               ; preds = %35, %35
  store i32 230, i32* %10, align 4
  br label %46

42:                                               ; preds = %35
  store i32 209, i32* %10, align 4
  br label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %274

46:                                               ; preds = %42, %41
  br label %50

47:                                               ; preds = %1
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %274

50:                                               ; preds = %46, %34, %33, %32
  %51 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %52 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %51, i32 0, i32 1
  %53 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %54 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %53, i32 0, i32 0
  %55 = call i32 @nvif_object_init(i32* %52, i32 20525, i32 20525, i32* null, i32 0, %struct.TYPE_14__* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %2, align 4
  br label %274

60:                                               ; preds = %50
  %61 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %62 = call i32 @RING_SPACE(%struct.nouveau_channel* %61, i32 58)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %67 = call i32 @nouveau_fbcon_gpu_lockup(%struct.fb_info* %66)
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %2, align 4
  br label %274

69:                                               ; preds = %60
  %70 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %71 = load i32, i32* @NvSub2D, align 4
  %72 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %70, i32 %71, i32 0, i32 1)
  %73 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %74 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %75 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @OUT_RING(%struct.nouveau_channel* %73, i32 %77)
  %79 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %80 = load i32, i32* @NvSub2D, align 4
  %81 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %79, i32 %80, i32 388, i32 3)
  %82 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %83 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %84 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @OUT_RING(%struct.nouveau_channel* %82, i32 %86)
  %88 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %89 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %90 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @OUT_RING(%struct.nouveau_channel* %88, i32 %92)
  %94 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %95 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %96 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @OUT_RING(%struct.nouveau_channel* %94, i32 %98)
  %100 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %101 = load i32, i32* @NvSub2D, align 4
  %102 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %100, i32 %101, i32 656, i32 1)
  %103 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %104 = call i32 @OUT_RING(%struct.nouveau_channel* %103, i32 0)
  %105 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %106 = load i32, i32* @NvSub2D, align 4
  %107 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %105, i32 %106, i32 2184, i32 1)
  %108 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %109 = call i32 @OUT_RING(%struct.nouveau_channel* %108, i32 1)
  %110 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %111 = load i32, i32* @NvSub2D, align 4
  %112 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %110, i32 %111, i32 684, i32 1)
  %113 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %114 = call i32 @OUT_RING(%struct.nouveau_channel* %113, i32 3)
  %115 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %116 = load i32, i32* @NvSub2D, align 4
  %117 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %115, i32 %116, i32 672, i32 1)
  %118 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %119 = call i32 @OUT_RING(%struct.nouveau_channel* %118, i32 85)
  %120 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %121 = load i32, i32* @NvSub2D, align 4
  %122 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %120, i32 %121, i32 2240, i32 4)
  %123 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %124 = call i32 @OUT_RING(%struct.nouveau_channel* %123, i32 0)
  %125 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %126 = call i32 @OUT_RING(%struct.nouveau_channel* %125, i32 1)
  %127 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %128 = call i32 @OUT_RING(%struct.nouveau_channel* %127, i32 0)
  %129 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %130 = call i32 @OUT_RING(%struct.nouveau_channel* %129, i32 1)
  %131 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %132 = load i32, i32* @NvSub2D, align 4
  %133 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %131, i32 %132, i32 1408, i32 2)
  %134 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %135 = call i32 @OUT_RING(%struct.nouveau_channel* %134, i32 4)
  %136 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @OUT_RING(%struct.nouveau_channel* %136, i32 %137)
  %139 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %140 = load i32, i32* @NvSub2D, align 4
  %141 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %139, i32 %140, i32 744, i32 2)
  %142 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %143 = call i32 @OUT_RING(%struct.nouveau_channel* %142, i32 2)
  %144 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %145 = call i32 @OUT_RING(%struct.nouveau_channel* %144, i32 1)
  %146 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %147 = load i32, i32* @NvSub2D, align 4
  %148 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %146, i32 %147, i32 2052, i32 1)
  %149 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @OUT_RING(%struct.nouveau_channel* %149, i32 %150)
  %152 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %153 = load i32, i32* @NvSub2D, align 4
  %154 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %152, i32 %153, i32 2048, i32 1)
  %155 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %156 = call i32 @OUT_RING(%struct.nouveau_channel* %155, i32 1)
  %157 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %158 = load i32, i32* @NvSub2D, align 4
  %159 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %157, i32 %158, i32 2056, i32 3)
  %160 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %161 = call i32 @OUT_RING(%struct.nouveau_channel* %160, i32 0)
  %162 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %163 = call i32 @OUT_RING(%struct.nouveau_channel* %162, i32 0)
  %164 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %165 = call i32 @OUT_RING(%struct.nouveau_channel* %164, i32 1)
  %166 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %167 = load i32, i32* @NvSub2D, align 4
  %168 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %166, i32 %167, i32 2076, i32 1)
  %169 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %170 = call i32 @OUT_RING(%struct.nouveau_channel* %169, i32 1)
  %171 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %172 = load i32, i32* @NvSub2D, align 4
  %173 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %171, i32 %172, i32 2112, i32 4)
  %174 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %175 = call i32 @OUT_RING(%struct.nouveau_channel* %174, i32 0)
  %176 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %177 = call i32 @OUT_RING(%struct.nouveau_channel* %176, i32 1)
  %178 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %179 = call i32 @OUT_RING(%struct.nouveau_channel* %178, i32 0)
  %180 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %181 = call i32 @OUT_RING(%struct.nouveau_channel* %180, i32 1)
  %182 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %183 = load i32, i32* @NvSub2D, align 4
  %184 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %182, i32 %183, i32 512, i32 2)
  %185 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @OUT_RING(%struct.nouveau_channel* %185, i32 %186)
  %188 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %189 = call i32 @OUT_RING(%struct.nouveau_channel* %188, i32 1)
  %190 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %191 = load i32, i32* @NvSub2D, align 4
  %192 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %190, i32 %191, i32 532, i32 5)
  %193 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %194 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %195 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @OUT_RING(%struct.nouveau_channel* %193, i32 %197)
  %199 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %200 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %201 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @OUT_RING(%struct.nouveau_channel* %199, i32 %203)
  %205 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %206 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %207 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @OUT_RING(%struct.nouveau_channel* %205, i32 %209)
  %211 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %212 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %5, align 8
  %213 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %212, i32 0, i32 0
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @upper_32_bits(i32 %216)
  %218 = call i32 @OUT_RING(%struct.nouveau_channel* %211, i32 %217)
  %219 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %220 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %5, align 8
  %221 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %220, i32 0, i32 0
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @lower_32_bits(i32 %224)
  %226 = call i32 @OUT_RING(%struct.nouveau_channel* %219, i32 %225)
  %227 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %228 = load i32, i32* @NvSub2D, align 4
  %229 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %227, i32 %228, i32 560, i32 2)
  %230 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %231 = load i32, i32* %10, align 4
  %232 = call i32 @OUT_RING(%struct.nouveau_channel* %230, i32 %231)
  %233 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %234 = call i32 @OUT_RING(%struct.nouveau_channel* %233, i32 1)
  %235 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %236 = load i32, i32* @NvSub2D, align 4
  %237 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %235, i32 %236, i32 580, i32 5)
  %238 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %239 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %240 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @OUT_RING(%struct.nouveau_channel* %238, i32 %242)
  %244 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %245 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %246 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @OUT_RING(%struct.nouveau_channel* %244, i32 %248)
  %250 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %251 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %252 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @OUT_RING(%struct.nouveau_channel* %250, i32 %254)
  %256 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %257 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %5, align 8
  %258 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %257, i32 0, i32 0
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @upper_32_bits(i32 %261)
  %263 = call i32 @OUT_RING(%struct.nouveau_channel* %256, i32 %262)
  %264 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %265 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %5, align 8
  %266 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %265, i32 0, i32 0
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @lower_32_bits(i32 %269)
  %271 = call i32 @OUT_RING(%struct.nouveau_channel* %264, i32 %270)
  %272 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %273 = call i32 @FIRE_RING(%struct.nouveau_channel* %272)
  store i32 0, i32* %2, align 4
  br label %274

274:                                              ; preds = %69, %65, %58, %47, %43
  %275 = load i32, i32* %2, align 4
  ret i32 %275
}

declare dso_local %struct.nouveau_framebuffer* @nouveau_framebuffer(i32) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @nvif_object_init(i32*, i32, i32, i32*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @nouveau_fbcon_gpu_lockup(%struct.fb_info*) #1

declare dso_local i32 @BEGIN_NV04(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @FIRE_RING(%struct.nouveau_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
