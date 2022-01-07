; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-tpo-td028ttec1.c_td028ttec1_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-tpo-td028ttec1.c_td028ttec1_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.td028ttec1_panel = type { i32 }

@JBT_REG_POWER_ON_OFF = common dso_local global i32 0, align 4
@JBT_REG_DISPLAY_MODE = common dso_local global i32 0, align 4
@JBT_REG_QUAD_RATE = common dso_local global i32 0, align 4
@JBT_REG_OUTPUT_CONTROL = common dso_local global i32 0, align 4
@JBT_REG_SLEEP_OUT = common dso_local global i32 0, align 4
@JBT_REG_DISPLAY_MODE1 = common dso_local global i32 0, align 4
@JBT_REG_DISPLAY_MODE2 = common dso_local global i32 0, align 4
@JBT_REG_RGB_FORMAT = common dso_local global i32 0, align 4
@JBT_REG_DRIVE_SYSTEM = common dso_local global i32 0, align 4
@JBT_REG_BOOSTER_OP = common dso_local global i32 0, align 4
@JBT_REG_BOOSTER_MODE = common dso_local global i32 0, align 4
@JBT_REG_BOOSTER_FREQ = common dso_local global i32 0, align 4
@JBT_REG_OPAMP_SYSCLK = common dso_local global i32 0, align 4
@JBT_REG_VSC_VOLTAGE = common dso_local global i32 0, align 4
@JBT_REG_VCOM_VOLTAGE = common dso_local global i32 0, align 4
@JBT_REG_EXT_DISPL = common dso_local global i32 0, align 4
@JBT_REG_DCCLK_DCEV = common dso_local global i32 0, align 4
@JBT_REG_ASW_SLEW = common dso_local global i32 0, align 4
@JBT_REG_DUMMY_DISPLAY = common dso_local global i32 0, align 4
@JBT_REG_SLEEP_OUT_FR_A = common dso_local global i32 0, align 4
@JBT_REG_SLEEP_OUT_FR_B = common dso_local global i32 0, align 4
@JBT_REG_SLEEP_OUT_FR_C = common dso_local global i32 0, align 4
@JBT_REG_SLEEP_IN_LCCNT_D = common dso_local global i32 0, align 4
@JBT_REG_SLEEP_IN_LCCNT_E = common dso_local global i32 0, align 4
@JBT_REG_SLEEP_IN_LCCNT_F = common dso_local global i32 0, align 4
@JBT_REG_SLEEP_IN_LCCNT_G = common dso_local global i32 0, align 4
@JBT_REG_GAMMA1_FINE_1 = common dso_local global i32 0, align 4
@JBT_REG_GAMMA1_FINE_2 = common dso_local global i32 0, align 4
@JBT_REG_GAMMA1_INCLINATION = common dso_local global i32 0, align 4
@JBT_REG_GAMMA1_BLUE_OFFSET = common dso_local global i32 0, align 4
@JBT_REG_HCLOCK_VGA = common dso_local global i32 0, align 4
@JBT_REG_BLANK_CONTROL = common dso_local global i32 0, align 4
@JBT_REG_BLANK_TH_TV = common dso_local global i32 0, align 4
@JBT_REG_CKV_ON_OFF = common dso_local global i32 0, align 4
@JBT_REG_CKV_1_2 = common dso_local global i32 0, align 4
@JBT_REG_OEV_TIMING = common dso_local global i32 0, align 4
@JBT_REG_ASW_TIMING_1 = common dso_local global i32 0, align 4
@JBT_REG_ASW_TIMING_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @td028ttec1_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @td028ttec1_prepare(%struct.drm_panel* %0) #0 {
  %2 = alloca %struct.drm_panel*, align 8
  %3 = alloca %struct.td028ttec1_panel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %2, align 8
  %6 = load %struct.drm_panel*, %struct.drm_panel** %2, align 8
  %7 = call %struct.td028ttec1_panel* @to_td028ttec1_device(%struct.drm_panel* %6)
  store %struct.td028ttec1_panel* %7, %struct.td028ttec1_panel** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %15, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp ult i32 %9, 3
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %13 = call i32 @jbt_ret_write_0(%struct.td028ttec1_panel* %12, i32 0, i32* %5)
  %14 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %4, align 4
  br label %8

