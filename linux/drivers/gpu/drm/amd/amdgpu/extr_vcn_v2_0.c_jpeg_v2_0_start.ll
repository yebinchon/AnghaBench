; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_jpeg_v2_0_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_jpeg_v2_0_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.amdgpu_ring }
%struct.amdgpu_ring = type { i32, i8*, i32 }

@UVD_PGFSM_CONFIG__UVDJ_PWR_CONFIG__SHIFT = common dso_local global i32 0, align 4
@UVD = common dso_local global i32 0, align 4
@mmUVD_PGFSM_CONFIG = common dso_local global i32 0, align 4
@VCN = common dso_local global i32 0, align 4
@mmUVD_PGFSM_STATUS = common dso_local global i32 0, align 4
@UVD_PGFSM_STATUS_UVDJ_PWR_ON = common dso_local global i32 0, align 4
@UVD_PGFSM_STATUS__UVDJ_PWR_STATUS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"amdgpu: JPEG disable power gating failed\0A\00", align 1
@mmUVD_JPEG_POWER_STATUS = common dso_local global i32 0, align 4
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
@mmUVD_JMI_CNTL = common dso_local global i32 0, align 4
@UVD_JMI_CNTL__SOFT_RESET_MASK = common dso_local global i32 0, align 4
@mmJPEG_SYS_INT_EN = common dso_local global i32 0, align 4
@JPEG_SYS_INT_EN__DJRBC_MASK = common dso_local global i32 0, align 4
@mmUVD_LMI_JRBC_RB_VMID = common dso_local global i32 0, align 4
@mmUVD_JRBC_RB_CNTL = common dso_local global i32 0, align 4
@mmUVD_LMI_JRBC_RB_64BIT_BAR_LOW = common dso_local global i32 0, align 4
@mmUVD_LMI_JRBC_RB_64BIT_BAR_HIGH = common dso_local global i32 0, align 4
@mmUVD_JRBC_RB_RPTR = common dso_local global i32 0, align 4
@mmUVD_JRBC_RB_WPTR = common dso_local global i32 0, align 4
@mmUVD_JRBC_RB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @jpeg_v2_0_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jpeg_v2_0_start(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.amdgpu_ring* %11, %struct.amdgpu_ring** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* @UVD_PGFSM_CONFIG__UVDJ_PWR_CONFIG__SHIFT, align 4
  %13 = shl i32 1, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @UVD, align 4
  %15 = load i32, i32* @mmUVD_PGFSM_CONFIG, align 4
  %16 = call i32 @SOC15_REG_OFFSET(i32 %14, i32 0, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @WREG32(i32 %16, i32 %17)
  %19 = load i32, i32* @VCN, align 4
  %20 = load i32, i32* @mmUVD_PGFSM_STATUS, align 4
  %21 = load i32, i32* @UVD_PGFSM_STATUS_UVDJ_PWR_ON, align 4
  %22 = load i32, i32* @UVD_PGFSM_STATUS__UVDJ_PWR_STATUS_MASK, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @SOC15_WAIT_ON_RREG(i32 %19, i32 0, i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %135

30:                                               ; preds = %1
  %31 = load i32, i32* @UVD, align 4
  %32 = load i32, i32* @mmUVD_JPEG_POWER_STATUS, align 4
  %33 = call i32 @SOC15_REG_OFFSET(i32 %31, i32 0, i32 %32)
  %34 = call i32 @RREG32(i32 %33)
  %35 = and i32 %34, -2
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @UVD, align 4
  %37 = load i32, i32* @mmUVD_JPEG_POWER_STATUS, align 4
  %38 = call i32 @SOC15_REG_OFFSET(i32 %36, i32 0, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @WREG32(i32 %38, i32 %39)
  %41 = load i32, i32* @VCN, align 4
  %42 = load i32, i32* @mmJPEG_CGC_CTRL, align 4
  %43 = call i8* @RREG32_SOC15(i32 %41, i32 0, i32 %42)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @JPEG_CGC_CTRL__DYN_CLOCK_MODE__SHIFT, align 4
  %46 = shl i32 1, %45
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @JPEG_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT, align 4
  %50 = shl i32 1, %49
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* @JPEG_CGC_CTRL__CLK_OFF_DELAY__SHIFT, align 4
  %54 = shl i32 4, %53
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* @VCN, align 4
  %58 = load i32, i32* @mmJPEG_CGC_CTRL, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @WREG32_SOC15(i32 %57, i32 0, i32 %58, i32 %59)
  %61 = load i32, i32* @VCN, align 4
  %62 = load i32, i32* @mmJPEG_CGC_GATE, align 4
  %63 = call i8* @RREG32_SOC15(i32 %61, i32 0, i32 %62)
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @JPEG_CGC_GATE__JPEG_DEC_MASK, align 4
  %66 = load i32, i32* @JPEG_CGC_GATE__JPEG2_DEC_MASK, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @JPEG_CGC_GATE__JPEG_ENC_MASK, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @JPEG_CGC_GATE__JMCIF_MASK, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @JPEG_CGC_GATE__JRBBM_MASK, align 4
  %73 = or i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* @VCN, align 4
  %78 = load i32, i32* @mmJPEG_CGC_GATE, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @WREG32_SOC15(i32 %77, i32 0, i32 %78, i32 %79)
  %81 = load i32, i32* @UVD, align 4
  %82 = load i32, i32* @mmUVD_JMI_CNTL, align 4
  %83 = call i32 @SOC15_REG_OFFSET(i32 %81, i32 0, i32 %82)
  %84 = load i32, i32* @UVD_JMI_CNTL__SOFT_RESET_MASK, align 4
  %85 = xor i32 %84, -1
  %86 = call i32 @WREG32_P(i32 %83, i32 0, i32 %85)
  %87 = load i32, i32* @VCN, align 4
  %88 = load i32, i32* @mmJPEG_SYS_INT_EN, align 4
  %89 = call i32 @SOC15_REG_OFFSET(i32 %87, i32 0, i32 %88)
  %90 = load i32, i32* @JPEG_SYS_INT_EN__DJRBC_MASK, align 4
  %91 = load i32, i32* @JPEG_SYS_INT_EN__DJRBC_MASK, align 4
  %92 = xor i32 %91, -1
  %93 = call i32 @WREG32_P(i32 %89, i32 %90, i32 %92)
  %94 = load i32, i32* @UVD, align 4
  %95 = load i32, i32* @mmUVD_LMI_JRBC_RB_VMID, align 4
  %96 = call i32 @WREG32_SOC15(i32 %94, i32 0, i32 %95, i32 0)
  %97 = load i32, i32* @UVD, align 4
  %98 = load i32, i32* @mmUVD_JRBC_RB_CNTL, align 4
  %99 = call i32 @WREG32_SOC15(i32 %97, i32 0, i32 %98, i32 3)
  %100 = load i32, i32* @UVD, align 4
  %101 = load i32, i32* @mmUVD_LMI_JRBC_RB_64BIT_BAR_LOW, align 4
  %102 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %103 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @lower_32_bits(i32 %104)
  %106 = call i32 @WREG32_SOC15(i32 %100, i32 0, i32 %101, i32 %105)
  %107 = load i32, i32* @UVD, align 4
  %108 = load i32, i32* @mmUVD_LMI_JRBC_RB_64BIT_BAR_HIGH, align 4
  %109 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %110 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @upper_32_bits(i32 %111)
  %113 = call i32 @WREG32_SOC15(i32 %107, i32 0, i32 %108, i32 %112)
  %114 = load i32, i32* @UVD, align 4
  %115 = load i32, i32* @mmUVD_JRBC_RB_RPTR, align 4
  %116 = call i32 @WREG32_SOC15(i32 %114, i32 0, i32 %115, i32 0)
  %117 = load i32, i32* @UVD, align 4
  %118 = load i32, i32* @mmUVD_JRBC_RB_WPTR, align 4
  %119 = call i32 @WREG32_SOC15(i32 %117, i32 0, i32 %118, i32 0)
  %120 = load i32, i32* @UVD, align 4
  %121 = load i32, i32* @mmUVD_JRBC_RB_CNTL, align 4
  %122 = call i32 @WREG32_SOC15(i32 %120, i32 0, i32 %121, i32 2)
  %123 = load i32, i32* @UVD, align 4
  %124 = load i32, i32* @mmUVD_JRBC_RB_SIZE, align 4
  %125 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %126 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sdiv i32 %127, 4
  %129 = call i32 @WREG32_SOC15(i32 %123, i32 0, i32 %124, i32 %128)
  %130 = load i32, i32* @UVD, align 4
  %131 = load i32, i32* @mmUVD_JRBC_RB_WPTR, align 4
  %132 = call i8* @RREG32_SOC15(i32 %130, i32 0, i32 %131)
  %133 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %134 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %30, %27
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @SOC15_WAIT_ON_RREG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i8* @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
