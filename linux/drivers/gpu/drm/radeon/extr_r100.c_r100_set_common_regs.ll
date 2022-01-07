; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_set_common_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_set_common_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@RADEON_OV0_SCALE_CNTL = common dso_local global i32 0, align 4
@RADEON_SUBPIC_CNTL = common dso_local global i32 0, align 4
@RADEON_VIPH_CONTROL = common dso_local global i32 0, align 4
@RADEON_I2C_CNTL_1 = common dso_local global i32 0, align 4
@RADEON_DVI_I2C_CNTL_1 = common dso_local global i32 0, align 4
@RADEON_CAP0_TRIG_CNTL = common dso_local global i32 0, align 4
@RADEON_CAP1_TRIG_CNTL = common dso_local global i32 0, align 4
@RADEON_DISP_HW_DEBUG = common dso_local global i32 0, align 4
@RADEON_TV_DAC_CNTL = common dso_local global i32 0, align 4
@RADEON_DAC_CNTL2 = common dso_local global i32 0, align 4
@RADEON_DAC2_DAC_CLK_SEL = common dso_local global i32 0, align 4
@RADEON_DAC2_DAC2_CLK_SEL = common dso_local global i32 0, align 4
@RADEON_CRT2_DISP1_SEL = common dso_local global i32 0, align 4
@RADEON_TV_DAC_PEDESTAL = common dso_local global i32 0, align 4
@RADEON_TV_DAC_STD_MASK = common dso_local global i32 0, align 4
@RADEON_TV_DAC_RDACPD = common dso_local global i32 0, align 4
@RADEON_TV_DAC_GDACPD = common dso_local global i32 0, align 4
@RADEON_TV_DAC_BDACPD = common dso_local global i32 0, align 4
@RADEON_TV_DAC_BGADJ_MASK = common dso_local global i32 0, align 4
@RADEON_TV_DAC_DACADJ_MASK = common dso_local global i32 0, align 4
@RADEON_TV_DAC_NBLANK = common dso_local global i32 0, align 4
@RADEON_TV_DAC_NHOLD = common dso_local global i32 0, align 4
@RADEON_TV_DAC_STD_PS2 = common dso_local global i32 0, align 4
@RADEON_PLL_PWRMGT_CNTL = common dso_local global i32 0, align 4
@RADEON_PM_MODE_SEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r100_set_common_regs(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %3, align 8
  store i32 0, i32* %4, align 4
  %12 = load i32, i32* @RADEON_OV0_SCALE_CNTL, align 4
  %13 = call i32 @WREG32(i32 %12, i32 0)
  %14 = load i32, i32* @RADEON_SUBPIC_CNTL, align 4
  %15 = call i32 @WREG32(i32 %14, i32 0)
  %16 = load i32, i32* @RADEON_VIPH_CONTROL, align 4
  %17 = call i32 @WREG32(i32 %16, i32 0)
  %18 = load i32, i32* @RADEON_I2C_CNTL_1, align 4
  %19 = call i32 @WREG32(i32 %18, i32 0)
  %20 = load i32, i32* @RADEON_DVI_I2C_CNTL_1, align 4
  %21 = call i32 @WREG32(i32 %20, i32 0)
  %22 = load i32, i32* @RADEON_CAP0_TRIG_CNTL, align 4
  %23 = call i32 @WREG32(i32 %22, i32 0)
  %24 = load i32, i32* @RADEON_CAP1_TRIG_CNTL, align 4
  %25 = call i32 @WREG32(i32 %24, i32 0)
  %26 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %111 [
    i32 20830, label %31
    i32 22889, label %31
    i32 20825, label %32
    i32 20826, label %32
  ]

31:                                               ; preds = %1, %1
  store i32 1, i32* %4, align 4
  br label %111

32:                                               ; preds = %1, %1
  %33 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %34 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 4136
  br i1 %38, label %39, label %110

39:                                               ; preds = %32
  %40 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %41 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 364
  br i1 %45, label %109, label %46

46:                                               ; preds = %39
  %47 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %48 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 365
  br i1 %52, label %109, label %53

53:                                               ; preds = %46
  %54 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %55 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 366
  br i1 %59, label %109, label %60

60:                                               ; preds = %53
  %61 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %62 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 367
  br i1 %66, label %109, label %67

67:                                               ; preds = %60
  %68 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %69 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 368
  br i1 %73, label %109, label %74

74:                                               ; preds = %67
  %75 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %76 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 381
  br i1 %80, label %109, label %81

81:                                               ; preds = %74
  %82 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %83 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 382
  br i1 %87, label %109, label %88

88:                                               ; preds = %81
  %89 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %90 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 387
  br i1 %94, label %109, label %95

95:                                               ; preds = %88
  %96 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %97 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 394
  br i1 %101, label %109, label %102

102:                                              ; preds = %95
  %103 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %104 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 410
  br i1 %108, label %109, label %110

109:                                              ; preds = %102, %95, %88, %81, %74, %67, %60, %53, %46, %39
  store i32 1, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %102, %32
  br label %111

111:                                              ; preds = %1, %110, %31
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %164

114:                                              ; preds = %111
  %115 = load i32, i32* @RADEON_DISP_HW_DEBUG, align 4
  %116 = call i32 @RREG32(i32 %115)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* @RADEON_TV_DAC_CNTL, align 4
  %118 = call i32 @RREG32(i32 %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* @RADEON_DAC_CNTL2, align 4
  %120 = call i32 @RREG32(i32 %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* @RADEON_DAC2_DAC_CLK_SEL, align 4
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %8, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* @RADEON_DAC2_DAC2_CLK_SEL, align 4
  %126 = load i32, i32* %8, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* @RADEON_CRT2_DISP1_SEL, align 4
  %129 = load i32, i32* %6, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* @RADEON_TV_DAC_PEDESTAL, align 4
  %132 = load i32, i32* @RADEON_TV_DAC_STD_MASK, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @RADEON_TV_DAC_RDACPD, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @RADEON_TV_DAC_GDACPD, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @RADEON_TV_DAC_BDACPD, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @RADEON_TV_DAC_BGADJ_MASK, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @RADEON_TV_DAC_DACADJ_MASK, align 4
  %143 = or i32 %141, %142
  %144 = xor i32 %143, -1
  %145 = load i32, i32* %7, align 4
  %146 = and i32 %145, %144
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* @RADEON_TV_DAC_NBLANK, align 4
  %148 = load i32, i32* @RADEON_TV_DAC_NHOLD, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @RADEON_TV_DAC_STD_PS2, align 4
  %151 = or i32 %149, %150
  %152 = or i32 %151, 5767168
  %153 = load i32, i32* %7, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* @RADEON_TV_DAC_CNTL, align 4
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @WREG32(i32 %155, i32 %156)
  %158 = load i32, i32* @RADEON_DISP_HW_DEBUG, align 4
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @WREG32(i32 %158, i32 %159)
  %161 = load i32, i32* @RADEON_DAC_CNTL2, align 4
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @WREG32(i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %114, %111
  %165 = load i32, i32* @RADEON_PLL_PWRMGT_CNTL, align 4
  %166 = call i32 @RREG32_PLL(i32 %165)
  store i32 %166, i32* %5, align 4
  %167 = load i32, i32* @RADEON_PM_MODE_SEL, align 4
  %168 = xor i32 %167, -1
  %169 = load i32, i32* %5, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %5, align 4
  %171 = load i32, i32* @RADEON_PLL_PWRMGT_CNTL, align 4
  %172 = load i32, i32* %5, align 4
  %173 = call i32 @WREG32_PLL(i32 %171, i32 %172)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @RREG32_PLL(i32) #1

declare dso_local i32 @WREG32_PLL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
