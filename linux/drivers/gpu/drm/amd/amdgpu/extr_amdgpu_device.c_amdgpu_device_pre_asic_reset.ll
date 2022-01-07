; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_pre_asic_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_pre_asic_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.amdgpu_ring** }
%struct.amdgpu_ring = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.amdgpu_job = type { i32 }

@AMDGPU_MAX_RINGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"soft reset failed, will fallback to full reset!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_job*, i32*)* @amdgpu_device_pre_asic_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_device_pre_asic_reset(%struct.amdgpu_device* %0, %struct.amdgpu_job* %1, i32* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_job*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.amdgpu_ring*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_job* %1, %struct.amdgpu_job** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %37, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @AMDGPU_MAX_RINGS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 0
  %20 = load %struct.amdgpu_ring**, %struct.amdgpu_ring*** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.amdgpu_ring*, %struct.amdgpu_ring** %20, i64 %22
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %23, align 8
  store %struct.amdgpu_ring* %24, %struct.amdgpu_ring** %10, align 8
  %25 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %26 = icmp ne %struct.amdgpu_ring* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %17
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %29 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27, %17
  br label %37

34:                                               ; preds = %27
  %35 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %36 = call i32 @amdgpu_fence_driver_force_completion(%struct.amdgpu_ring* %35)
  br label %37

37:                                               ; preds = %34, %33
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %13

40:                                               ; preds = %13
  %41 = load %struct.amdgpu_job*, %struct.amdgpu_job** %5, align 8
  %42 = icmp ne %struct.amdgpu_job* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.amdgpu_job*, %struct.amdgpu_job** %5, align 8
  %45 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %44, i32 0, i32 0
  %46 = call i32 @drm_sched_increase_karma(i32* %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %49 = call i32 @amdgpu_sriov_vf(%struct.amdgpu_device* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %85, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %56 = call i32 @amdgpu_device_ip_need_full_reset(%struct.amdgpu_device* %55)
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %76, label %60

60:                                               ; preds = %57
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %62 = call i32 @amdgpu_device_ip_pre_soft_reset(%struct.amdgpu_device* %61)
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %64 = call i32 @amdgpu_device_ip_soft_reset(%struct.amdgpu_device* %63)
  store i32 %64, i32* %8, align 4
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %66 = call i32 @amdgpu_device_ip_post_soft_reset(%struct.amdgpu_device* %65)
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %60
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %71 = call i64 @amdgpu_device_ip_check_soft_reset(%struct.amdgpu_device* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69, %60
  %74 = call i32 @DRM_INFO(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %75

75:                                               ; preds = %73, %69
  br label %76

76:                                               ; preds = %75, %57
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %81 = call i32 @amdgpu_device_ip_suspend(%struct.amdgpu_device* %80)
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %9, align 4
  %84 = load i32*, i32** %6, align 8
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %82, %47
  %86 = load i32, i32* %8, align 4
  ret i32 %86
}

declare dso_local i32 @amdgpu_fence_driver_force_completion(%struct.amdgpu_ring*) #1

declare dso_local i32 @drm_sched_increase_karma(i32*) #1

declare dso_local i32 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_device_ip_need_full_reset(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_device_ip_pre_soft_reset(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_device_ip_soft_reset(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_device_ip_post_soft_reset(%struct.amdgpu_device*) #1

declare dso_local i64 @amdgpu_device_ip_check_soft_reset(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @amdgpu_device_ip_suspend(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
