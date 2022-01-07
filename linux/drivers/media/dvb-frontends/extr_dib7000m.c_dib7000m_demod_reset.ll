; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_demod_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_demod_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000m_state = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i64, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@DIB7000M_POWER_ALL = common dso_local global i32 0, align 4
@DIBX000_VBG_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"GPIO reset was not successful.\0A\00", align 1
@OUTMODE_HIGH_Z = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"OUTPUT_MODE could not be reset.\0A\00", align 1
@DIBX000_SLOW_ADC_ON = common dso_local global i32 0, align 4
@DIBX000_SLOW_ADC_OFF = common dso_local global i32 0, align 4
@dib7000m_defaults_common = common dso_local global i32 0, align 4
@dib7000m_defaults = common dso_local global i32 0, align 4
@DIB7000M_POWER_INTERFACE_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib7000m_state*)* @dib7000m_demod_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000m_demod_reset(%struct.dib7000m_state* %0) #0 {
  %2 = alloca %struct.dib7000m_state*, align 8
  store %struct.dib7000m_state* %0, %struct.dib7000m_state** %2, align 8
  %3 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %4 = load i32, i32* @DIB7000M_POWER_ALL, align 4
  %5 = call i32 @dib7000m_set_power_mode(%struct.dib7000m_state* %3, i32 %4)
  %6 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %7 = load i32, i32* @DIBX000_VBG_ENABLE, align 4
  %8 = call i32 @dib7000m_set_adc_state(%struct.dib7000m_state* %6, i32 %7)
  %9 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %10 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %9, i32 898, i32 65535)
  %11 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %12 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %11, i32 899, i32 65535)
  %13 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %14 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %13, i32 900, i32 65295)
  %15 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %16 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %15, i32 901, i32 65532)
  %17 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %18 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %17, i32 898, i32 0)
  %19 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %20 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %19, i32 899, i32 0)
  %21 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %22 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %21, i32 900, i32 0)
  %23 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %24 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %23, i32 901, i32 0)
  %25 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %26 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 16384
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %31 = call i32 @dib7000m_reset_pll(%struct.dib7000m_state* %30)
  br label %35

32:                                               ; preds = %1
  %33 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %34 = call i32 @dib7000mc_reset_pll(%struct.dib7000m_state* %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %37 = call i64 @dib7000m_reset_gpio(%struct.dib7000m_state* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %35
  %42 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %43 = load i32, i32* @OUTMODE_HIGH_Z, align 4
  %44 = call i64 @dib7000m_set_output_mode(%struct.dib7000m_state* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %41
  %49 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %50 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %51 = call i32 @dib7000m_read_word(%struct.dib7000m_state* %50, i32 1794)
  %52 = and i32 %51, -3
  %53 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %49, i32 1794, i32 %52)
  %54 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %55 = call i32 @dib7000m_set_bandwidth(%struct.dib7000m_state* %54, i32 8000)
  %56 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %57 = load i32, i32* @DIBX000_SLOW_ADC_ON, align 4
  %58 = call i32 @dib7000m_set_adc_state(%struct.dib7000m_state* %56, i32 %57)
  %59 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %60 = call i32 @dib7000m_sad_calib(%struct.dib7000m_state* %59)
  %61 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %62 = load i32, i32* @DIBX000_SLOW_ADC_OFF, align 4
  %63 = call i32 @dib7000m_set_adc_state(%struct.dib7000m_state* %61, i32 %62)
  %64 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %65 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %48
  %70 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %71 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %70, i32 1796, i32 0)
  br label %72

72:                                               ; preds = %69, %48
  %73 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %74 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %80 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %81 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 261, %82
  %84 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %79, i32 %83, i32 2)
  br label %92

85:                                               ; preds = %72
  %86 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %87 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %88 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 224, %89
  %91 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %86, i32 %90, i32 1)
  br label %92

92:                                               ; preds = %85, %78
  %93 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %94 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %100 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %99, i32 36, i32 1877)
  br label %104

101:                                              ; preds = %92
  %102 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %103 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %102, i32 36, i32 8021)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %106 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 16384
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %111 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %110, i32 909, i32 3136)
  br label %115

112:                                              ; preds = %104
  %113 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %114 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %113, i32 909, i32 49)
  br label %115

115:                                              ; preds = %112, %109
  %116 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %117 = load i32, i32* @dib7000m_defaults_common, align 4
  %118 = call i32 @dib7000m_write_tab(%struct.dib7000m_state* %116, i32 %117)
  %119 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %120 = load i32, i32* @dib7000m_defaults, align 4
  %121 = call i32 @dib7000m_write_tab(%struct.dib7000m_state* %119, i32 %120)
  %122 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %123 = load i32, i32* @DIB7000M_POWER_INTERFACE_ONLY, align 4
  %124 = call i32 @dib7000m_set_power_mode(%struct.dib7000m_state* %122, i32 %123)
  %125 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %126 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %132 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 8
  ret i32 0
}

declare dso_local i32 @dib7000m_set_power_mode(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @dib7000m_set_adc_state(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @dib7000m_write_word(%struct.dib7000m_state*, i32, i32) #1

declare dso_local i32 @dib7000m_reset_pll(%struct.dib7000m_state*) #1

declare dso_local i32 @dib7000mc_reset_pll(%struct.dib7000m_state*) #1

declare dso_local i64 @dib7000m_reset_gpio(%struct.dib7000m_state*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i64 @dib7000m_set_output_mode(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @dib7000m_read_word(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @dib7000m_set_bandwidth(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @dib7000m_sad_calib(%struct.dib7000m_state*) #1

declare dso_local i32 @dib7000m_write_tab(%struct.dib7000m_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
