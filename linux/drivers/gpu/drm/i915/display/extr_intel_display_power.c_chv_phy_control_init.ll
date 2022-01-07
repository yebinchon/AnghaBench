; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_chv_phy_control_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_chv_phy_control_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, i32* }
%struct.i915_power_well = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.drm_i915_private*, %struct.i915_power_well*)* }

@VLV_DISP_PW_DPIO_CMN_BC = common dso_local global i32 0, align 4
@CHV_DISP_PW_DPIO_CMN_D = common dso_local global i32 0, align 4
@PHY_LDO_DELAY_600NS = common dso_local global i32 0, align 4
@DPIO_PHY0 = common dso_local global i64 0, align 8
@DPIO_PHY1 = common dso_local global i64 0, align 8
@PHY_CH_DEEP_PSR = common dso_local global i32 0, align 4
@DPIO_CH0 = common dso_local global i32 0, align 4
@DPIO_CH1 = common dso_local global i32 0, align 4
@PIPE_A = common dso_local global i32 0, align 4
@DPLL_PORTB_READY_MASK = common dso_local global i32 0, align 4
@DPLL_PORTC_READY_MASK = common dso_local global i32 0, align 4
@DPIO_PHY_STATUS = common dso_local global i32 0, align 4
@DPLL_PORTD_READY_MASK = common dso_local global i32 0, align 4
@DISPLAY_PHY_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Initial PHY_CONTROL=0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @chv_phy_control_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chv_phy_control_init(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.i915_power_well*, align 8
  %4 = alloca %struct.i915_power_well*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %10 = load i32, i32* @VLV_DISP_PW_DPIO_CMN_BC, align 4
  %11 = call %struct.i915_power_well* @lookup_power_well(%struct.drm_i915_private* %9, i32 %10)
  store %struct.i915_power_well* %11, %struct.i915_power_well** %3, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %13 = load i32, i32* @CHV_DISP_PW_DPIO_CMN_D, align 4
  %14 = call %struct.i915_power_well* @lookup_power_well(%struct.drm_i915_private* %12, i32 %13)
  store %struct.i915_power_well* %14, %struct.i915_power_well** %4, align 8
  %15 = load i32, i32* @PHY_LDO_DELAY_600NS, align 4
  %16 = load i64, i64* @DPIO_PHY0, align 8
  %17 = call i32 @PHY_LDO_SEQ_DELAY(i32 %15, i64 %16)
  %18 = load i32, i32* @PHY_LDO_DELAY_600NS, align 4
  %19 = load i64, i64* @DPIO_PHY1, align 8
  %20 = call i32 @PHY_LDO_SEQ_DELAY(i32 %18, i64 %19)
  %21 = or i32 %17, %20
  %22 = load i32, i32* @PHY_CH_DEEP_PSR, align 4
  %23 = load i64, i64* @DPIO_PHY0, align 8
  %24 = load i32, i32* @DPIO_CH0, align 4
  %25 = call i32 @PHY_CH_POWER_MODE(i32 %22, i64 %23, i32 %24)
  %26 = or i32 %21, %25
  %27 = load i32, i32* @PHY_CH_DEEP_PSR, align 4
  %28 = load i64, i64* @DPIO_PHY0, align 8
  %29 = load i32, i32* @DPIO_CH1, align 4
  %30 = call i32 @PHY_CH_POWER_MODE(i32 %27, i64 %28, i32 %29)
  %31 = or i32 %26, %30
  %32 = load i32, i32* @PHY_CH_DEEP_PSR, align 4
  %33 = load i64, i64* @DPIO_PHY1, align 8
  %34 = load i32, i32* @DPIO_CH0, align 4
  %35 = call i32 @PHY_CH_POWER_MODE(i32 %32, i64 %33, i32 %34)
  %36 = or i32 %31, %35
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %38 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.i915_power_well*, %struct.i915_power_well** %3, align 8
  %40 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64 (%struct.drm_i915_private*, %struct.i915_power_well*)*, i64 (%struct.drm_i915_private*, %struct.i915_power_well*)** %44, align 8
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %47 = load %struct.i915_power_well*, %struct.i915_power_well** %3, align 8
  %48 = call i64 %45(%struct.drm_i915_private* %46, %struct.i915_power_well* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %112

50:                                               ; preds = %1
  %51 = load i32, i32* @PIPE_A, align 4
  %52 = call i32 @DPLL(i32 %51)
  %53 = call i32 @I915_READ(i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @DPLL_PORTB_READY_MASK, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, 15
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %68

60:                                               ; preds = %50
  %61 = load i64, i64* @DPIO_PHY0, align 8
  %62 = load i32, i32* @DPIO_CH0, align 4
  %63 = call i32 @PHY_CH_POWER_DOWN_OVRD_EN(i64 %61, i32 %62)
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %65 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %60, %59
  %69 = load i32, i32* %6, align 4
  %70 = load i64, i64* @DPIO_PHY0, align 8
  %71 = load i32, i32* @DPIO_CH0, align 4
  %72 = call i32 @PHY_CH_POWER_DOWN_OVRD(i32 %69, i64 %70, i32 %71)
  %73 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %74 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @DPLL_PORTC_READY_MASK, align 4
  %79 = and i32 %77, %78
  %80 = ashr i32 %79, 4
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp eq i32 %81, 15
  br i1 %82, label %83, label %84

83:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  br label %92

84:                                               ; preds = %68
  %85 = load i64, i64* @DPIO_PHY0, align 8
  %86 = load i32, i32* @DPIO_CH1, align 4
  %87 = call i32 @PHY_CH_POWER_DOWN_OVRD_EN(i64 %85, i32 %86)
  %88 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %89 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %84, %83
  %93 = load i32, i32* %6, align 4
  %94 = load i64, i64* @DPIO_PHY0, align 8
  %95 = load i32, i32* @DPIO_CH1, align 4
  %96 = call i32 @PHY_CH_POWER_DOWN_OVRD(i32 %93, i64 %94, i32 %95)
  %97 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %98 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load i64, i64* @DPIO_PHY0, align 8
  %102 = call i32 @PHY_COM_LANE_RESET_DEASSERT(i64 %101)
  %103 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %104 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %108 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @DPIO_PHY0, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 0, i32* %111, align 4
  br label %118

112:                                              ; preds = %1
  %113 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %114 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* @DPIO_PHY0, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32 1, i32* %117, align 4
  br label %118

118:                                              ; preds = %112, %92
  %119 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %120 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i64 (%struct.drm_i915_private*, %struct.i915_power_well*)*, i64 (%struct.drm_i915_private*, %struct.i915_power_well*)** %124, align 8
  %126 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %127 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %128 = call i64 %125(%struct.drm_i915_private* %126, %struct.i915_power_well* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %167

130:                                              ; preds = %118
  %131 = load i32, i32* @DPIO_PHY_STATUS, align 4
  %132 = call i32 @I915_READ(i32 %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @DPLL_PORTD_READY_MASK, align 4
  %135 = and i32 %133, %134
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp eq i32 %136, 15
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  store i32 0, i32* %8, align 4
  br label %147

139:                                              ; preds = %130
  %140 = load i64, i64* @DPIO_PHY1, align 8
  %141 = load i32, i32* @DPIO_CH0, align 4
  %142 = call i32 @PHY_CH_POWER_DOWN_OVRD_EN(i64 %140, i32 %141)
  %143 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %144 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  br label %147

147:                                              ; preds = %139, %138
  %148 = load i32, i32* %8, align 4
  %149 = load i64, i64* @DPIO_PHY1, align 8
  %150 = load i32, i32* @DPIO_CH0, align 4
  %151 = call i32 @PHY_CH_POWER_DOWN_OVRD(i32 %148, i64 %149, i32 %150)
  %152 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %153 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  %156 = load i64, i64* @DPIO_PHY1, align 8
  %157 = call i32 @PHY_COM_LANE_RESET_DEASSERT(i64 %156)
  %158 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %159 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  %162 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %163 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* @DPIO_PHY1, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  store i32 0, i32* %166, align 4
  br label %173

167:                                              ; preds = %118
  %168 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %169 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i64, i64* @DPIO_PHY1, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  store i32 1, i32* %172, align 4
  br label %173

173:                                              ; preds = %167, %147
  %174 = load i32, i32* @DISPLAY_PHY_CONTROL, align 4
  %175 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %176 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @I915_WRITE(i32 %174, i32 %177)
  %179 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %180 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %181)
  ret void
}

declare dso_local %struct.i915_power_well* @lookup_power_well(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @PHY_LDO_SEQ_DELAY(i32, i64) #1

declare dso_local i32 @PHY_CH_POWER_MODE(i32, i64, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DPLL(i32) #1

declare dso_local i32 @PHY_CH_POWER_DOWN_OVRD_EN(i64, i32) #1

declare dso_local i32 @PHY_CH_POWER_DOWN_OVRD(i32, i64, i32) #1

declare dso_local i32 @PHY_COM_LANE_RESET_DEASSERT(i64) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
