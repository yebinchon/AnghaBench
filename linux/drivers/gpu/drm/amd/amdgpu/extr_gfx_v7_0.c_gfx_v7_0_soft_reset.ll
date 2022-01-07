; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.amdgpu_device*)* }

@mmGRBM_STATUS = common dso_local global i32 0, align 4
@GRBM_STATUS__PA_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__SC_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__BCI_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__SX_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__TA_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__VGT_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__DB_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__CB_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__GDS_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__SPI_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__IA_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__IA_BUSY_NO_DMA_MASK = common dso_local global i32 0, align 4
@GRBM_SOFT_RESET__SOFT_RESET_CP_MASK = common dso_local global i32 0, align 4
@GRBM_SOFT_RESET__SOFT_RESET_GFX_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__CP_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__CP_COHERENCY_BUSY_MASK = common dso_local global i32 0, align 4
@SRBM_SOFT_RESET__SOFT_RESET_GRBM_MASK = common dso_local global i32 0, align 4
@mmGRBM_STATUS2 = common dso_local global i32 0, align 4
@GRBM_STATUS2__RLC_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_SOFT_RESET__SOFT_RESET_RLC_MASK = common dso_local global i32 0, align 4
@mmSRBM_STATUS = common dso_local global i32 0, align 4
@SRBM_STATUS__GRBM_RQ_PENDING_MASK = common dso_local global i32 0, align 4
@mmCP_ME_CNTL = common dso_local global i32 0, align 4
@CP_ME_CNTL__ME_HALT_MASK = common dso_local global i32 0, align 4
@CP_ME_CNTL__PFP_HALT_MASK = common dso_local global i32 0, align 4
@CP_ME_CNTL__CE_HALT_MASK = common dso_local global i32 0, align 4
@mmCP_MEC_CNTL = common dso_local global i32 0, align 4
@CP_MEC_CNTL__MEC_ME1_HALT_MASK = common dso_local global i32 0, align 4
@CP_MEC_CNTL__MEC_ME2_HALT_MASK = common dso_local global i32 0, align 4
@mmGRBM_SOFT_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"GRBM_SOFT_RESET=0x%08X\0A\00", align 1
@mmSRBM_SOFT_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"SRBM_SOFT_RESET=0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gfx_v7_0_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v7_0_soft_reset(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %6, align 8
  %9 = load i32, i32* @mmGRBM_STATUS, align 4
  %10 = call i32 @RREG32(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @GRBM_STATUS__PA_BUSY_MASK, align 4
  %13 = load i32, i32* @GRBM_STATUS__SC_BUSY_MASK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @GRBM_STATUS__BCI_BUSY_MASK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @GRBM_STATUS__SX_BUSY_MASK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @GRBM_STATUS__TA_BUSY_MASK, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @GRBM_STATUS__VGT_BUSY_MASK, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @GRBM_STATUS__DB_BUSY_MASK, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @GRBM_STATUS__CB_BUSY_MASK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @GRBM_STATUS__GDS_BUSY_MASK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @GRBM_STATUS__SPI_BUSY_MASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @GRBM_STATUS__IA_BUSY_MASK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @GRBM_STATUS__IA_BUSY_NO_DMA_MASK, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %11, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %1
  %38 = load i32, i32* @GRBM_SOFT_RESET__SOFT_RESET_CP_MASK, align 4
  %39 = load i32, i32* @GRBM_SOFT_RESET__SOFT_RESET_GFX_MASK, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %37, %1
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @GRBM_STATUS__CP_BUSY_MASK, align 4
  %46 = load i32, i32* @GRBM_STATUS__CP_COHERENCY_BUSY_MASK, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load i32, i32* @GRBM_SOFT_RESET__SOFT_RESET_CP_MASK, align 4
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* @SRBM_SOFT_RESET__SOFT_RESET_GRBM_MASK, align 4
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %50, %43
  %58 = load i32, i32* @mmGRBM_STATUS2, align 4
  %59 = call i32 @RREG32(i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @GRBM_STATUS2__RLC_BUSY_MASK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i32, i32* @GRBM_SOFT_RESET__SOFT_RESET_RLC_MASK, align 4
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %57
  %69 = load i32, i32* @mmSRBM_STATUS, align 4
  %70 = call i32 @RREG32(i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @SRBM_STATUS__GRBM_RQ_PENDING_MASK, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i32, i32* @SRBM_SOFT_RESET__SOFT_RESET_GRBM_MASK, align 4
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %75, %68
  %80 = load i32, i32* %3, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %170

85:                                               ; preds = %82, %79
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %87 = call i32 @gfx_v7_0_fini_pg(%struct.amdgpu_device* %86)
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %89 = call i32 @gfx_v7_0_update_cg(%struct.amdgpu_device* %88, i32 0)
  %90 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %91 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %95, align 8
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %98 = call i32 %96(%struct.amdgpu_device* %97)
  %99 = load i32, i32* @mmCP_ME_CNTL, align 4
  %100 = load i32, i32* @CP_ME_CNTL__ME_HALT_MASK, align 4
  %101 = load i32, i32* @CP_ME_CNTL__PFP_HALT_MASK, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @CP_ME_CNTL__CE_HALT_MASK, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @WREG32(i32 %99, i32 %104)
  %106 = load i32, i32* @mmCP_MEC_CNTL, align 4
  %107 = load i32, i32* @CP_MEC_CNTL__MEC_ME1_HALT_MASK, align 4
  %108 = load i32, i32* @CP_MEC_CNTL__MEC_ME2_HALT_MASK, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @WREG32(i32 %106, i32 %109)
  %111 = load i32, i32* %3, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %139

113:                                              ; preds = %85
  %114 = load i32, i32* @mmGRBM_SOFT_RESET, align 4
  %115 = call i32 @RREG32(i32 %114)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* %5, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %5, align 4
  %119 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %120 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @dev_info(i32 %121, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* @mmGRBM_SOFT_RESET, align 4
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @WREG32(i32 %124, i32 %125)
  %127 = load i32, i32* @mmGRBM_SOFT_RESET, align 4
  %128 = call i32 @RREG32(i32 %127)
  store i32 %128, i32* %5, align 4
  %129 = call i32 @udelay(i32 50)
  %130 = load i32, i32* %3, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %5, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* @mmGRBM_SOFT_RESET, align 4
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @WREG32(i32 %134, i32 %135)
  %137 = load i32, i32* @mmGRBM_SOFT_RESET, align 4
  %138 = call i32 @RREG32(i32 %137)
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %113, %85
  %140 = load i32, i32* %4, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %168

142:                                              ; preds = %139
  %143 = load i32, i32* @mmSRBM_SOFT_RESET, align 4
  %144 = call i32 @RREG32(i32 %143)
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* %5, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %5, align 4
  %148 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %149 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @dev_info(i32 %150, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* @mmSRBM_SOFT_RESET, align 4
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @WREG32(i32 %153, i32 %154)
  %156 = load i32, i32* @mmSRBM_SOFT_RESET, align 4
  %157 = call i32 @RREG32(i32 %156)
  store i32 %157, i32* %5, align 4
  %158 = call i32 @udelay(i32 50)
  %159 = load i32, i32* %4, align 4
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %5, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* @mmSRBM_SOFT_RESET, align 4
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @WREG32(i32 %163, i32 %164)
  %166 = load i32, i32* @mmSRBM_SOFT_RESET, align 4
  %167 = call i32 @RREG32(i32 %166)
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %142, %139
  %169 = call i32 @udelay(i32 50)
  br label %170

170:                                              ; preds = %168, %82
  ret i32 0
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @gfx_v7_0_fini_pg(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v7_0_update_cg(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
