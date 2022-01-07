; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_demod_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_demod_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000p_state = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@DIB7000P_POWER_ALL = common dso_local global i32 0, align 4
@SOC7090 = common dso_local global i64 0, align 8
@DIBX000_VBG_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"GPIO reset was not successful.\0A\00", align 1
@OUTMODE_HIGH_Z = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"OUTPUT_MODE could not be reset.\0A\00", align 1
@DIBX000_SLOW_ADC_ON = common dso_local global i32 0, align 4
@DIBX000_SLOW_ADC_OFF = common dso_local global i32 0, align 4
@dib7000p_defaults = common dso_local global i32 0, align 4
@DIB7000P_POWER_INTERFACE_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib7000p_state*)* @dib7000p_demod_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000p_demod_reset(%struct.dib7000p_state* %0) #0 {
  %2 = alloca %struct.dib7000p_state*, align 8
  store %struct.dib7000p_state* %0, %struct.dib7000p_state** %2, align 8
  %3 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %4 = load i32, i32* @DIB7000P_POWER_ALL, align 4
  %5 = call i32 @dib7000p_set_power_mode(%struct.dib7000p_state* %3, i32 %4)
  %6 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %7 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SOC7090, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %13 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %12, i32 0, i32 2
  %14 = call i32 @dibx000_reset_i2c_master(i32* %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %17 = load i32, i32* @DIBX000_VBG_ENABLE, align 4
  %18 = call i32 @dib7000p_set_adc_state(%struct.dib7000p_state* %16, i32 %17)
  %19 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %20 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %19, i32 770, i32 65535)
  %21 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %22 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %21, i32 771, i32 65535)
  %23 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %24 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %23, i32 772, i32 31)
  %25 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %26 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %25, i32 1280, i32 7)
  %27 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %28 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %27, i32 770, i32 0)
  %29 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %30 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %29, i32 771, i32 0)
  %31 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %32 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %31, i32 772, i32 0)
  %33 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %34 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %33, i32 1280, i32 0)
  %35 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %36 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SOC7090, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %15
  %41 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %42 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %41, i32 898, i32 3)
  %43 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %44 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %43, i32 898, i32 0)
  br label %45

45:                                               ; preds = %40, %15
  %46 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %47 = call i32 @dib7000p_reset_pll(%struct.dib7000p_state* %46)
  %48 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %49 = call i64 @dib7000p_reset_gpio(%struct.dib7000p_state* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %45
  %54 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %55 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SOC7090, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %53
  %60 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %61 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %60, i32 899, i32 0)
  %62 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %63 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %62, i32 42, i32 35)
  %64 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %65 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %64, i32 43, i32 724)
  %66 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %67 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %66, i32 44, i32 300)
  %68 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %69 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %68, i32 273, i32 30)
  br label %70

70:                                               ; preds = %59, %53
  %71 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %72 = load i32, i32* @OUTMODE_HIGH_Z, align 4
  %73 = call i64 @dib7000p_set_output_mode(%struct.dib7000p_state* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = call i32 @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %70
  %78 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %79 = load i32, i32* @DIBX000_SLOW_ADC_ON, align 4
  %80 = call i32 @dib7000p_set_adc_state(%struct.dib7000p_state* %78, i32 %79)
  %81 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %82 = call i32 @dib7000p_sad_calib(%struct.dib7000p_state* %81)
  %83 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %84 = load i32, i32* @DIBX000_SLOW_ADC_OFF, align 4
  %85 = call i32 @dib7000p_set_adc_state(%struct.dib7000p_state* %83, i32 %84)
  %86 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %87 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %88 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %87, i32 1285)
  %89 = and i32 %88, -3
  %90 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %86, i32 1285, i32 %89)
  %91 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %92 = call i32 @dib7000p_set_bandwidth(%struct.dib7000p_state* %91, i32 8000)
  %93 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %94 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @SOC7090, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %77
  %99 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %100 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %99, i32 36, i32 1877)
  br label %114

101:                                              ; preds = %77
  %102 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %103 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %109 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %108, i32 36, i32 1877)
  br label %113

110:                                              ; preds = %101
  %111 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %112 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %111, i32 36, i32 8021)
  br label %113

113:                                              ; preds = %110, %107
  br label %114

114:                                              ; preds = %113, %98
  %115 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %116 = load i32, i32* @dib7000p_defaults, align 4
  %117 = call i32 @dib7000p_write_tab(%struct.dib7000p_state* %115, i32 %116)
  %118 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %119 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @SOC7090, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %114
  %124 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %125 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %124, i32 901, i32 6)
  %126 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %127 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %126, i32 902, i32 3136)
  %128 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %129 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %128, i32 905, i32 11406)
  br label %130

130:                                              ; preds = %123, %114
  %131 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %132 = load i32, i32* @DIB7000P_POWER_INTERFACE_ONLY, align 4
  %133 = call i32 @dib7000p_set_power_mode(%struct.dib7000p_state* %131, i32 %132)
  ret i32 0
}

declare dso_local i32 @dib7000p_set_power_mode(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dibx000_reset_i2c_master(i32*) #1

declare dso_local i32 @dib7000p_set_adc_state(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

declare dso_local i32 @dib7000p_reset_pll(%struct.dib7000p_state*) #1

declare dso_local i64 @dib7000p_reset_gpio(%struct.dib7000p_state*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i64 @dib7000p_set_output_mode(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_sad_calib(%struct.dib7000p_state*) #1

declare dso_local i32 @dib7000p_read_word(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_set_bandwidth(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_write_tab(%struct.dib7000p_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
