; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v10.c_kgd_hqd_sdma_is_occupied.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v10.c_kgd_hqd_sdma_is_occupied.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { i32 }
%struct.v10_sdma_mqd = type { i32, i32 }

@mmSDMA0_RLC0_RB_CNTL = common dso_local global i32 0, align 4
@SDMA0_RLC0_RB_CNTL__RB_ENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kgd_dev*, i8*)* @kgd_hqd_sdma_is_occupied to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kgd_hqd_sdma_is_occupied(%struct.kgd_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kgd_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.v10_sdma_mqd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kgd_dev* %0, %struct.kgd_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.kgd_dev*, %struct.kgd_dev** %4, align 8
  %11 = call %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev* %10)
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.v10_sdma_mqd* @get_sdma_mqd(i8* %12)
  store %struct.v10_sdma_mqd* %13, %struct.v10_sdma_mqd** %7, align 8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %15 = load %struct.v10_sdma_mqd*, %struct.v10_sdma_mqd** %7, align 8
  %16 = getelementptr inbounds %struct.v10_sdma_mqd, %struct.v10_sdma_mqd* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v10_sdma_mqd*, %struct.v10_sdma_mqd** %7, align 8
  %19 = getelementptr inbounds %struct.v10_sdma_mqd, %struct.v10_sdma_mqd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @get_sdma_base_addr(%struct.amdgpu_device* %14, i32 %17, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @mmSDMA0_RLC0_RB_CNTL, align 4
  %24 = add nsw i32 %22, %23
  %25 = call i32 @RREG32(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @SDMA0_RLC0_RB_CNTL__RB_ENABLE_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev*) #1

declare dso_local %struct.v10_sdma_mqd* @get_sdma_mqd(i8*) #1

declare dso_local i32 @get_sdma_base_addr(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
