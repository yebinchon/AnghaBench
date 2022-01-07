; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_init_fps_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_init_fps_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.kv_power_info = type { i32, i8*, i64, i8*, i64 }

@SMU7_Fusion_DpmTable = common dso_local global i32 0, align 4
@FpsHighT = common dso_local global i32 0, align 4
@FpsLowT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @kv_init_fps_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_init_fps_limits(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.kv_power_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %7 = call %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device* %6)
  store %struct.kv_power_info* %7, %struct.kv_power_info** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %9 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %1
  store i32 45, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i8* @cpu_to_be16(i32 %13)
  %15 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %16 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %15, i32 0, i32 3
  store i8* %14, i8** %16, align 8
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %18 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %19 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @SMU7_Fusion_DpmTable, align 4
  %22 = load i32, i32* @FpsHighT, align 4
  %23 = call i64 @offsetof(i32 %21, i32 %22)
  %24 = add nsw i64 %20, %23
  %25 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %26 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %25, i32 0, i32 3
  %27 = bitcast i8** %26 to i32*
  %28 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %29 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @amdgpu_kv_copy_bytes_to_smc(%struct.amdgpu_device* %17, i64 %24, i32* %27, i32 4, i32 %30)
  store i32 %31, i32* %4, align 4
  store i32 30, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i8* @cpu_to_be16(i32 %32)
  %34 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %35 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %37 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %38 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @SMU7_Fusion_DpmTable, align 4
  %41 = load i32, i32* @FpsLowT, align 4
  %42 = call i64 @offsetof(i32 %40, i32 %41)
  %43 = add nsw i64 %39, %42
  %44 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %45 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %44, i32 0, i32 1
  %46 = bitcast i8** %45 to i32*
  %47 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %48 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @amdgpu_kv_copy_bytes_to_smc(%struct.amdgpu_device* %36, i64 %43, i32* %46, i32 4, i32 %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %12, %1
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @amdgpu_kv_copy_bytes_to_smc(%struct.amdgpu_device*, i64, i32*, i32, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
