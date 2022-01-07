; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_gmc_v8_0_check_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_gmc_v8_0_check_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@mmSRBM_STATUS = common dso_local global i32 0, align 4
@SRBM_STATUS__VMC_BUSY_MASK = common dso_local global i32 0, align 4
@SRBM_SOFT_RESET = common dso_local global i32 0, align 4
@SOFT_RESET_VMC = common dso_local global i32 0, align 4
@SRBM_STATUS__MCB_BUSY_MASK = common dso_local global i32 0, align 4
@SRBM_STATUS__MCB_NON_DISPLAY_BUSY_MASK = common dso_local global i32 0, align 4
@SRBM_STATUS__MCC_BUSY_MASK = common dso_local global i32 0, align 4
@SRBM_STATUS__MCD_BUSY_MASK = common dso_local global i32 0, align 4
@AMD_IS_APU = common dso_local global i32 0, align 4
@SOFT_RESET_MC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gmc_v8_0_check_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v8_0_check_soft_reset(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %5, align 8
  %9 = load i32, i32* @mmSRBM_STATUS, align 4
  %10 = call i32 @RREG32(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @SRBM_STATUS__VMC_BUSY_MASK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %18 = load i32, i32* @SOFT_RESET_VMC, align 4
  %19 = call i32 @REG_SET_FIELD(i32 %16, i32 %17, i32 %18, i32 1)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %15, %1
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @SRBM_STATUS__MCB_BUSY_MASK, align 4
  %23 = load i32, i32* @SRBM_STATUS__MCB_NON_DISPLAY_BUSY_MASK, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SRBM_STATUS__MCC_BUSY_MASK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SRBM_STATUS__MCD_BUSY_MASK, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %21, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %20
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AMD_IS_APU, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %41 = load i32, i32* @SOFT_RESET_MC, align 4
  %42 = call i32 @REG_SET_FIELD(i32 %39, i32 %40, i32 %41, i32 1)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %38, %31
  br label %44

44:                                               ; preds = %43, %20
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  store i32 1, i32* %2, align 4
  br label %56

52:                                               ; preds = %44
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 4
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
