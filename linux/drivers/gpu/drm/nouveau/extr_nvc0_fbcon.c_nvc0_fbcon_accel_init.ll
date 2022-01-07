; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nvc0_fbcon.c_nvc0_fbcon_accel_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nvc0_fbcon.c_nvc0_fbcon_accel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.nouveau_fbdev* }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.nouveau_fbdev = type { %struct.TYPE_12__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nouveau_framebuffer = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.nouveau_drm = type { %struct.nouveau_channel* }
%struct.nouveau_channel = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NvSub2D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvc0_fbcon_accel_init(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.nouveau_fbdev*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.nouveau_framebuffer*, align 8
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
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %5, align 8
  %18 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %19 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.nouveau_framebuffer* @nouveau_framebuffer(i32 %21)
  store %struct.nouveau_framebuffer* %22, %struct.nouveau_framebuffer** %6, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %24 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %23)
  store %struct.nouveau_drm* %24, %struct.nouveau_drm** %7, align 8
  %25 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %26 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %25, i32 0, i32 0
  %27 = load %struct.nouveau_channel*, %struct.nouveau_channel** %26, align 8
  store %struct.nouveau_channel* %27, %struct.nouveau_channel** %8, align 8
  %28 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %29 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %28, i32 0, i32 0
  %30 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %31 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %30, i32 0, i32 0
  %32 = call i32 @nvif_object_init(i32* %29, i32 36909, i32 36909, i32* null, i32 0, %struct.TYPE_12__* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %2, align 4
  br label %260

37:                                               ; preds = %1
  %38 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %39 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %57 [
    i32 8, label %42
    i32 15, label %43
    i32 16, label %44
    i32 32, label %45
  ]

42:                                               ; preds = %37
  store i32 243, i32* %10, align 4
  br label %60

43:                                               ; preds = %37
  store i32 248, i32* %10, align 4
  br label %60

44:                                               ; preds = %37
  store i32 232, i32* %10, align 4
  br label %60

45:                                               ; preds = %37
  %46 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %53 [
    i32 0, label %51
    i32 8, label %51
    i32 2, label %52
  ]

51:                                               ; preds = %45, %45
  store i32 230, i32* %10, align 4
  br label %56

52:                                               ; preds = %45
  store i32 209, i32* %10, align 4
  br label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %260

56:                                               ; preds = %52, %51
  br label %60

57:                                               ; preds = %37
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %260

60:                                               ; preds = %56, %44, %43, %42
  %61 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %62 = call i32 @RING_SPACE(%struct.nouveau_channel* %61, i32 58)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = call i32 @WARN_ON(i32 1)
  %67 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %68 = call i32 @nouveau_fbcon_gpu_lockup(%struct.fb_info* %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %2, align 4
  br label %260

70:                                               ; preds = %60
  %71 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %72 = load i32, i32* @NvSub2D, align 4
  %73 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %71, i32 %72, i32 0, i32 1)
  %74 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %75 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %76 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @OUT_RING(%struct.nouveau_channel* %74, i32 %78)
  %80 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %81 = load i32, i32* @NvSub2D, align 4
  %82 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %80, i32 %81, i32 656, i32 1)
  %83 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %84 = call i32 @OUT_RING(%struct.nouveau_channel* %83, i32 0)
  %85 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %86 = load i32, i32* @NvSub2D, align 4
  %87 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %85, i32 %86, i32 2184, i32 1)
  %88 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %89 = call i32 @OUT_RING(%struct.nouveau_channel* %88, i32 1)
  %90 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %91 = load i32, i32* @NvSub2D, align 4
  %92 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %90, i32 %91, i32 684, i32 1)
  %93 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %94 = call i32 @OUT_RING(%struct.nouveau_channel* %93, i32 3)
  %95 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %96 = load i32, i32* @NvSub2D, align 4
  %97 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %95, i32 %96, i32 672, i32 1)
  %98 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %99 = call i32 @OUT_RING(%struct.nouveau_channel* %98, i32 85)
  %100 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %101 = load i32, i32* @NvSub2D, align 4
  %102 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %100, i32 %101, i32 2240, i32 4)
  %103 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %104 = call i32 @OUT_RING(%struct.nouveau_channel* %103, i32 0)
  %105 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %106 = call i32 @OUT_RING(%struct.nouveau_channel* %105, i32 1)
  %107 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %108 = call i32 @OUT_RING(%struct.nouveau_channel* %107, i32 0)
  %109 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %110 = call i32 @OUT_RING(%struct.nouveau_channel* %109, i32 1)
  %111 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %112 = load i32, i32* @NvSub2D, align 4
  %113 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %111, i32 %112, i32 1408, i32 2)
  %114 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %115 = call i32 @OUT_RING(%struct.nouveau_channel* %114, i32 4)
  %116 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @OUT_RING(%struct.nouveau_channel* %116, i32 %117)
  %119 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %120 = load i32, i32* @NvSub2D, align 4
  %121 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %119, i32 %120, i32 744, i32 2)
  %122 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %123 = call i32 @OUT_RING(%struct.nouveau_channel* %122, i32 2)
  %124 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %125 = call i32 @OUT_RING(%struct.nouveau_channel* %124, i32 1)
  %126 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %127 = load i32, i32* @NvSub2D, align 4
  %128 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %126, i32 %127, i32 2052, i32 1)
  %129 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @OUT_RING(%struct.nouveau_channel* %129, i32 %130)
  %132 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %133 = load i32, i32* @NvSub2D, align 4
  %134 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %132, i32 %133, i32 2048, i32 1)
  %135 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %136 = call i32 @OUT_RING(%struct.nouveau_channel* %135, i32 1)
  %137 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %138 = load i32, i32* @NvSub2D, align 4
  %139 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %137, i32 %138, i32 2056, i32 3)
  %140 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %141 = call i32 @OUT_RING(%struct.nouveau_channel* %140, i32 0)
  %142 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %143 = call i32 @OUT_RING(%struct.nouveau_channel* %142, i32 0)
  %144 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %145 = call i32 @OUT_RING(%struct.nouveau_channel* %144, i32 1)
  %146 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %147 = load i32, i32* @NvSub2D, align 4
  %148 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %146, i32 %147, i32 2076, i32 1)
  %149 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %150 = call i32 @OUT_RING(%struct.nouveau_channel* %149, i32 1)
  %151 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %152 = load i32, i32* @NvSub2D, align 4
  %153 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %151, i32 %152, i32 2112, i32 4)
  %154 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %155 = call i32 @OUT_RING(%struct.nouveau_channel* %154, i32 0)
  %156 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %157 = call i32 @OUT_RING(%struct.nouveau_channel* %156, i32 1)
  %158 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %159 = call i32 @OUT_RING(%struct.nouveau_channel* %158, i32 0)
  %160 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %161 = call i32 @OUT_RING(%struct.nouveau_channel* %160, i32 1)
  %162 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %163 = load i32, i32* @NvSub2D, align 4
  %164 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %162, i32 %163, i32 512, i32 10)
  %165 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @OUT_RING(%struct.nouveau_channel* %165, i32 %166)
  %168 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %169 = call i32 @OUT_RING(%struct.nouveau_channel* %168, i32 1)
  %170 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %171 = call i32 @OUT_RING(%struct.nouveau_channel* %170, i32 0)
  %172 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %173 = call i32 @OUT_RING(%struct.nouveau_channel* %172, i32 1)
  %174 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %175 = call i32 @OUT_RING(%struct.nouveau_channel* %174, i32 0)
  %176 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %177 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %178 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @OUT_RING(%struct.nouveau_channel* %176, i32 %180)
  %182 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %183 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %184 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @OUT_RING(%struct.nouveau_channel* %182, i32 %186)
  %188 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %189 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %190 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @OUT_RING(%struct.nouveau_channel* %188, i32 %192)
  %194 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %195 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %6, align 8
  %196 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %195, i32 0, i32 0
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @upper_32_bits(i32 %199)
  %201 = call i32 @OUT_RING(%struct.nouveau_channel* %194, i32 %200)
  %202 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %203 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %6, align 8
  %204 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %203, i32 0, i32 0
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @lower_32_bits(i32 %207)
  %209 = call i32 @OUT_RING(%struct.nouveau_channel* %202, i32 %208)
  %210 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %211 = load i32, i32* @NvSub2D, align 4
  %212 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %210, i32 %211, i32 560, i32 10)
  %213 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %214 = load i32, i32* %10, align 4
  %215 = call i32 @OUT_RING(%struct.nouveau_channel* %213, i32 %214)
  %216 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %217 = call i32 @OUT_RING(%struct.nouveau_channel* %216, i32 1)
  %218 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %219 = call i32 @OUT_RING(%struct.nouveau_channel* %218, i32 0)
  %220 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %221 = call i32 @OUT_RING(%struct.nouveau_channel* %220, i32 1)
  %222 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %223 = call i32 @OUT_RING(%struct.nouveau_channel* %222, i32 0)
  %224 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %225 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %226 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @OUT_RING(%struct.nouveau_channel* %224, i32 %228)
  %230 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %231 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %232 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @OUT_RING(%struct.nouveau_channel* %230, i32 %234)
  %236 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %237 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %238 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @OUT_RING(%struct.nouveau_channel* %236, i32 %240)
  %242 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %243 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %6, align 8
  %244 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %243, i32 0, i32 0
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @upper_32_bits(i32 %247)
  %249 = call i32 @OUT_RING(%struct.nouveau_channel* %242, i32 %248)
  %250 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %251 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %6, align 8
  %252 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %251, i32 0, i32 0
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @lower_32_bits(i32 %255)
  %257 = call i32 @OUT_RING(%struct.nouveau_channel* %250, i32 %256)
  %258 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %259 = call i32 @FIRE_RING(%struct.nouveau_channel* %258)
  store i32 0, i32* %2, align 4
  br label %260

260:                                              ; preds = %70, %65, %57, %53, %35
  %261 = load i32, i32* %2, align 4
  ret i32 %261
}

declare dso_local %struct.nouveau_framebuffer* @nouveau_framebuffer(i32) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @nvif_object_init(i32*, i32, i32, i32*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nouveau_fbcon_gpu_lockup(%struct.fb_info*) #1

declare dso_local i32 @BEGIN_NVC0(%struct.nouveau_channel*, i32, i32, i32) #1

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
