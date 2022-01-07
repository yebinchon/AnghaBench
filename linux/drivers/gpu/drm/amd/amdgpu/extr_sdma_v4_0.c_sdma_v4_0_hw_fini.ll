; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_hw_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_hw_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }

@AMDGPU_SDMA_IRQ_INSTANCE0 = common dso_local global i64 0, align 8
@CHIP_RAVEN = common dso_local global i64 0, align 8
@CHIP_RENOIR = common dso_local global i64 0, align 8
@AMD_IP_BLOCK_TYPE_SDMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @sdma_v4_0_hw_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v4_0_hw_fini(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %4, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %9 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

12:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %30, %12
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %13
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i64, i64* @AMDGPU_SDMA_IRQ_INSTANCE0, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = call i32 @amdgpu_irq_put(%struct.amdgpu_device* %21, i32* %24, i64 %28)
  br label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %13

33:                                               ; preds = %13
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %35 = call i32 @sdma_v4_0_ctx_switch_enable(%struct.amdgpu_device* %34, i32 0)
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %37 = call i32 @sdma_v4_0_enable(%struct.amdgpu_device* %36, i32 0)
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CHIP_RAVEN, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %33
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %49, %43, %33
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @CHIP_RENOIR, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57, %49
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %65 = load i32, i32* @AMD_IP_BLOCK_TYPE_SDMA, align 4
  %66 = call i32 @amdgpu_dpm_set_powergating_by_smu(%struct.amdgpu_device* %64, i32 %65, i32 1)
  br label %67

67:                                               ; preds = %63, %57
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %11
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_irq_put(%struct.amdgpu_device*, i32*, i64) #1

declare dso_local i32 @sdma_v4_0_ctx_switch_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @sdma_v4_0_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_dpm_set_powergating_by_smu(%struct.amdgpu_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
