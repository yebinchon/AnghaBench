; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_soc15.c_soc15_asic_reset_method.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_soc15.c_soc15_asic_reset_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.amdgpu_hive_info = type { i32 }
%struct.amdgpu_ras = type { i32 }

@AMD_RESET_METHOD_MODE2 = common dso_local global i32 0, align 4
@AMD_RESET_METHOD_BACO = common dso_local global i32 0, align 4
@AMD_RESET_METHOD_MODE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @soc15_asic_reset_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc15_asic_reset_method(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_hive_info*, align 8
  %6 = alloca %struct.amdgpu_ras*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %46 [
    i32 131, label %10
    i32 130, label %12
    i32 129, label %12
    i32 128, label %15
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @AMD_RESET_METHOD_MODE2, align 4
  store i32 %11, i32* %2, align 4
  br label %54

12:                                               ; preds = %1, %1
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = call i32 @soc15_asic_get_baco_capability(%struct.amdgpu_device* %13, i32* %4)
  br label %47

15:                                               ; preds = %1
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %19, 524391
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %23 = call i32 @soc15_asic_get_baco_capability(%struct.amdgpu_device* %22, i32* %4)
  br label %25

24:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = call %struct.amdgpu_hive_info* @amdgpu_get_xgmi_hive(%struct.amdgpu_device* %29, i32 0)
  store %struct.amdgpu_hive_info* %30, %struct.amdgpu_hive_info** %5, align 8
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %32 = call %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device* %31)
  store %struct.amdgpu_ras* %32, %struct.amdgpu_ras** %6, align 8
  %33 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** %5, align 8
  %34 = icmp ne %struct.amdgpu_hive_info* %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %28
  %36 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %6, align 8
  %37 = icmp ne %struct.amdgpu_ras* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %6, align 8
  %40 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %28
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %38, %35
  br label %45

45:                                               ; preds = %44, %25
  br label %47

46:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %45, %12
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @AMD_RESET_METHOD_BACO, align 4
  store i32 %51, i32* %2, align 4
  br label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @AMD_RESET_METHOD_MODE1, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %50, %10
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @soc15_asic_get_baco_capability(%struct.amdgpu_device*, i32*) #1

declare dso_local %struct.amdgpu_hive_info* @amdgpu_get_xgmi_hive(%struct.amdgpu_device*, i32) #1

declare dso_local %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
