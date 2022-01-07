; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_tv_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_tv_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_connector = type { i32 }

@RADEON_DAC_CNTL2 = common dso_local global i32 0, align 4
@RADEON_TV_MASTER_CNTL = common dso_local global i32 0, align 4
@RADEON_TV_DAC_CNTL = common dso_local global i32 0, align 4
@RADEON_CONFIG_CNTL = common dso_local global i32 0, align 4
@RADEON_TV_PRE_DAC_MUX_CNTL = common dso_local global i32 0, align 4
@RADEON_DAC2_DAC2_CLK_SEL = common dso_local global i32 0, align 4
@RADEON_TV_ON = common dso_local global i32 0, align 4
@RADEON_TV_ASYNC_RST = common dso_local global i32 0, align 4
@RADEON_RESTART_PHASE_FIX = common dso_local global i32 0, align 4
@RADEON_CRT_FIFO_CE_EN = common dso_local global i32 0, align 4
@RADEON_TV_FIFO_CE_EN = common dso_local global i32 0, align 4
@RADEON_RE_SYNC_NOW_SEL_MASK = common dso_local global i32 0, align 4
@RADEON_TV_FIFO_ASYNC_RST = common dso_local global i32 0, align 4
@RADEON_CRT_ASYNC_RST = common dso_local global i32 0, align 4
@RADEON_TV_DAC_NBLANK = common dso_local global i32 0, align 4
@RADEON_TV_DAC_NHOLD = common dso_local global i32 0, align 4
@RADEON_TV_MONITOR_DETECT_EN = common dso_local global i32 0, align 4
@RADEON_TV_DAC_STD_NTSC = common dso_local global i32 0, align 4
@RADEON_TV_DAC_BGADJ_SHIFT = common dso_local global i32 0, align 4
@RADEON_CFG_ATI_REV_ID_MASK = common dso_local global i32 0, align 4
@RADEON_TV_DAC_DACADJ_SHIFT = common dso_local global i32 0, align 4
@RADEON_C_GRN_EN = common dso_local global i32 0, align 4
@RADEON_CMP_BLU_EN = common dso_local global i32 0, align 4
@RADEON_RED_MX_FORCE_DAC_DATA = common dso_local global i32 0, align 4
@RADEON_GRN_MX_FORCE_DAC_DATA = common dso_local global i32 0, align 4
@RADEON_BLU_MX_FORCE_DAC_DATA = common dso_local global i32 0, align 4
@RADEON_TV_FORCE_DAC_DATA_SHIFT = common dso_local global i32 0, align 4
@RADEON_TV_DAC_GDACDET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"S-video TV connection detected\0A\00", align 1
@RADEON_TV_DAC_BDACDET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Composite TV connection detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_connector*)* @radeon_legacy_tv_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_legacy_tv_detect(%struct.drm_encoder* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %5, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %16 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %15, i32 0, i32 0
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %6, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load %struct.radeon_device*, %struct.radeon_device** %19, align 8
  store %struct.radeon_device* %20, %struct.radeon_device** %7, align 8
  store i32 0, i32* %14, align 4
  %21 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %22 = call i64 @ASIC_IS_R300(%struct.radeon_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %26 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %27 = call i32 @r300_legacy_tv_detect(%struct.drm_encoder* %25, %struct.drm_connector* %26)
  store i32 %27, i32* %3, align 4
  br label %143

28:                                               ; preds = %2
  %29 = load i32, i32* @RADEON_DAC_CNTL2, align 4
  %30 = call i32 @RREG32(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @RADEON_TV_MASTER_CNTL, align 4
  %32 = call i32 @RREG32(i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* @RADEON_TV_DAC_CNTL, align 4
  %34 = call i32 @RREG32(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @RADEON_CONFIG_CNTL, align 4
  %36 = call i32 @RREG32(i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* @RADEON_TV_PRE_DAC_MUX_CNTL, align 4
  %38 = call i32 @RREG32(i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @RADEON_DAC2_DAC2_CLK_SEL, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* @RADEON_DAC_CNTL2, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @WREG32(i32 %43, i32 %44)
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @RADEON_TV_ON, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* @RADEON_TV_ASYNC_RST, align 4
  %50 = load i32, i32* @RADEON_RESTART_PHASE_FIX, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @RADEON_CRT_FIFO_CE_EN, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @RADEON_TV_FIFO_CE_EN, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @RADEON_RE_SYNC_NOW_SEL_MASK, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %13, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* @RADEON_TV_FIFO_ASYNC_RST, align 4
  %62 = load i32, i32* @RADEON_CRT_ASYNC_RST, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %13, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* @RADEON_TV_MASTER_CNTL, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @WREG32(i32 %66, i32 %67)
  %69 = load i32, i32* @RADEON_TV_DAC_NBLANK, align 4
  %70 = load i32, i32* @RADEON_TV_DAC_NHOLD, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @RADEON_TV_MONITOR_DETECT_EN, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @RADEON_TV_DAC_STD_NTSC, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @RADEON_TV_DAC_BGADJ_SHIFT, align 4
  %77 = shl i32 8, %76
  %78 = or i32 %75, %77
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @RADEON_CFG_ATI_REV_ID_MASK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %28
  %84 = load i32, i32* @RADEON_TV_DAC_DACADJ_SHIFT, align 4
  %85 = shl i32 4, %84
  %86 = load i32, i32* %13, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %13, align 4
  br label %93

88:                                               ; preds = %28
  %89 = load i32, i32* @RADEON_TV_DAC_DACADJ_SHIFT, align 4
  %90 = shl i32 8, %89
  %91 = load i32, i32* %13, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %88, %83
  %94 = load i32, i32* @RADEON_TV_DAC_CNTL, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @WREG32(i32 %94, i32 %95)
  %97 = load i32, i32* @RADEON_C_GRN_EN, align 4
  %98 = load i32, i32* @RADEON_CMP_BLU_EN, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @RADEON_RED_MX_FORCE_DAC_DATA, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @RADEON_GRN_MX_FORCE_DAC_DATA, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @RADEON_BLU_MX_FORCE_DAC_DATA, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @RADEON_TV_FORCE_DAC_DATA_SHIFT, align 4
  %107 = shl i32 265, %106
  %108 = or i32 %105, %107
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* @RADEON_TV_PRE_DAC_MUX_CNTL, align 4
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @WREG32(i32 %109, i32 %110)
  %112 = call i32 @mdelay(i32 3)
  %113 = load i32, i32* @RADEON_TV_DAC_CNTL, align 4
  %114 = call i32 @RREG32(i32 %113)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @RADEON_TV_DAC_GDACDET, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %93
  store i32 1, i32* %14, align 4
  %120 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %129

121:                                              ; preds = %93
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* @RADEON_TV_DAC_BDACDET, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  store i32 1, i32* %14, align 4
  %127 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %121
  br label %129

129:                                              ; preds = %128, %119
  %130 = load i32, i32* @RADEON_TV_PRE_DAC_MUX_CNTL, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @WREG32(i32 %130, i32 %131)
  %133 = load i32, i32* @RADEON_TV_DAC_CNTL, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @WREG32(i32 %133, i32 %134)
  %136 = load i32, i32* @RADEON_TV_MASTER_CNTL, align 4
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @WREG32(i32 %136, i32 %137)
  %139 = load i32, i32* @RADEON_DAC_CNTL2, align 4
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @WREG32(i32 %139, i32 %140)
  %142 = load i32, i32* %14, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %129, %24
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i64 @ASIC_IS_R300(%struct.radeon_device*) #1

declare dso_local i32 @r300_legacy_tv_detect(%struct.drm_encoder*, %struct.drm_connector*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
