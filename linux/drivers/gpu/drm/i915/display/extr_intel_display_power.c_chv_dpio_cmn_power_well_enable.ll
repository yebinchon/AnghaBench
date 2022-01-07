; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_chv_dpio_cmn_power_well_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_chv_dpio_cmn_power_well_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i915_power_well = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@VLV_DISP_PW_DPIO_CMN_BC = common dso_local global i64 0, align 8
@CHV_DISP_PW_DPIO_CMN_D = common dso_local global i64 0, align 8
@PIPE_A = common dso_local global i32 0, align 4
@DPIO_PHY0 = common dso_local global i32 0, align 4
@PIPE_C = common dso_local global i32 0, align 4
@DPIO_PHY1 = common dso_local global i32 0, align 4
@DISPLAY_PHY_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Display PHY %d is not power up\0A\00", align 1
@CHV_CMN_DW28 = common dso_local global i32 0, align 4
@DPIO_DYNPWRDOWNEN_CH0 = common dso_local global i32 0, align 4
@DPIO_CL1POWERDOWNEN = common dso_local global i32 0, align 4
@DPIO_SUS_CLK_CONFIG_GATE_CLKREQ = common dso_local global i32 0, align 4
@_CHV_CMN_DW6_CH1 = common dso_local global i32 0, align 4
@DPIO_DYNPWRDOWNEN_CH1 = common dso_local global i32 0, align 4
@CHV_CMN_DW30 = common dso_local global i32 0, align 4
@DPIO_CL2_LDOFUSE_PWRENB = common dso_local global i32 0, align 4
@DISPLAY_PHY_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Enabled DPIO PHY%d (PHY_CONTROL=0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.i915_power_well*)* @chv_dpio_cmn_power_well_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chv_dpio_cmn_power_well_enable(%struct.drm_i915_private* %0, %struct.i915_power_well* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_power_well*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.i915_power_well* %1, %struct.i915_power_well** %4, align 8
  %8 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %9 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VLV_DISP_PW_DPIO_CMN_BC, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %17 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CHV_DISP_PW_DPIO_CMN_D, align 8
  %22 = icmp ne i64 %20, %21
  br label %23

23:                                               ; preds = %15, %2
  %24 = phi i1 [ false, %2 ], [ %22, %15 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON_ONCE(i32 %25)
  %27 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %28 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VLV_DISP_PW_DPIO_CMN_BC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, i32* @PIPE_A, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @DPIO_PHY0, align 4
  store i32 %36, i32* %5, align 4
  br label %40

37:                                               ; preds = %23
  %38 = load i32, i32* @PIPE_C, align 4
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @DPIO_PHY1, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = call i32 @udelay(i32 1)
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %43 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %44 = call i32 @vlv_set_power_well(%struct.drm_i915_private* %42, %struct.i915_power_well* %43, i32 1)
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %46 = load i32, i32* @DISPLAY_PHY_STATUS, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @PHY_POWERGOOD(i32 %47)
  %49 = call i64 @intel_de_wait_for_set(%struct.drm_i915_private* %45, i32 %46, i32 %48, i32 1)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %51, %40
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %56 = call i32 @vlv_dpio_get(%struct.drm_i915_private* %55)
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @CHV_CMN_DW28, align 4
  %60 = call i32 @vlv_dpio_read(%struct.drm_i915_private* %57, i32 %58, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* @DPIO_DYNPWRDOWNEN_CH0, align 4
  %62 = load i32, i32* @DPIO_CL1POWERDOWNEN, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @DPIO_SUS_CLK_CONFIG_GATE_CLKREQ, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @CHV_CMN_DW28, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %68, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %74 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @VLV_DISP_PW_DPIO_CMN_BC, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %54
  %81 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @_CHV_CMN_DW6_CH1, align 4
  %84 = call i32 @vlv_dpio_read(%struct.drm_i915_private* %81, i32 %82, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* @DPIO_DYNPWRDOWNEN_CH1, align 4
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  %88 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @_CHV_CMN_DW6_CH1, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %88, i32 %89, i32 %90, i32 %91)
  br label %106

93:                                               ; preds = %54
  %94 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @CHV_CMN_DW30, align 4
  %97 = call i32 @vlv_dpio_read(%struct.drm_i915_private* %94, i32 %95, i32 %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* @DPIO_CL2_LDOFUSE_PWRENB, align 4
  %99 = load i32, i32* %7, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %7, align 4
  %101 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @CHV_CMN_DW30, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %101, i32 %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %93, %80
  %107 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %108 = call i32 @vlv_dpio_put(%struct.drm_i915_private* %107)
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @PHY_COM_LANE_RESET_DEASSERT(i32 %109)
  %111 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %112 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load i32, i32* @DISPLAY_PHY_CONTROL, align 4
  %116 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %117 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @I915_WRITE(i32 %115, i32 %118)
  %120 = load i32, i32* %5, align 4
  %121 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %122 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %120, i32 %123)
  %125 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %126 = call i32 @assert_chv_phy_status(%struct.drm_i915_private* %125)
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @vlv_set_power_well(%struct.drm_i915_private*, %struct.i915_power_well*, i32) #1

declare dso_local i64 @intel_de_wait_for_set(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @PHY_POWERGOOD(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @vlv_dpio_get(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_dpio_read(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @vlv_dpio_write(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @vlv_dpio_put(%struct.drm_i915_private*) #1

declare dso_local i32 @PHY_COM_LANE_RESET_DEASSERT(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @assert_chv_phy_status(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
