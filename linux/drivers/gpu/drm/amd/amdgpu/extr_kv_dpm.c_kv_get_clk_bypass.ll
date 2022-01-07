; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_get_clk_bypass.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_get_clk_bypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.kv_power_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32)* @kv_get_clk_bypass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_get_clk_bypass(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kv_power_info*, align 8
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = call %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device* %7)
  store %struct.kv_power_info* %8, %struct.kv_power_info** %5, align 8
  %9 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %10 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @kv_get_clock_difference(i32 %14, i32 40000)
  %16 = icmp slt i32 %15, 200
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 3, i32* %6, align 4
  br label %43

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @kv_get_clock_difference(i32 %19, i32 30000)
  %21 = icmp slt i32 %20, 200
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 2, i32* %6, align 4
  br label %42

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @kv_get_clock_difference(i32 %24, i32 20000)
  %26 = icmp slt i32 %25, 200
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 7, i32* %6, align 4
  br label %41

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @kv_get_clock_difference(i32 %29, i32 15000)
  %31 = icmp slt i32 %30, 200
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 6, i32* %6, align 4
  br label %40

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @kv_get_clock_difference(i32 %34, i32 10000)
  %36 = icmp slt i32 %35, 200
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 8, i32* %6, align 4
  br label %39

38:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %37
  br label %40

40:                                               ; preds = %39, %32
  br label %41

41:                                               ; preds = %40, %27
  br label %42

42:                                               ; preds = %41, %22
  br label %43

43:                                               ; preds = %42, %17
  br label %45

44:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_get_clock_difference(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
