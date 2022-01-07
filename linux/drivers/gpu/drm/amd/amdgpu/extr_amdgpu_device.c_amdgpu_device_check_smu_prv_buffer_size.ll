; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_check_smu_prv_buffer_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_check_smu_prv_buffer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sysinfo = type { i32, i64 }

@amdgpu_smu_memory_pool_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Not 64-bit OS, feature not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Smu memory pool size not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"No enough system memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @amdgpu_device_check_smu_prv_buffer_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_device_check_smu_prv_buffer_size(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.sysinfo, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 1, i32* %4, align 4
  store i32 -1207959552, i32* %6, align 4
  store i32 -1207959552, i32* %7, align 4
  %8 = load i32, i32* @amdgpu_smu_memory_pool_size, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %62

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = call i32 @DRM_WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %58

16:                                               ; preds = %11
  %17 = call i32 @si_meminfo(%struct.sysinfo* %3)
  %18 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %3, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %20, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @amdgpu_smu_memory_pool_size, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* @amdgpu_smu_memory_pool_size, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %35

29:                                               ; preds = %26, %16
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %56

34:                                               ; preds = %29
  br label %50

35:                                               ; preds = %26
  %36 = load i32, i32* @amdgpu_smu_memory_pool_size, align 4
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @amdgpu_smu_memory_pool_size, align 4
  %40 = icmp eq i32 %39, 8
  br i1 %40, label %41, label %47

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %56

46:                                               ; preds = %41
  br label %49

47:                                               ; preds = %38
  %48 = call i32 @DRM_WARN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %58

49:                                               ; preds = %46
  br label %50

50:                                               ; preds = %49, %34
  %51 = load i32, i32* @amdgpu_smu_memory_pool_size, align 4
  %52 = shl i32 %51, 28
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  br label %62

56:                                               ; preds = %45, %33
  %57 = call i32 @DRM_WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %47, %14
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %60 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 0, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %50, %10
  ret void
}

declare dso_local i32 @DRM_WARN(i8*) #1

declare dso_local i32 @si_meminfo(%struct.sysinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
