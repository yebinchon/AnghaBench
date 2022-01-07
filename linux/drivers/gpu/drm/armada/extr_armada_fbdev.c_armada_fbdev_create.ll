; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_fbdev.c_armada_fbdev_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_fbdev.c_armada_fbdev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb_helper = type { %struct.TYPE_9__*, %struct.drm_device* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*)* }
%struct.TYPE_7__ = type { i32* }
%struct.drm_device = type { i32 }
%struct.drm_fb_helper_surface_size = type { i32, i32, i32, i32 }
%struct.drm_mode_fb_cmd2 = type { i32, i32*, i32, i32 }
%struct.armada_framebuffer = type { %struct.TYPE_9__, i8*, i32, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.armada_gem_object = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.fb_info = type { %struct.TYPE_9__, i8*, i32, %struct.TYPE_6__, i32* }

@.str = private unnamed_addr constant [30 x i8] c"failed to allocate fb memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@armada_fb_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"allocated %dx%d %dbpp fb: 0x%08llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_fb_helper*, %struct.drm_fb_helper_surface_size*)* @armada_fbdev_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_fbdev_create(%struct.drm_fb_helper* %0, %struct.drm_fb_helper_surface_size* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_fb_helper*, align 8
  %5 = alloca %struct.drm_fb_helper_surface_size*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2, align 8
  %8 = alloca %struct.armada_framebuffer*, align 8
  %9 = alloca %struct.armada_gem_object*, align 8
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.drm_fb_helper* %0, %struct.drm_fb_helper** %4, align 8
  store %struct.drm_fb_helper_surface_size* %1, %struct.drm_fb_helper_surface_size** %5, align 8
  %14 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %15 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %14, i32 0, i32 1
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %6, align 8
  %17 = call i32 @memset(%struct.drm_mode_fb_cmd2* %7, i32 0, i32 24)
  %18 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %19 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %7, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  %22 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %23 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %7, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %7, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %29 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @armada_pitch(i32 %27, i32 %30)
  %32 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %7, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %36 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %39 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @drm_mode_legacy_fb_format(i32 %37, i32 %40)
  %42 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %7, i32 0, i32 2
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %7, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 %46, %48
  store i32 %49, i32* %11, align 4
  %50 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call %struct.armada_gem_object* @armada_gem_alloc_private_object(%struct.drm_device* %50, i32 %51)
  store %struct.armada_gem_object* %52, %struct.armada_gem_object** %9, align 8
  %53 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %54 = icmp ne %struct.armada_gem_object* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %2
  %56 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %172

59:                                               ; preds = %2
  %60 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %61 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %62 = call i32 @armada_gem_linear_back(%struct.drm_device* %60, %struct.armada_gem_object* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %67 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %66, i32 0, i32 1
  %68 = call i32 @drm_gem_object_put_unlocked(%struct.TYPE_10__* %67)
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %3, align 4
  br label %172

70:                                               ; preds = %59
  %71 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %72 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %73 = call i8* @armada_gem_map_object(%struct.drm_device* %71, %struct.armada_gem_object* %72)
  store i8* %73, i8** %13, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %78 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %77, i32 0, i32 1
  %79 = call i32 @drm_gem_object_put_unlocked(%struct.TYPE_10__* %78)
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %172

82:                                               ; preds = %70
  %83 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %84 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %85 = call %struct.fb_info* @armada_framebuffer_create(%struct.drm_device* %83, %struct.drm_mode_fb_cmd2* %7, %struct.armada_gem_object* %84)
  %86 = bitcast %struct.fb_info* %85 to %struct.armada_framebuffer*
  store %struct.armada_framebuffer* %86, %struct.armada_framebuffer** %8, align 8
  %87 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %88 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %87, i32 0, i32 1
  %89 = call i32 @drm_gem_object_put_unlocked(%struct.TYPE_10__* %88)
  %90 = load %struct.armada_framebuffer*, %struct.armada_framebuffer** %8, align 8
  %91 = bitcast %struct.armada_framebuffer* %90 to %struct.fb_info*
  %92 = call i64 @IS_ERR(%struct.fb_info* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %82
  %95 = load %struct.armada_framebuffer*, %struct.armada_framebuffer** %8, align 8
  %96 = bitcast %struct.armada_framebuffer* %95 to %struct.fb_info*
  %97 = call i32 @PTR_ERR(%struct.fb_info* %96)
  store i32 %97, i32* %3, align 4
  br label %172

98:                                               ; preds = %82
  %99 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %100 = call %struct.fb_info* @drm_fb_helper_alloc_fbi(%struct.drm_fb_helper* %99)
  store %struct.fb_info* %100, %struct.fb_info** %10, align 8
  %101 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %102 = call i64 @IS_ERR(%struct.fb_info* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %106 = call i32 @PTR_ERR(%struct.fb_info* %105)
  store i32 %106, i32* %12, align 4
  br label %161

107:                                              ; preds = %98
  %108 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %109 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %108, i32 0, i32 4
  store i32* @armada_fb_ops, i32** %109, align 8
  %110 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %111 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %114 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  store i64 %112, i64* %115, align 8
  %116 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %117 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %121 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  %123 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %124 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %128 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  %129 = load i8*, i8** %13, align 8
  %130 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %131 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  %132 = load %struct.armada_framebuffer*, %struct.armada_framebuffer** %8, align 8
  %133 = getelementptr inbounds %struct.armada_framebuffer, %struct.armada_framebuffer* %132, i32 0, i32 0
  %134 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %135 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %134, i32 0, i32 0
  store %struct.TYPE_9__* %133, %struct.TYPE_9__** %135, align 8
  %136 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %137 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %138 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %139 = call i32 @drm_fb_helper_fill_info(%struct.fb_info* %136, %struct.drm_fb_helper* %137, %struct.drm_fb_helper_surface_size* %138)
  %140 = load %struct.armada_framebuffer*, %struct.armada_framebuffer** %8, align 8
  %141 = getelementptr inbounds %struct.armada_framebuffer, %struct.armada_framebuffer* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.armada_framebuffer*, %struct.armada_framebuffer** %8, align 8
  %145 = getelementptr inbounds %struct.armada_framebuffer, %struct.armada_framebuffer* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.armada_framebuffer*, %struct.armada_framebuffer** %8, align 8
  %149 = getelementptr inbounds %struct.armada_framebuffer, %struct.armada_framebuffer* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = mul nsw i32 %155, 8
  %157 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %158 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %143, i32 %147, i32 %156, i64 %159)
  store i32 0, i32* %3, align 4
  br label %172

161:                                              ; preds = %104
  %162 = load %struct.armada_framebuffer*, %struct.armada_framebuffer** %8, align 8
  %163 = getelementptr inbounds %struct.armada_framebuffer, %struct.armada_framebuffer* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %166, align 8
  %168 = load %struct.armada_framebuffer*, %struct.armada_framebuffer** %8, align 8
  %169 = getelementptr inbounds %struct.armada_framebuffer, %struct.armada_framebuffer* %168, i32 0, i32 0
  %170 = call i32 %167(%struct.TYPE_9__* %169)
  %171 = load i32, i32* %12, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %161, %107, %94, %76, %65, %55
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @memset(%struct.drm_mode_fb_cmd2*, i32, i32) #1

declare dso_local i32 @armada_pitch(i32, i32) #1

declare dso_local i32 @drm_mode_legacy_fb_format(i32, i32) #1

declare dso_local %struct.armada_gem_object* @armada_gem_alloc_private_object(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @armada_gem_linear_back(%struct.drm_device*, %struct.armada_gem_object*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.TYPE_10__*) #1

declare dso_local i8* @armada_gem_map_object(%struct.drm_device*, %struct.armada_gem_object*) #1

declare dso_local %struct.fb_info* @armada_framebuffer_create(%struct.drm_device*, %struct.drm_mode_fb_cmd2*, %struct.armada_gem_object*) #1

declare dso_local i64 @IS_ERR(%struct.fb_info*) #1

declare dso_local i32 @PTR_ERR(%struct.fb_info*) #1

declare dso_local %struct.fb_info* @drm_fb_helper_alloc_fbi(%struct.drm_fb_helper*) #1

declare dso_local i32 @drm_fb_helper_fill_info(%struct.fb_info*, %struct.drm_fb_helper*, %struct.drm_fb_helper_surface_size*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
