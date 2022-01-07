; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ioc32.c_amdgpu_kms_compat_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ioc32.c_amdgpu_kms_compat_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@DRM_COMMAND_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @amdgpu_kms_compat_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @DRM_IOCTL_NR(i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @DRM_COMMAND_BASE, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @drm_compat_ioctl(%struct.file* %16, i32 %17, i64 %18)
  store i64 %19, i64* %4, align 8
  br label %27

20:                                               ; preds = %3
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @amdgpu_drm_ioctl(%struct.file* %21, i32 %22, i64 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %4, align 8
  br label %27

27:                                               ; preds = %20, %15
  %28 = load i64, i64* %4, align 8
  ret i64 %28
}

declare dso_local i32 @DRM_IOCTL_NR(i32) #1

declare dso_local i64 @drm_compat_ioctl(%struct.file*, i32, i64) #1

declare dso_local i32 @amdgpu_drm_ioctl(%struct.file*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
