; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@CHIP_RAVEN = common dso_local global i64 0, align 8
@CHIP_RENOIR = common dso_local global i64 0, align 8
@AMD_IP_BLOCK_TYPE_SDMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @sdma_v4_0_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v4_0_hw_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %6, %struct.amdgpu_device** %4, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CHIP_RAVEN, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %18, %12, %1
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CHIP_RENOIR, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26, %18
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %34 = load i32, i32* @AMD_IP_BLOCK_TYPE_SDMA, align 4
  %35 = call i32 @amdgpu_dpm_set_powergating_by_smu(%struct.amdgpu_device* %33, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %32, %26
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %38 = call i32 @amdgpu_sriov_vf(%struct.amdgpu_device* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %42 = call i32 @sdma_v4_0_init_golden_registers(%struct.amdgpu_device* %41)
  br label %43

43:                                               ; preds = %40, %36
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %45 = call i32 @sdma_v4_0_start(%struct.amdgpu_device* %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @amdgpu_dpm_set_powergating_by_smu(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @sdma_v4_0_init_golden_registers(%struct.amdgpu_device*) #1

declare dso_local i32 @sdma_v4_0_start(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
