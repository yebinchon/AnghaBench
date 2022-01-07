; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_create_common_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_create_common_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i32, i32 }
%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.amdgpu_encoder = type { %struct.drm_display_mode }

@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@DRM_DISPLAY_MODE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_display_mode* (%struct.drm_encoder*, i8*, i32, i32)* @amdgpu_dm_create_common_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_display_mode* @amdgpu_dm_create_common_mode(%struct.drm_encoder* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca %struct.amdgpu_encoder*, align 8
  %12 = alloca %struct.drm_display_mode*, align 8
  %13 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %15 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %10, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %18 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %17)
  store %struct.amdgpu_encoder* %18, %struct.amdgpu_encoder** %11, align 8
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %12, align 8
  %19 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %20 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %19, i32 0, i32 0
  store %struct.drm_display_mode* %20, %struct.drm_display_mode** %13, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %13, align 8
  %23 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device* %21, %struct.drm_display_mode* %22)
  store %struct.drm_display_mode* %23, %struct.drm_display_mode** %12, align 8
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %25 = icmp eq %struct.drm_display_mode* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %5, align 8
  br label %47

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* @DRM_DISPLAY_MODE_LEN, align 4
  %45 = call i32 @strscpy(i32 %42, i8* %43, i32 %44)
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  store %struct.drm_display_mode* %46, %struct.drm_display_mode** %5, align 8
  br label %47

47:                                               ; preds = %27, %26
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  ret %struct.drm_display_mode* %48
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device*, %struct.drm_display_mode*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
