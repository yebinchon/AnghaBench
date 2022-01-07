; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_stop_spg_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_stop_spg_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@UVD = common dso_local global i32 0, align 4
@mmUVD_STATUS = common dso_local global i32 0, align 4
@UVD_STATUS__IDLE = common dso_local global i32 0, align 4
@UVD_LMI_STATUS__VCPU_LMI_WRITE_CLEAN_MASK = common dso_local global i32 0, align 4
@UVD_LMI_STATUS__READ_CLEAN_MASK = common dso_local global i32 0, align 4
@UVD_LMI_STATUS__WRITE_CLEAN_MASK = common dso_local global i32 0, align 4
@UVD_LMI_STATUS__WRITE_CLEAN_RAW_MASK = common dso_local global i32 0, align 4
@mmUVD_LMI_STATUS = common dso_local global i32 0, align 4
@mmUVD_SOFT_RESET = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_LMI_STATUS__UMC_READ_CLEAN_RAW_MASK = common dso_local global i32 0, align 4
@UVD_LMI_STATUS__UMC_WRITE_CLEAN_RAW_MASK = common dso_local global i32 0, align 4
@mmUVD_VCPU_CNTL = common dso_local global i32 0, align 4
@UVD_VCPU_CNTL__CLK_EN_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__LMI_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @vcn_v1_0_stop_spg_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcn_v1_0_stop_spg_mode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %5 = load i32, i32* @UVD, align 4
  %6 = load i32, i32* @mmUVD_STATUS, align 4
  %7 = load i32, i32* @UVD_STATUS__IDLE, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @SOC15_WAIT_ON_RREG(i32 %5, i32 0, i32 %6, i32 %7, i32 7, i32 %8)
  %10 = load i32, i32* @UVD_LMI_STATUS__VCPU_LMI_WRITE_CLEAN_MASK, align 4
  %11 = load i32, i32* @UVD_LMI_STATUS__READ_CLEAN_MASK, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @UVD_LMI_STATUS__WRITE_CLEAN_MASK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @UVD_LMI_STATUS__WRITE_CLEAN_RAW_MASK, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @UVD, align 4
  %18 = load i32, i32* @mmUVD_LMI_STATUS, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @SOC15_WAIT_ON_RREG(i32 %17, i32 0, i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* @UVD, align 4
  %24 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %25 = call i32 @SOC15_REG_OFFSET(i32 %23, i32 0, i32 %24)
  %26 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %27 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = call i32 @WREG32_P(i32 %25, i32 %26, i32 %28)
  %30 = load i32, i32* @UVD_LMI_STATUS__UMC_READ_CLEAN_RAW_MASK, align 4
  %31 = load i32, i32* @UVD_LMI_STATUS__UMC_WRITE_CLEAN_RAW_MASK, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @UVD, align 4
  %34 = load i32, i32* @mmUVD_LMI_STATUS, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @SOC15_WAIT_ON_RREG(i32 %33, i32 0, i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* @UVD, align 4
  %40 = load i32, i32* @mmUVD_VCPU_CNTL, align 4
  %41 = call i32 @SOC15_REG_OFFSET(i32 %39, i32 0, i32 %40)
  %42 = load i32, i32* @UVD_VCPU_CNTL__CLK_EN_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = call i32 @WREG32_P(i32 %41, i32 0, i32 %43)
  %45 = load i32, i32* @UVD, align 4
  %46 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %47 = call i32 @SOC15_REG_OFFSET(i32 %45, i32 0, i32 %46)
  %48 = load i32, i32* @UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK, align 4
  %49 = load i32, i32* @UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = call i32 @WREG32_P(i32 %47, i32 %48, i32 %50)
  %52 = load i32, i32* @UVD, align 4
  %53 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %54 = call i32 @SOC15_REG_OFFSET(i32 %52, i32 0, i32 %53)
  %55 = load i32, i32* @UVD_SOFT_RESET__LMI_SOFT_RESET_MASK, align 4
  %56 = load i32, i32* @UVD_SOFT_RESET__LMI_SOFT_RESET_MASK, align 4
  %57 = xor i32 %56, -1
  %58 = call i32 @WREG32_P(i32 %54, i32 %55, i32 %57)
  %59 = load i32, i32* @UVD, align 4
  %60 = load i32, i32* @mmUVD_STATUS, align 4
  %61 = call i32 @WREG32_SOC15(i32 %59, i32 0, i32 %60, i32 0)
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %63 = call i32 @vcn_v1_0_enable_clock_gating(%struct.amdgpu_device* %62)
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %65 = call i32 @vcn_1_0_enable_static_power_gating(%struct.amdgpu_device* %64)
  ret i32 0
}

declare dso_local i32 @SOC15_WAIT_ON_RREG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @vcn_v1_0_enable_clock_gating(%struct.amdgpu_device*) #1

declare dso_local i32 @vcn_1_0_enable_static_power_gating(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
