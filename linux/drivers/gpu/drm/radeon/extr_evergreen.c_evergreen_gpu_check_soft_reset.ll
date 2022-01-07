; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_gpu_check_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_gpu_check_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@GRBM_STATUS = common dso_local global i32 0, align 4
@PA_BUSY = common dso_local global i32 0, align 4
@SC_BUSY = common dso_local global i32 0, align 4
@SH_BUSY = common dso_local global i32 0, align 4
@SX_BUSY = common dso_local global i32 0, align 4
@TA_BUSY = common dso_local global i32 0, align 4
@VGT_BUSY = common dso_local global i32 0, align 4
@DB_BUSY = common dso_local global i32 0, align 4
@CB_BUSY = common dso_local global i32 0, align 4
@SPI_BUSY = common dso_local global i32 0, align 4
@VGT_BUSY_NO_DMA = common dso_local global i32 0, align 4
@RADEON_RESET_GFX = common dso_local global i32 0, align 4
@CF_RQ_PENDING = common dso_local global i32 0, align 4
@PF_RQ_PENDING = common dso_local global i32 0, align 4
@CP_BUSY = common dso_local global i32 0, align 4
@CP_COHERENCY_BUSY = common dso_local global i32 0, align 4
@RADEON_RESET_CP = common dso_local global i32 0, align 4
@GRBM_EE_BUSY = common dso_local global i32 0, align 4
@RADEON_RESET_GRBM = common dso_local global i32 0, align 4
@DMA_STATUS_REG = common dso_local global i32 0, align 4
@DMA_IDLE = common dso_local global i32 0, align 4
@RADEON_RESET_DMA = common dso_local global i32 0, align 4
@SRBM_STATUS2 = common dso_local global i32 0, align 4
@DMA_BUSY = common dso_local global i32 0, align 4
@SRBM_STATUS = common dso_local global i32 0, align 4
@RLC_RQ_PENDING = common dso_local global i32 0, align 4
@RLC_BUSY = common dso_local global i32 0, align 4
@RADEON_RESET_RLC = common dso_local global i32 0, align 4
@IH_BUSY = common dso_local global i32 0, align 4
@RADEON_RESET_IH = common dso_local global i32 0, align 4
@SEM_BUSY = common dso_local global i32 0, align 4
@RADEON_RESET_SEM = common dso_local global i32 0, align 4
@GRBM_RQ_PENDING = common dso_local global i32 0, align 4
@VMC_BUSY = common dso_local global i32 0, align 4
@RADEON_RESET_VMC = common dso_local global i32 0, align 4
@MCB_BUSY = common dso_local global i32 0, align 4
@MCB_NON_DISPLAY_BUSY = common dso_local global i32 0, align 4
@MCC_BUSY = common dso_local global i32 0, align 4
@MCD_BUSY = common dso_local global i32 0, align 4
@RADEON_RESET_MC = common dso_local global i32 0, align 4
@RADEON_RESET_DISPLAY = common dso_local global i32 0, align 4
@VM_L2_STATUS = common dso_local global i32 0, align 4
@L2_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"MC busy: 0x%08X, clearing.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evergreen_gpu_check_soft_reset(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @GRBM_STATUS, align 4
  %6 = call i32 @RREG32(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @PA_BUSY, align 4
  %9 = load i32, i32* @SC_BUSY, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @SH_BUSY, align 4
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
  %23 = load i32, i32* @SPI_BUSY, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @VGT_BUSY_NO_DMA, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %7, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load i32, i32* @RADEON_RESET_GFX, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %1
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @CF_RQ_PENDING, align 4
  %36 = load i32, i32* @PF_RQ_PENDING, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @CP_BUSY, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @CP_COHERENCY_BUSY, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %34, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load i32, i32* @RADEON_RESET_CP, align 4
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %33
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @GRBM_EE_BUSY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i32, i32* @RADEON_RESET_GRBM, align 4
  %55 = load i32, i32* @RADEON_RESET_GFX, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @RADEON_RESET_CP, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %53, %48
  %62 = load i32, i32* @DMA_STATUS_REG, align 4
  %63 = call i32 @RREG32(i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @DMA_IDLE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* @RADEON_RESET_DMA, align 4
  %70 = load i32, i32* %3, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %61
  %73 = load i32, i32* @SRBM_STATUS2, align 4
  %74 = call i32 @RREG32(i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @DMA_BUSY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i32, i32* @RADEON_RESET_DMA, align 4
  %81 = load i32, i32* %3, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %72
  %84 = load i32, i32* @SRBM_STATUS, align 4
  %85 = call i32 @RREG32(i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @RLC_RQ_PENDING, align 4
  %88 = load i32, i32* @RLC_BUSY, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %86, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %83
  %93 = load i32, i32* @RADEON_RESET_RLC, align 4
  %94 = load i32, i32* %3, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %92, %83
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @IH_BUSY, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* @RADEON_RESET_IH, align 4
  %103 = load i32, i32* %3, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %101, %96
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @SEM_BUSY, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i32, i32* @RADEON_RESET_SEM, align 4
  %112 = load i32, i32* %3, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %110, %105
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @GRBM_RQ_PENDING, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, i32* @RADEON_RESET_GRBM, align 4
  %121 = load i32, i32* %3, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %119, %114
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @VMC_BUSY, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i32, i32* @RADEON_RESET_VMC, align 4
  %130 = load i32, i32* %3, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %128, %123
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @MCB_BUSY, align 4
  %135 = load i32, i32* @MCB_NON_DISPLAY_BUSY, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @MCC_BUSY, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @MCD_BUSY, align 4
  %140 = or i32 %138, %139
  %141 = and i32 %133, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %132
  %144 = load i32, i32* @RADEON_RESET_MC, align 4
  %145 = load i32, i32* %3, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %143, %132
  %148 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %149 = call i64 @evergreen_is_display_hung(%struct.radeon_device* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = load i32, i32* @RADEON_RESET_DISPLAY, align 4
  %153 = load i32, i32* %3, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %151, %147
  %156 = load i32, i32* @VM_L2_STATUS, align 4
  %157 = call i32 @RREG32(i32 %156)
  store i32 %157, i32* %4, align 4
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* @L2_BUSY, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %155
  %163 = load i32, i32* @RADEON_RESET_VMC, align 4
  %164 = load i32, i32* %3, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %162, %155
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

declare dso_local i32 @RREG32(i32) #1

declare dso_local i64 @evergreen_is_display_hung(%struct.radeon_device*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
