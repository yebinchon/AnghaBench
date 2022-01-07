; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modeset_helper.c_create_primary_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modeset_helper.c_create_primary_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to allocate primary plane\0A\00", align 1
@drm_primary_helper_funcs = common dso_local global i32 0, align 4
@safe_modeset_formats = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_plane* (%struct.drm_device*)* @create_primary_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_plane* @create_primary_plane(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.drm_plane* @kzalloc(i32 4, i32 %6)
  store %struct.drm_plane* %7, %struct.drm_plane** %4, align 8
  %8 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %9 = icmp eq %struct.drm_plane* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store %struct.drm_plane* null, %struct.drm_plane** %2, align 8
  br label %29

12:                                               ; preds = %1
  %13 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %14 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %17 = load i32, i32* @safe_modeset_formats, align 4
  %18 = load i32, i32* @safe_modeset_formats, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  %21 = call i32 @drm_universal_plane_init(%struct.drm_device* %15, %struct.drm_plane* %16, i32 0, i32* @drm_primary_helper_funcs, i32 %17, i32 %19, i32* null, i32 %20, i32* null)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %12
  %25 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %26 = call i32 @kfree(%struct.drm_plane* %25)
  store %struct.drm_plane* null, %struct.drm_plane** %4, align 8
  br label %27

27:                                               ; preds = %24, %12
  %28 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  store %struct.drm_plane* %28, %struct.drm_plane** %2, align 8
  br label %29

29:                                               ; preds = %27, %10
  %30 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  ret %struct.drm_plane* %30
}

declare dso_local %struct.drm_plane* @kzalloc(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @drm_universal_plane_init(%struct.drm_device*, %struct.drm_plane*, i32, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @kfree(%struct.drm_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
