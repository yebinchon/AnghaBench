; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_sanitize_fence_mmio_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_sanitize_fence_mmio_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"access oob fence reg %d/%d\0A\00", align 1
@GVT_FAILSAFE_UNSUPPORTED_GUEST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, i32, i8*, i32)* @sanitize_fence_mmio_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sanitize_fence_mmio_access(%struct.intel_vgpu* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_vgpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %12 = call i32 @vgpu_fence_sz(%struct.intel_vgpu* %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp uge i32 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %21 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %16
  %25 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %26 = load i32, i32* @GVT_FAILSAFE_UNSUPPORTED_GUEST, align 4
  %27 = call i32 @enter_failsafe_mode(%struct.intel_vgpu* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %16
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @memset(i8* %29, i32 0, i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %35

34:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @vgpu_fence_sz(%struct.intel_vgpu*) #1

declare dso_local i32 @gvt_vgpu_err(i8*, i32, i32) #1

declare dso_local i32 @enter_failsafe_mode(%struct.intel_vgpu*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
