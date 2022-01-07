; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_calculate_power_efficiency_ratio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_calculate_power_efficiency_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@SISLANDS_DPM2_PWREFFICIENCYRATIO_MARGIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.amdgpu_device*, i64, i64)* @si_calculate_power_efficiency_ratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @si_calculate_power_efficiency_ratio(%struct.amdgpu_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* @SISLANDS_DPM2_PWREFFICIENCYRATIO_MARGIN, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %7, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* %10, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %3
  store i64 0, i64* %4, align 8
  br label %43

23:                                               ; preds = %19
  %24 = load i64, i64* %10, align 8
  %25 = mul nsw i64 1024, %24
  %26 = load i64, i64* %10, align 8
  %27 = mul nsw i64 %25, %26
  %28 = load i64, i64* %8, align 8
  %29 = add nsw i64 1000, %28
  %30 = mul nsw i64 %27, %29
  %31 = call i64 @div64_u64(i64 %30, i64 1000)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = mul nsw i64 %32, %33
  store i64 %34, i64* %13, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* %13, align 8
  %37 = call i64 @div64_u64(i64 %35, i64 %36)
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp sgt i64 %38, 65535
  br i1 %39, label %40, label %41

40:                                               ; preds = %23
  store i64 0, i64* %4, align 8
  br label %43

41:                                               ; preds = %23
  %42 = load i64, i64* %11, align 8
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %41, %40, %22
  %44 = load i64, i64* %4, align 8
  ret i64 %44
}

declare dso_local i64 @div64_u64(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
