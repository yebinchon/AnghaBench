; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_gpu_check_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_gpu_check_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@GRBM_STATUS = common dso_local global i64 0, align 8
@PA_BUSY = common dso_local global i32 0, align 4
@SC_BUSY = common dso_local global i32 0, align 4
@BCI_BUSY = common dso_local global i32 0, align 4
@SX_BUSY = common dso_local global i32 0, align 4
@TA_BUSY = common dso_local global i32 0, align 4
@VGT_BUSY = common dso_local global i32 0, align 4
@DB_BUSY = common dso_local global i32 0, align 4
@CB_BUSY = common dso_local global i32 0, align 4
@GDS_BUSY = common dso_local global i32 0, align 4
@SPI_BUSY = common dso_local global i32 0, align 4
@IA_BUSY = common dso_local global i32 0, align 4
@IA_BUSY_NO_DMA = common dso_local global i32 0, align 4
@RADEON_RESET_GFX = common dso_local global i32 0, align 4
@CP_BUSY = common dso_local global i32 0, align 4
@CP_COHERENCY_BUSY = common dso_local global i32 0, align 4
@RADEON_RESET_CP = common dso_local global i32 0, align 4
@GRBM_STATUS2 = common dso_local global i64 0, align 8
@RLC_BUSY = common dso_local global i32 0, align 4
@RADEON_RESET_RLC = common dso_local global i32 0, align 4
@SDMA0_STATUS_REG = common dso_local global i64 0, align 8
@SDMA0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@SDMA_IDLE = common dso_local global i32 0, align 4
@RADEON_RESET_DMA = common dso_local global i32 0, align 4
@SDMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@RADEON_RESET_DMA1 = common dso_local global i32 0, align 4
@SRBM_STATUS2 = common dso_local global i64 0, align 8
@SDMA_BUSY = common dso_local global i32 0, align 4
@SDMA1_BUSY = common dso_local global i32 0, align 4
@SRBM_STATUS = common dso_local global i64 0, align 8
@IH_BUSY = common dso_local global i32 0, align 4
@RADEON_RESET_IH = common dso_local global i32 0, align 4
@SEM_BUSY = common dso_local global i32 0, align 4
@RADEON_RESET_SEM = common dso_local global i32 0, align 4
@GRBM_RQ_PENDING = common dso_local global i32 0, align 4
@RADEON_RESET_GRBM = common dso_local global i32 0, align 4
@VMC_BUSY = common dso_local global i32 0, align 4
@RADEON_RESET_VMC = common dso_local global i32 0, align 4
@MCB_BUSY = common dso_local global i32 0, align 4
@MCB_NON_DISPLAY_BUSY = common dso_local global i32 0, align 4
@MCC_BUSY = common dso_local global i32 0, align 4
@MCD_BUSY = common dso_local global i32 0, align 4
@RADEON_RESET_MC = common dso_local global i32 0, align 4
@RADEON_RESET_DISPLAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"MC busy: 0x%08X, clearing.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cik_gpu_check_soft_reset(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i64, i64* @GRBM_STATUS, align 8
  %6 = call i32 @RREG32(i64 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @PA_BUSY, align 4
  %9 = load i32, i32* @SC_BUSY, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @BCI_BUSY, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SX_BUSY, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @TA_BUSY, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @VGT_BUSY, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @DB_BUSY, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @CB_BUSY, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @GDS_BUSY, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SPI_BUSY, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @IA_BUSY, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @IA_BUSY_NO_DMA, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %7, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load i32, i32* @RADEON_RESET_GFX, align 4
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %1
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @CP_BUSY, align 4
  %40 = load i32, i32* @CP_COHERENCY_BUSY, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* @RADEON_RESET_CP, align 4
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %37
  %49 = load i64, i64* @GRBM_STATUS2, align 8
  %50 = call i32 @RREG32(i64 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @RLC_BUSY, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load i32, i32* @RADEON_RESET_RLC, align 4
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %48
  %60 = load i64, i64* @SDMA0_STATUS_REG, align 8
  %61 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @RREG32(i64 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @SDMA_IDLE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* @RADEON_RESET_DMA, align 4
  %70 = load i32, i32* %3, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %59
  %73 = load i64, i64* @SDMA0_STATUS_REG, align 8
  %74 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @RREG32(i64 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @SDMA_IDLE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %72
  %82 = load i32, i32* @RADEON_RESET_DMA1, align 4
  %83 = load i32, i32* %3, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %81, %72
  %86 = load i64, i64* @SRBM_STATUS2, align 8
  %87 = call i32 @RREG32(i64 %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @SDMA_BUSY, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i32, i32* @RADEON_RESET_DMA, align 4
  %94 = load i32, i32* %3, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %92, %85
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @SDMA1_BUSY, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* @RADEON_RESET_DMA1, align 4
  %103 = load i32, i32* %3, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %101, %96
  %106 = load i64, i64* @SRBM_STATUS, align 8
  %107 = call i32 @RREG32(i64 %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @IH_BUSY, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %105
  %113 = load i32, i32* @RADEON_RESET_IH, align 4
  %114 = load i32, i32* %3, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %112, %105
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @SEM_BUSY, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load i32, i32* @RADEON_RESET_SEM, align 4
  %123 = load i32, i32* %3, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %121, %116
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @GRBM_RQ_PENDING, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load i32, i32* @RADEON_RESET_GRBM, align 4
  %132 = load i32, i32* %3, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %130, %125
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @VMC_BUSY, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load i32, i32* @RADEON_RESET_VMC, align 4
  %141 = load i32, i32* %3, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %139, %134
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @MCB_BUSY, align 4
  %146 = load i32, i32* @MCB_NON_DISPLAY_BUSY, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @MCC_BUSY, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @MCD_BUSY, align 4
  %151 = or i32 %149, %150
  %152 = and i32 %144, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %143
  %155 = load i32, i32* @RADEON_RESET_MC, align 4
  %156 = load i32, i32* %3, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %154, %143
  %159 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %160 = call i64 @evergreen_is_display_hung(%struct.radeon_device* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load i32, i32* @RADEON_RESET_DISPLAY, align 4
  %164 = load i32, i32* %3, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %162, %158
  %167 = load i32, i32* %3, align 4
  %168 = load i32, i32* @RADEON_RESET_MC, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %166
  %172 = load i32, i32* %3, align 4
  %173 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* @RADEON_RESET_MC, align 4
  %175 = xor i32 %174, -1
  %176 = load i32, i32* %3, align 4
  %177 = and i32 %176, %175
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %171, %166
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @RREG32(i64) #1

declare dso_local i64 @evergreen_is_display_hung(%struct.radeon_device*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
