; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_jpeg_v2_0_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_jpeg_v2_0_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@UVD = common dso_local global i32 0, align 4
@mmUVD_JMI_CNTL = common dso_local global i32 0, align 4
@UVD_JMI_CNTL__SOFT_RESET_MASK = common dso_local global i32 0, align 4
@VCN = common dso_local global i32 0, align 4
@mmJPEG_CGC_CTRL = common dso_local global i32 0, align 4
@JPEG_CGC_CTRL__DYN_CLOCK_MODE__SHIFT = common dso_local global i32 0, align 4
@JPEG_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT = common dso_local global i32 0, align 4
@JPEG_CGC_CTRL__CLK_OFF_DELAY__SHIFT = common dso_local global i32 0, align 4
@mmJPEG_CGC_GATE = common dso_local global i32 0, align 4
@JPEG_CGC_GATE__JPEG_DEC_MASK = common dso_local global i32 0, align 4
@JPEG_CGC_GATE__JPEG2_DEC_MASK = common dso_local global i32 0, align 4
@JPEG_CGC_GATE__JPEG_ENC_MASK = common dso_local global i32 0, align 4
@JPEG_CGC_GATE__JMCIF_MASK = common dso_local global i32 0, align 4
@JPEG_CGC_GATE__JRBBM_MASK = common dso_local global i32 0, align 4
@mmUVD_JPEG_POWER_STATUS = common dso_local global i32 0, align 4
@UVD_JPEG_POWER_STATUS__JPEG_POWER_STATUS_MASK = common dso_local global i32 0, align 4
@UVD_PGFSM_CONFIG__UVDJ_PWR_CONFIG__SHIFT = common dso_local global i32 0, align 4
@mmUVD_PGFSM_CONFIG = common dso_local global i32 0, align 4
@mmUVD_PGFSM_STATUS = common dso_local global i32 0, align 4
@UVD_PGFSM_STATUS__UVDJ_PWR_STATUS__SHIFT = common dso_local global i32 0, align 4
@UVD_PGFSM_STATUS__UVDJ_PWR_STATUS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"amdgpu: JPEG enable power gating failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @jpeg_v2_0_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jpeg_v2_0_stop(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @UVD, align 4
  %7 = load i32, i32* @mmUVD_JMI_CNTL, align 4
  %8 = call i32 @SOC15_REG_OFFSET(i32 %6, i32 0, i32 %7)
  %9 = load i32, i32* @UVD_JMI_CNTL__SOFT_RESET_MASK, align 4
  %10 = load i32, i32* @UVD_JMI_CNTL__SOFT_RESET_MASK, align 4
  %11 = xor i32 %10, -1
  %12 = call i32 @WREG32_P(i32 %8, i32 %9, i32 %11)
  %13 = load i32, i32* @VCN, align 4
  %14 = load i32, i32* @mmJPEG_CGC_CTRL, align 4
  %15 = call i32 @RREG32_SOC15(i32 %13, i32 0, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @JPEG_CGC_CTRL__DYN_CLOCK_MODE__SHIFT, align 4
  %17 = shl i32 1, %16
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @JPEG_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT, align 4
  %21 = shl i32 1, %20
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @JPEG_CGC_CTRL__CLK_OFF_DELAY__SHIFT, align 4
  %25 = shl i32 4, %24
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @VCN, align 4
  %29 = load i32, i32* @mmJPEG_CGC_CTRL, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @WREG32_SOC15(i32 %28, i32 0, i32 %29, i32 %30)
  %32 = load i32, i32* @VCN, align 4
  %33 = load i32, i32* @mmJPEG_CGC_GATE, align 4
  %34 = call i32 @RREG32_SOC15(i32 %32, i32 0, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @JPEG_CGC_GATE__JPEG_DEC_MASK, align 4
  %36 = load i32, i32* @JPEG_CGC_GATE__JPEG2_DEC_MASK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @JPEG_CGC_GATE__JPEG_ENC_MASK, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @JPEG_CGC_GATE__JMCIF_MASK, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @JPEG_CGC_GATE__JRBBM_MASK, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* @VCN, align 4
  %47 = load i32, i32* @mmJPEG_CGC_GATE, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @WREG32_SOC15(i32 %46, i32 0, i32 %47, i32 %48)
  %50 = load i32, i32* @UVD, align 4
  %51 = load i32, i32* @mmUVD_JPEG_POWER_STATUS, align 4
  %52 = call i32 @SOC15_REG_OFFSET(i32 %50, i32 0, i32 %51)
  %53 = call i32 @RREG32(i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* @UVD_JPEG_POWER_STATUS__JPEG_POWER_STATUS_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, 1
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* @UVD, align 4
  %61 = load i32, i32* @mmUVD_JPEG_POWER_STATUS, align 4
  %62 = call i32 @SOC15_REG_OFFSET(i32 %60, i32 0, i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @WREG32(i32 %62, i32 %63)
  %65 = load i32, i32* @UVD_PGFSM_CONFIG__UVDJ_PWR_CONFIG__SHIFT, align 4
  %66 = shl i32 2, %65
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* @UVD, align 4
  %68 = load i32, i32* @mmUVD_PGFSM_CONFIG, align 4
  %69 = call i32 @SOC15_REG_OFFSET(i32 %67, i32 0, i32 %68)
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @WREG32(i32 %69, i32 %70)
  %72 = load i32, i32* @VCN, align 4
  %73 = load i32, i32* @mmUVD_PGFSM_STATUS, align 4
  %74 = load i32, i32* @UVD_PGFSM_STATUS__UVDJ_PWR_STATUS__SHIFT, align 4
  %75 = shl i32 2, %74
  %76 = load i32, i32* @UVD_PGFSM_STATUS__UVDJ_PWR_STATUS_MASK, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @SOC15_WAIT_ON_RREG(i32 %72, i32 0, i32 %73, i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %1
  %82 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %86

84:                                               ; preds = %1
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %81
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @SOC15_WAIT_ON_RREG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
