; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v3_0.c_vce_v3_0_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v3_0.c_vce_v3_0_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@mmGRBM_GFX_INDEX = common dso_local global i32 0, align 4
@CHIP_STONEY = common dso_local global i64 0, align 8
@mmVCE_VCPU_CNTL = common dso_local global i32 0, align 4
@VCE_VCPU_CNTL = common dso_local global i32 0, align 4
@CLK_EN = common dso_local global i32 0, align 4
@VCE_SOFT_RESET = common dso_local global i32 0, align 4
@ECPU_SOFT_RESET = common dso_local global i32 0, align 4
@mmVCE_STATUS = common dso_local global i32 0, align 4
@mmGRBM_GFX_INDEX_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @vce_v3_0_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vce_v3_0_stop(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %4 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock(i32* %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %43, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %46

10:                                               ; preds = %7
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %3, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  br label %43

20:                                               ; preds = %10
  %21 = load i32, i32* @mmGRBM_GFX_INDEX, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @GET_VCE_INSTANCE(i32 %22)
  %24 = call i32 @WREG32(i32 %21, i32 %23)
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CHIP_STONEY, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* @mmVCE_VCPU_CNTL, align 4
  %32 = call i32 @WREG32_P(i32 %31, i32 0, i32 -2097154)
  br label %37

33:                                               ; preds = %20
  %34 = load i32, i32* @VCE_VCPU_CNTL, align 4
  %35 = load i32, i32* @CLK_EN, align 4
  %36 = call i32 @WREG32_FIELD(i32 %34, i32 %35, i32 0)
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i32, i32* @VCE_SOFT_RESET, align 4
  %39 = load i32, i32* @ECPU_SOFT_RESET, align 4
  %40 = call i32 @WREG32_FIELD(i32 %38, i32 %39, i32 1)
  %41 = load i32, i32* @mmVCE_STATUS, align 4
  %42 = call i32 @WREG32(i32 %41, i32 0)
  br label %43

43:                                               ; preds = %37, %19
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %7

46:                                               ; preds = %7
  %47 = load i32, i32* @mmGRBM_GFX_INDEX, align 4
  %48 = load i32, i32* @mmGRBM_GFX_INDEX_DEFAULT, align 4
  %49 = call i32 @WREG32(i32 %47, i32 %48)
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @GET_VCE_INSTANCE(i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @WREG32_FIELD(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
