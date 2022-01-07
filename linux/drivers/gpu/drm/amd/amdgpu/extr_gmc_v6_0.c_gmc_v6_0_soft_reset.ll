; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v6_0.c_gmc_v6_0_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v6_0.c_gmc_v6_0_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32 }

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
@.str = private unnamed_addr constant [31 x i8] c"Wait for GMC idle timed out !\0A\00", align 1
@mmSRBM_SOFT_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"SRBM_SOFT_RESET=0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gmc_v6_0_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v6_0_soft_reset(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @mmSRBM_STATUS, align 4
  %9 = call i32 @RREG32(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SRBM_STATUS__VMC_BUSY_MASK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %17 = load i32, i32* @SOFT_RESET_VMC, align 4
  %18 = call i32 @REG_SET_FIELD(i32 %15, i32 %16, i32 %17, i32 1)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %14, %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SRBM_STATUS__MCB_BUSY_MASK, align 4
  %22 = load i32, i32* @SRBM_STATUS__MCB_NON_DISPLAY_BUSY_MASK, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SRBM_STATUS__MCC_BUSY_MASK, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SRBM_STATUS__MCD_BUSY_MASK, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %20, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %19
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @AMD_IS_APU, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %40 = load i32, i32* @SOFT_RESET_MC, align 4
  %41 = call i32 @REG_SET_FIELD(i32 %38, i32 %39, i32 %40, i32 1)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %37, %30
  br label %43

43:                                               ; preds = %42, %19
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %87

46:                                               ; preds = %43
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %48 = call i32 @gmc_v6_0_mc_stop(%struct.amdgpu_device* %47)
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %50 = call i64 @gmc_v6_0_wait_for_idle(%struct.amdgpu_device* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_warn(i32 %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %52, %46
  %58 = load i32, i32* @mmSRBM_SOFT_RESET, align 4
  %59 = call i32 @RREG32(i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @dev_info(i32 %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @mmSRBM_SOFT_RESET, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @WREG32(i32 %68, i32 %69)
  %71 = load i32, i32* @mmSRBM_SOFT_RESET, align 4
  %72 = call i32 @RREG32(i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = call i32 @udelay(i32 50)
  %74 = load i32, i32* %4, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %5, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* @mmSRBM_SOFT_RESET, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @WREG32(i32 %78, i32 %79)
  %81 = load i32, i32* @mmSRBM_SOFT_RESET, align 4
  %82 = call i32 @RREG32(i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = call i32 @udelay(i32 50)
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %85 = call i32 @gmc_v6_0_mc_resume(%struct.amdgpu_device* %84)
  %86 = call i32 @udelay(i32 50)
  br label %87

87:                                               ; preds = %57, %43
  ret i32 0
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @gmc_v6_0_mc_stop(%struct.amdgpu_device*) #1

declare dso_local i64 @gmc_v6_0_wait_for_idle(%struct.amdgpu_device*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gmc_v6_0_mc_resume(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
