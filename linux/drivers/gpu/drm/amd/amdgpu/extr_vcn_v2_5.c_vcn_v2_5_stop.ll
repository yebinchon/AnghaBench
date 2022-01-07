; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_5.c_vcn_v2_5_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_5.c_vcn_v2_5_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

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
@mmUVD_RB_ARB_CTRL = common dso_local global i32 0, align 4
@UVD_RB_ARB_CTRL__VCPU_DIS_MASK = common dso_local global i32 0, align 4
@mmUVD_VCPU_CNTL = common dso_local global i32 0, align 4
@UVD_VCPU_CNTL__BLK_RST_MASK = common dso_local global i32 0, align 4
@UVD_VCPU_CNTL__CLK_EN_MASK = common dso_local global i32 0, align 4
@mmUVD_POWER_STATUS = common dso_local global i32 0, align 4
@UVD_POWER_STATUS__UVD_POWER_STATUS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @vcn_v2_5_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcn_v2_5_stop(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = call i32 @jpeg_v2_5_stop(%struct.amdgpu_device* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %130

13:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %126, %13
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %129

21:                                               ; preds = %14
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %126

31:                                               ; preds = %21
  %32 = load i32, i32* @VCN, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @mmUVD_STATUS, align 4
  %35 = load i32, i32* @UVD_STATUS__IDLE, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @SOC15_WAIT_ON_RREG(i32 %32, i32 %33, i32 %34, i32 %35, i32 7, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %130

42:                                               ; preds = %31
  %43 = load i32, i32* @UVD_LMI_STATUS__VCPU_LMI_WRITE_CLEAN_MASK, align 4
  %44 = load i32, i32* @UVD_LMI_STATUS__READ_CLEAN_MASK, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @UVD_LMI_STATUS__WRITE_CLEAN_MASK, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @UVD_LMI_STATUS__WRITE_CLEAN_RAW_MASK, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* @VCN, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @mmUVD_LMI_STATUS, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @SOC15_WAIT_ON_RREG(i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %42
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %130

61:                                               ; preds = %42
  %62 = load i32, i32* @VCN, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @mmUVD_LMI_CTRL2, align 4
  %65 = call i32 @RREG32_SOC15(i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* @UVD_LMI_CTRL2__STALL_ARB_UMC_MASK, align 4
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* @VCN, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @mmUVD_LMI_CTRL2, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @WREG32_SOC15(i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* @UVD_LMI_STATUS__UMC_READ_CLEAN_RAW_MASK, align 4
  %75 = load i32, i32* @UVD_LMI_STATUS__UMC_WRITE_CLEAN_RAW_MASK, align 4
  %76 = or i32 %74, %75
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* @VCN, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @mmUVD_LMI_STATUS, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @SOC15_WAIT_ON_RREG(i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %61
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %130

88:                                               ; preds = %61
  %89 = load i32, i32* @UVD, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @mmUVD_RB_ARB_CTRL, align 4
  %92 = call i32 @SOC15_REG_OFFSET(i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* @UVD_RB_ARB_CTRL__VCPU_DIS_MASK, align 4
  %94 = load i32, i32* @UVD_RB_ARB_CTRL__VCPU_DIS_MASK, align 4
  %95 = xor i32 %94, -1
  %96 = call i32 @WREG32_P(i32 %92, i32 %93, i32 %95)
  %97 = load i32, i32* @UVD, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @mmUVD_VCPU_CNTL, align 4
  %100 = call i32 @SOC15_REG_OFFSET(i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* @UVD_VCPU_CNTL__BLK_RST_MASK, align 4
  %102 = load i32, i32* @UVD_VCPU_CNTL__BLK_RST_MASK, align 4
  %103 = xor i32 %102, -1
  %104 = call i32 @WREG32_P(i32 %100, i32 %101, i32 %103)
  %105 = load i32, i32* @UVD, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @mmUVD_VCPU_CNTL, align 4
  %108 = call i32 @SOC15_REG_OFFSET(i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* @UVD_VCPU_CNTL__CLK_EN_MASK, align 4
  %110 = xor i32 %109, -1
  %111 = call i32 @WREG32_P(i32 %108, i32 0, i32 %110)
  %112 = load i32, i32* @VCN, align 4
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @mmUVD_STATUS, align 4
  %115 = call i32 @WREG32_SOC15(i32 %112, i32 %113, i32 %114, i32 0)
  %116 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %117 = call i32 @vcn_v2_5_enable_clock_gating(%struct.amdgpu_device* %116)
  %118 = load i32, i32* @UVD, align 4
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @mmUVD_POWER_STATUS, align 4
  %121 = call i32 @SOC15_REG_OFFSET(i32 %118, i32 %119, i32 %120)
  %122 = load i32, i32* @UVD_POWER_STATUS__UVD_POWER_STATUS_MASK, align 4
  %123 = load i32, i32* @UVD_POWER_STATUS__UVD_POWER_STATUS_MASK, align 4
  %124 = xor i32 %123, -1
  %125 = call i32 @WREG32_P(i32 %121, i32 %122, i32 %124)
  br label %126

126:                                              ; preds = %88, %30
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %5, align 4
  br label %14

129:                                              ; preds = %14
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %129, %86, %59, %40, %11
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @jpeg_v2_5_stop(%struct.amdgpu_device*) #1

declare dso_local i32 @SOC15_WAIT_ON_RREG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @vcn_v2_5_enable_clock_gating(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
