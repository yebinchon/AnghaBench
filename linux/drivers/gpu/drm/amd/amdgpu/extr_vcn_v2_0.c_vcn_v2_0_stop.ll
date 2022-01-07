; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@AMD_PG_SUPPORT_VCN_DPG = common dso_local global i32 0, align 4
@VCN = common dso_local global i32 0, align 4
@mmUVD_STATUS = common dso_local global i32 0, align 4
@UVD_STATUS__IDLE = common dso_local global i32 0, align 4
@UVD_LMI_STATUS__VCPU_LMI_WRITE_CLEAN_MASK = common dso_local global i32 0, align 4
@UVD_LMI_STATUS__READ_CLEAN_MASK = common dso_local global i32 0, align 4
@UVD_LMI_STATUS__WRITE_CLEAN_MASK = common dso_local global i32 0, align 4
@UVD_LMI_STATUS__WRITE_CLEAN_RAW_MASK = common dso_local global i32 0, align 4
@mmUVD_LMI_STATUS = common dso_local global i32 0, align 4
@mmUVD_LMI_CTRL2 = common dso_local global i32 0, align 4
@UVD_LMI_CTRL2__STALL_ARB_UMC_MASK = common dso_local global i32 0, align 4
@UVD_LMI_STATUS__UMC_READ_CLEAN_RAW_MASK = common dso_local global i32 0, align 4
@UVD_LMI_STATUS__UMC_WRITE_CLEAN_RAW_MASK = common dso_local global i32 0, align 4
@UVD = common dso_local global i32 0, align 4
@mmUVD_VCPU_CNTL = common dso_local global i32 0, align 4
@UVD_VCPU_CNTL__CLK_EN_MASK = common dso_local global i32 0, align 4
@mmUVD_SOFT_RESET = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__LMI_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @vcn_v2_0_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcn_v2_0_stop(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = call i32 @jpeg_v2_0_stop(%struct.amdgpu_device* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %124

12:                                               ; preds = %1
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @AMD_PG_SUPPORT_VCN_DPG, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = call i32 @vcn_v2_0_stop_dpg_mode(%struct.amdgpu_device* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %124

26:                                               ; preds = %19
  br label %114

27:                                               ; preds = %12
  %28 = load i32, i32* @VCN, align 4
  %29 = load i32, i32* @mmUVD_STATUS, align 4
  %30 = load i32, i32* @UVD_STATUS__IDLE, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @SOC15_WAIT_ON_RREG(i32 %28, i32 0, i32 %29, i32 %30, i32 7, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %124

37:                                               ; preds = %27
  %38 = load i32, i32* @UVD_LMI_STATUS__VCPU_LMI_WRITE_CLEAN_MASK, align 4
  %39 = load i32, i32* @UVD_LMI_STATUS__READ_CLEAN_MASK, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @UVD_LMI_STATUS__WRITE_CLEAN_MASK, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @UVD_LMI_STATUS__WRITE_CLEAN_RAW_MASK, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* @VCN, align 4
  %46 = load i32, i32* @mmUVD_LMI_STATUS, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @SOC15_WAIT_ON_RREG(i32 %45, i32 0, i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %37
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %124

55:                                               ; preds = %37
  %56 = load i32, i32* @VCN, align 4
  %57 = load i32, i32* @mmUVD_LMI_CTRL2, align 4
  %58 = call i32 @RREG32_SOC15(i32 %56, i32 0, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* @UVD_LMI_CTRL2__STALL_ARB_UMC_MASK, align 4
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* @VCN, align 4
  %63 = load i32, i32* @mmUVD_LMI_CTRL2, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @WREG32_SOC15(i32 %62, i32 0, i32 %63, i32 %64)
  %66 = load i32, i32* @UVD_LMI_STATUS__UMC_READ_CLEAN_RAW_MASK, align 4
  %67 = load i32, i32* @UVD_LMI_STATUS__UMC_WRITE_CLEAN_RAW_MASK, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* @VCN, align 4
  %70 = load i32, i32* @mmUVD_LMI_STATUS, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @SOC15_WAIT_ON_RREG(i32 %69, i32 0, i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %55
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %2, align 4
  br label %124

79:                                               ; preds = %55
  %80 = load i32, i32* @UVD, align 4
  %81 = load i32, i32* @mmUVD_VCPU_CNTL, align 4
  %82 = call i32 @SOC15_REG_OFFSET(i32 %80, i32 0, i32 %81)
  %83 = load i32, i32* @UVD_VCPU_CNTL__CLK_EN_MASK, align 4
  %84 = xor i32 %83, -1
  %85 = call i32 @WREG32_P(i32 %82, i32 0, i32 %84)
  %86 = load i32, i32* @UVD, align 4
  %87 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %88 = call i32 @SOC15_REG_OFFSET(i32 %86, i32 0, i32 %87)
  %89 = load i32, i32* @UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK, align 4
  %90 = load i32, i32* @UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK, align 4
  %91 = xor i32 %90, -1
  %92 = call i32 @WREG32_P(i32 %88, i32 %89, i32 %91)
  %93 = load i32, i32* @UVD, align 4
  %94 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %95 = call i32 @SOC15_REG_OFFSET(i32 %93, i32 0, i32 %94)
  %96 = load i32, i32* @UVD_SOFT_RESET__LMI_SOFT_RESET_MASK, align 4
  %97 = load i32, i32* @UVD_SOFT_RESET__LMI_SOFT_RESET_MASK, align 4
  %98 = xor i32 %97, -1
  %99 = call i32 @WREG32_P(i32 %95, i32 %96, i32 %98)
  %100 = load i32, i32* @UVD, align 4
  %101 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %102 = call i32 @SOC15_REG_OFFSET(i32 %100, i32 0, i32 %101)
  %103 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %104 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %105 = xor i32 %104, -1
  %106 = call i32 @WREG32_P(i32 %102, i32 %103, i32 %105)
  %107 = load i32, i32* @VCN, align 4
  %108 = load i32, i32* @mmUVD_STATUS, align 4
  %109 = call i32 @WREG32_SOC15(i32 %107, i32 0, i32 %108, i32 0)
  %110 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %111 = call i32 @vcn_v2_0_enable_clock_gating(%struct.amdgpu_device* %110)
  %112 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %113 = call i32 @vcn_v2_0_enable_static_power_gating(%struct.amdgpu_device* %112)
  br label %114

114:                                              ; preds = %79, %26
  %115 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %116 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %122 = call i32 @amdgpu_dpm_enable_uvd(%struct.amdgpu_device* %121, i32 0)
  br label %123

123:                                              ; preds = %120, %114
  store i32 0, i32* %2, align 4
  br label %124

124:                                              ; preds = %123, %77, %53, %35, %24, %10
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @jpeg_v2_0_stop(%struct.amdgpu_device*) #1

declare dso_local i32 @vcn_v2_0_stop_dpg_mode(%struct.amdgpu_device*) #1

declare dso_local i32 @SOC15_WAIT_ON_RREG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @vcn_v2_0_enable_clock_gating(%struct.amdgpu_device*) #1

declare dso_local i32 @vcn_v2_0_enable_static_power_gating(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_dpm_enable_uvd(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
