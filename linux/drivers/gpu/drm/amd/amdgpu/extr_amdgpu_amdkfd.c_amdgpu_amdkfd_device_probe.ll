; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd.c_amdgpu_amdkfd_device_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd.c_amdgpu_amdkfd_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_3__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.kfd2kgd_calls = type { i32 }
%struct.kgd_dev = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"kfd not supported on this ASIC\0A\00", align 1
@amdgpu_amdkfd_total_mem_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_amdkfd_device_probe(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.kfd2kgd_calls*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %4 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %15 [
    i32 143, label %7
    i32 132, label %7
    i32 142, label %7
    i32 136, label %7
    i32 135, label %7
    i32 134, label %7
    i32 128, label %7
    i32 131, label %9
    i32 130, label %9
    i32 129, label %9
    i32 133, label %9
    i32 144, label %11
    i32 139, label %13
    i32 137, label %13
    i32 138, label %13
  ]

7:                                                ; preds = %1, %1, %1, %1, %1, %1, %1
  %8 = call %struct.kfd2kgd_calls* (...) @amdgpu_amdkfd_gfx_8_0_get_functions()
  store %struct.kfd2kgd_calls* %8, %struct.kfd2kgd_calls** %3, align 8
  br label %20

9:                                                ; preds = %1, %1, %1, %1
  %10 = call %struct.kfd2kgd_calls* (...) @amdgpu_amdkfd_gfx_9_0_get_functions()
  store %struct.kfd2kgd_calls* %10, %struct.kfd2kgd_calls** %3, align 8
  br label %20

11:                                               ; preds = %1
  %12 = call %struct.kfd2kgd_calls* (...) @amdgpu_amdkfd_arcturus_get_functions()
  store %struct.kfd2kgd_calls* %12, %struct.kfd2kgd_calls** %3, align 8
  br label %20

13:                                               ; preds = %1, %1, %1
  %14 = call %struct.kfd2kgd_calls* (...) @amdgpu_amdkfd_gfx_10_0_get_functions()
  store %struct.kfd2kgd_calls* %14, %struct.kfd2kgd_calls** %3, align 8
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dev_info(i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %45

20:                                               ; preds = %13, %11, %9, %7
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %22 = bitcast %struct.amdgpu_device* %21 to %struct.kgd_dev*
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.kfd2kgd_calls*, %struct.kfd2kgd_calls** %3, align 8
  %27 = call i32 @kgd2kfd_probe(%struct.kgd_dev* %22, i32 %25, %struct.kfd2kgd_calls* %26)
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %20
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @amdgpu_amdkfd_total_mem_size, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* @amdgpu_amdkfd_total_mem_size, align 4
  br label %45

45:                                               ; preds = %15, %36, %20
  ret void
}

declare dso_local %struct.kfd2kgd_calls* @amdgpu_amdkfd_gfx_8_0_get_functions(...) #1

declare dso_local %struct.kfd2kgd_calls* @amdgpu_amdkfd_gfx_9_0_get_functions(...) #1

declare dso_local %struct.kfd2kgd_calls* @amdgpu_amdkfd_arcturus_get_functions(...) #1

declare dso_local %struct.kfd2kgd_calls* @amdgpu_amdkfd_gfx_10_0_get_functions(...) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @kgd2kfd_probe(%struct.kgd_dev*, i32, %struct.kfd2kgd_calls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
