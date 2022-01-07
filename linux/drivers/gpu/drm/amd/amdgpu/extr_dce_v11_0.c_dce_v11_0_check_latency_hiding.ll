; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_check_latency_hiding.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_check_latency_hiding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce10_wm_params = type { i64, i64, i64, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dce10_wm_params*)* @dce_v11_0_check_latency_hiding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v11_0_check_latency_hiding(%struct.dce10_wm_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dce10_wm_params*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  store %struct.dce10_wm_params* %0, %struct.dce10_wm_params** %3, align 8
  %9 = load %struct.dce10_wm_params*, %struct.dce10_wm_params** %3, align 8
  %10 = getelementptr inbounds %struct.dce10_wm_params, %struct.dce10_wm_params* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.dce10_wm_params*, %struct.dce10_wm_params** %3, align 8
  %13 = getelementptr inbounds %struct.dce10_wm_params, %struct.dce10_wm_params* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sdiv i64 %11, %14
  store i64 %15, i64* %4, align 8
  %16 = load %struct.dce10_wm_params*, %struct.dce10_wm_params** %3, align 8
  %17 = getelementptr inbounds %struct.dce10_wm_params, %struct.dce10_wm_params* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.dce10_wm_params*, %struct.dce10_wm_params** %3, align 8
  %20 = getelementptr inbounds %struct.dce10_wm_params, %struct.dce10_wm_params* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  store i64 %22, i64* %5, align 8
  %23 = call i64 @dfixed_const(i32 1)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = load %struct.dce10_wm_params*, %struct.dce10_wm_params** %3, align 8
  %26 = getelementptr inbounds %struct.dce10_wm_params, %struct.dce10_wm_params* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  store i64 1, i64* %6, align 8
  br label %43

33:                                               ; preds = %1
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.dce10_wm_params*, %struct.dce10_wm_params** %3, align 8
  %36 = getelementptr inbounds %struct.dce10_wm_params, %struct.dce10_wm_params* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  %39 = icmp sle i64 %34, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i64 1, i64* %6, align 8
  br label %42

41:                                               ; preds = %33
  store i64 2, i64* %6, align 8
  br label %42

42:                                               ; preds = %41, %40
  br label %43

43:                                               ; preds = %42, %32
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %5, align 8
  %46 = mul nsw i64 %44, %45
  %47 = load %struct.dce10_wm_params*, %struct.dce10_wm_params** %3, align 8
  %48 = getelementptr inbounds %struct.dce10_wm_params, %struct.dce10_wm_params* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  store i64 %50, i64* %7, align 8
  %51 = load %struct.dce10_wm_params*, %struct.dce10_wm_params** %3, align 8
  %52 = call i64 @dce_v11_0_latency_watermark(%struct.dce10_wm_params* %51)
  %53 = load i64, i64* %7, align 8
  %54 = icmp sle i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  br label %57

56:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @dfixed_const(i32) #1

declare dso_local i64 @dce_v11_0_latency_watermark(%struct.dce10_wm_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