18:                                               ; preds = %8
  %19 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %20 = load i32, i32* @JBT_REG_POWER_ON_OFF, align 4
  %21 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %19, i32 %20, i32 23, i32* %5)
  %22 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %23 = load i32, i32* @JBT_REG_DISPLAY_MODE, align 4
  %24 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %22, i32 %23, i32 128, i32* %5)
  %25 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %26 = load i32, i32* @JBT_REG_QUAD_RATE, align 4
  %27 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %25, i32 %26, i32 0, i32* %5)
  %28 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %29 = load i32, i32* @JBT_REG_POWER_ON_OFF, align 4
  %30 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %28, i32 %29, i32 22, i32* %5)
  %31 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %32 = load i32, i32* @JBT_REG_OUTPUT_CONTROL, align 4
  %33 = call i32 @jbt_reg_write_2(%struct.td028ttec1_panel* %31, i32 %32, i32 65529, i32* %5)
  %34 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %35 = load i32, i32* @JBT_REG_SLEEP_OUT, align 4
  %36 = call i32 @jbt_ret_write_0(%struct.td028ttec1_panel* %34, i32 %35, i32* %5)
  %37 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %38 = load i32, i32* @JBT_REG_DISPLAY_MODE1, align 4
  %39 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %37, i32 %38, i32 1, i32* %5)
  %40 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %41 = load i32, i32* @JBT_REG_DISPLAY_MODE2, align 4
  %42 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %40, i32 %41, i32 0, i32* %5)
  %43 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %44 = load i32, i32* @JBT_REG_RGB_FORMAT, align 4
  %45 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %43, i32 %44, i32 96, i32* %5)
  %46 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %47 = load i32, i32* @JBT_REG_DRIVE_SYSTEM, align 4
  %48 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %46, i32 %47, i32 16, i32* %5)
  %49 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %50 = load i32, i32* @JBT_REG_BOOSTER_OP, align 4
  %51 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %49, i32 %50, i32 86, i32* %5)
  %52 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %53 = load i32, i32* @JBT_REG_BOOSTER_MODE, align 4
  %54 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %52, i32 %53, i32 51, i32* %5)
  %55 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %56 = load i32, i32* @JBT_REG_BOOSTER_FREQ, align 4
  %57 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %55, i32 %56, i32 17, i32* %5)
  %58 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %59 = load i32, i32* @JBT_REG_BOOSTER_FREQ, align 4
  %60 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %58, i32 %59, i32 17, i32* %5)
  %61 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %62 = load i32, i32* @JBT_REG_OPAMP_SYSCLK, align 4
  %63 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %61, i32 %62, i32 2, i32* %5)
  %64 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %65 = load i32, i32* @JBT_REG_VSC_VOLTAGE, align 4
  %66 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %64, i32 %65, i32 43, i32* %5)
  %67 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %68 = load i32, i32* @JBT_REG_VCOM_VOLTAGE, align 4
  %69 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %67, i32 %68, i32 64, i32* %5)
  %70 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %71 = load i32, i32* @JBT_REG_EXT_DISPL, align 4
  %72 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %70, i32 %71, i32 3, i32* %5)
  %73 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %74 = load i32, i32* @JBT_REG_DCCLK_DCEV, align 4
  %75 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %73, i32 %74, i32 4, i32* %5)
  %76 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %77 = load i32, i32* @JBT_REG_ASW_SLEW, align 4
  %78 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %76, i32 %77, i32 4, i32* %5)
  %79 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %80 = load i32, i32* @JBT_REG_DUMMY_DISPLAY, align 4
  %81 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %79, i32 %80, i32 0, i32* %5)
  %82 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %83 = load i32, i32* @JBT_REG_SLEEP_OUT_FR_A, align 4
  %84 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %82, i32 %83, i32 17, i32* %5)
  %85 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %86 = load i32, i32* @JBT_REG_SLEEP_OUT_FR_B, align 4
  %87 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %85, i32 %86, i32 17, i32* %5)
  %88 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %89 = load i32, i32* @JBT_REG_SLEEP_OUT_FR_C, align 4
  %90 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %88, i32 %89, i32 17, i32* %5)
  %91 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %92 = load i32, i32* @JBT_REG_SLEEP_IN_LCCNT_D, align 4
  %93 = call i32 @jbt_reg_write_2(%struct.td028ttec1_panel* %91, i32 %92, i32 8256, i32* %5)
  %94 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %95 = load i32, i32* @JBT_REG_SLEEP_IN_LCCNT_E, align 4
  %96 = call i32 @jbt_reg_write_2(%struct.td028ttec1_panel* %94, i32 %95, i32 24768, i32* %5)
  %97 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %98 = load i32, i32* @JBT_REG_SLEEP_IN_LCCNT_F, align 4
  %99 = call i32 @jbt_reg_write_2(%struct.td028ttec1_panel* %97, i32 %98, i32 4128, i32* %5)
  %100 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %101 = load i32, i32* @JBT_REG_SLEEP_IN_LCCNT_G, align 4
  %102 = call i32 @jbt_reg_write_2(%struct.td028ttec1_panel* %100, i32 %101, i32 24768, i32* %5)
  %103 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %104 = load i32, i32* @JBT_REG_GAMMA1_FINE_1, align 4
  %105 = call i32 @jbt_reg_write_2(%struct.td028ttec1_panel* %103, i32 %104, i32 21811, i32* %5)
  %106 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %107 = load i32, i32* @JBT_REG_GAMMA1_FINE_2, align 4
  %108 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %106, i32 %107, i32 0, i32* %5)
  %109 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %110 = load i32, i32* @JBT_REG_GAMMA1_INCLINATION, align 4
  %111 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %109, i32 %110, i32 0, i32* %5)
  %112 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %113 = load i32, i32* @JBT_REG_GAMMA1_BLUE_OFFSET, align 4
  %114 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %112, i32 %113, i32 0, i32* %5)
  %115 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %116 = load i32, i32* @JBT_REG_HCLOCK_VGA, align 4
  %117 = call i32 @jbt_reg_write_2(%struct.td028ttec1_panel* %115, i32 %116, i32 496, i32* %5)
  %118 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %119 = load i32, i32* @JBT_REG_BLANK_CONTROL, align 4
  %120 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %118, i32 %119, i32 2, i32* %5)
  %121 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %122 = load i32, i32* @JBT_REG_BLANK_TH_TV, align 4
  %123 = call i32 @jbt_reg_write_2(%struct.td028ttec1_panel* %121, i32 %122, i32 2052, i32* %5)
  %124 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %125 = load i32, i32* @JBT_REG_CKV_ON_OFF, align 4
  %126 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %124, i32 %125, i32 1, i32* %5)
  %127 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %128 = load i32, i32* @JBT_REG_CKV_1_2, align 4
  %129 = call i32 @jbt_reg_write_2(%struct.td028ttec1_panel* %127, i32 %128, i32 0, i32* %5)
  %130 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %131 = load i32, i32* @JBT_REG_OEV_TIMING, align 4
  %132 = call i32 @jbt_reg_write_2(%struct.td028ttec1_panel* %130, i32 %131, i32 3342, i32* %5)
  %133 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %134 = load i32, i32* @JBT_REG_ASW_TIMING_1, align 4
  %135 = call i32 @jbt_reg_write_2(%struct.td028ttec1_panel* %133, i32 %134, i32 4516, i32* %5)
  %136 = load %struct.td028ttec1_panel*, %struct.td028ttec1_panel** %3, align 8
  %137 = load i32, i32* @JBT_REG_ASW_TIMING_2, align 4
  %138 = call i32 @jbt_reg_write_1(%struct.td028ttec1_panel* %136, i32 %137, i32 14, i32* %5)
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local %struct.td028ttec1_panel* @to_td028ttec1_device(%struct.drm_panel*) #1

declare dso_local i32 @jbt_ret_write_0(%struct.td028ttec1_panel*, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @jbt_reg_write_1(%struct.td028ttec1_panel*, i32, i32, i32*) #1

declare dso_local i32 @jbt_reg_write_2(%struct.td028ttec1_panel*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
