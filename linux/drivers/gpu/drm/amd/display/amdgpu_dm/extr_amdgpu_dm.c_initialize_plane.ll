; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_initialize_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_initialize_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_display_manager = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.amdgpu_mode_info = type { %struct.drm_plane** }
%struct.drm_plane = type { i32 }
%struct.dc_plane_cap = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"KMS: Failed to allocate plane\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"KMS: Failed to initialize plane\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_display_manager*, %struct.amdgpu_mode_info*, i32, i32, %struct.dc_plane_cap*)* @initialize_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initialize_plane(%struct.amdgpu_display_manager* %0, %struct.amdgpu_mode_info* %1, i32 %2, i32 %3, %struct.dc_plane_cap* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_display_manager*, align 8
  %8 = alloca %struct.amdgpu_mode_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dc_plane_cap*, align 8
  %12 = alloca %struct.drm_plane*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.amdgpu_display_manager* %0, %struct.amdgpu_display_manager** %7, align 8
  store %struct.amdgpu_mode_info* %1, %struct.amdgpu_mode_info** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.dc_plane_cap* %4, %struct.dc_plane_cap** %11, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.drm_plane* @kzalloc(i32 4, i32 %15)
  store %struct.drm_plane* %16, %struct.drm_plane** %12, align 8
  %17 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %18 = icmp ne %struct.drm_plane* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %65

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %26 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %9, align 4
  %28 = shl i32 1, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %13, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %7, align 8
  %32 = getelementptr inbounds %struct.amdgpu_display_manager, %struct.amdgpu_display_manager* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %30, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %23
  store i64 255, i64* %13, align 8
  br label %39

39:                                               ; preds = %38, %23
  %40 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %7, align 8
  %41 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load %struct.dc_plane_cap*, %struct.dc_plane_cap** %11, align 8
  %44 = call i32 @amdgpu_dm_plane_init(%struct.amdgpu_display_manager* %40, %struct.drm_plane* %41, i64 %42, %struct.dc_plane_cap* %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %50 = call i32 @kfree(%struct.drm_plane* %49)
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %6, align 4
  br label %65

52:                                               ; preds = %39
  %53 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %8, align 8
  %54 = icmp ne %struct.amdgpu_mode_info* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %57 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %8, align 8
  %58 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %57, i32 0, i32 0
  %59 = load %struct.drm_plane**, %struct.drm_plane*** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.drm_plane*, %struct.drm_plane** %59, i64 %61
  store %struct.drm_plane* %56, %struct.drm_plane** %62, align 8
  br label %63

63:                                               ; preds = %55, %52
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %63, %47, %19
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local %struct.drm_plane* @kzalloc(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @amdgpu_dm_plane_init(%struct.amdgpu_display_manager*, %struct.drm_plane*, i64, %struct.dc_plane_cap*) #1

declare dso_local i32 @kfree(%struct.drm_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
