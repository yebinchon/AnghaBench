; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_early_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_early_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CHIP_RAVEN = common dso_local global i64 0, align 8
@CHIP_RENOIR = common dso_local global i64 0, align 8
@CHIP_ARCTURUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Failed to load sdma firmware!\0A\00", align 1
@CHIP_VEGA10 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @sdma_v4_0_early_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v4_0_early_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %4, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CHIP_RAVEN, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CHIP_RENOIR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13, %1
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  br label %38

23:                                               ; preds = %13
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CHIP_ARCTURUS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 8, i32* %32, align 8
  br label %37

33:                                               ; preds = %23
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 2, i32* %36, align 8
  br label %37

37:                                               ; preds = %33, %29
  br label %38

38:                                               ; preds = %37, %19
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %40 = call i32 @sdma_v4_0_init_microcode(%struct.amdgpu_device* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %78

46:                                               ; preds = %38
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CHIP_VEGA10, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %54 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  br label %69

60:                                               ; preds = %52, %46
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %62 = call i64 @sdma_v4_0_fw_support_paging_queue(%struct.amdgpu_device* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %60
  br label %69

69:                                               ; preds = %68, %56
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %71 = call i32 @sdma_v4_0_set_ring_funcs(%struct.amdgpu_device* %70)
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %73 = call i32 @sdma_v4_0_set_buffer_funcs(%struct.amdgpu_device* %72)
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %75 = call i32 @sdma_v4_0_set_vm_pte_funcs(%struct.amdgpu_device* %74)
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %77 = call i32 @sdma_v4_0_set_irq_funcs(%struct.amdgpu_device* %76)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %69, %43
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @sdma_v4_0_init_microcode(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i64 @sdma_v4_0_fw_support_paging_queue(%struct.amdgpu_device*) #1

declare dso_local i32 @sdma_v4_0_set_ring_funcs(%struct.amdgpu_device*) #1

declare dso_local i32 @sdma_v4_0_set_buffer_funcs(%struct.amdgpu_device*) #1

declare dso_local i32 @sdma_v4_0_set_vm_pte_funcs(%struct.amdgpu_device*) #1

declare dso_local i32 @sdma_v4_0_set_irq_funcs(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
