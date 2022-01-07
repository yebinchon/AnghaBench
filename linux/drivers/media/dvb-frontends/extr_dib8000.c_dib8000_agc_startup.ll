; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_agc_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_agc_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_3__, %struct.dib8000_state* }
%struct.TYPE_3__ = type { i32 }
%struct.dib8000_state = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend*, i32)* }

@DIBX000_ADC_ON = common dso_local global i32 0, align 4
@DIB8000_POWER_ALL = common dso_local global i32 0, align 4
@CT_AGC_STOP = common dso_local global i32 0, align 4
@FE_STATUS_TUNE_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib8000_agc_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_agc_startup(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dib8000_state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 1
  %10 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  store %struct.dib8000_state* %10, %struct.dib8000_state** %3, align 8
  %11 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %12 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %11, i32 0, i32 0
  store i32* %12, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 32768, i32* %7, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %112 [
    i32 131, label %15
    i32 130, label %69
    i32 129, label %86
    i32 128, label %94
  ]

15:                                               ; preds = %1
  %16 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %17 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 32912
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %22 = load i32, i32* @DIBX000_ADC_ON, align 4
  %23 = call i32 @dib8000_set_adc_state(%struct.dib8000_state* %21, i32 %22)
  br label %50

24:                                               ; preds = %15
  %25 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %26 = load i32, i32* @DIB8000_POWER_ALL, align 4
  %27 = call i32 @dib8000_set_power_mode(%struct.dib8000_state* %25, i32 %26)
  %28 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %29 = call i32 @dib8000_read_word(%struct.dib8000_state* %28, i32 1947)
  %30 = and i32 %29, 65280
  store i32 %30, i32* %6, align 4
  %31 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 65535
  %34 = call i32 @dib8000_write_word(%struct.dib8000_state* %31, i32 1946, i32 %33)
  %35 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, 16384
  %38 = load i32, i32* %7, align 4
  %39 = ashr i32 %38, 16
  %40 = and i32 %39, 255
  %41 = or i32 %37, %40
  %42 = call i32 @dib8000_write_word(%struct.dib8000_state* %35, i32 1947, i32 %41)
  %43 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %44 = call i32 @dib8000_read_word(%struct.dib8000_state* %43, i32 1920)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, 3
  %48 = and i32 %47, -129
  %49 = call i32 @dib8000_write_word(%struct.dib8000_state* %45, i32 1920, i32 %48)
  br label %50

50:                                               ; preds = %24, %20
  %51 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %52 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %53 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sdiv i32 %55, 1000
  %57 = call i64 @BAND_OF_FREQUENCY(i32 %56)
  %58 = trunc i64 %57 to i8
  %59 = call i32 @dib8000_set_agc_config(%struct.dib8000_state* %51, i8 zeroext %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %50
  %62 = load i32, i32* @CT_AGC_STOP, align 4
  %63 = load i32*, i32** %4, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @FE_STATUS_TUNE_FAILED, align 4
  %65 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %66 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  br label %115

67:                                               ; preds = %50
  store i32 70, i32* %5, align 4
  %68 = load i32*, i32** %4, align 8
  store i32 130, i32* %68, align 4
  br label %115

69:                                               ; preds = %1
  %70 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %71 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %72, align 8
  %74 = icmp ne i32 (%struct.dvb_frontend*, i32)* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %77 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %78, align 8
  %80 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %81 = call i32 %79(%struct.dvb_frontend* %80, i32 1)
  br label %82

82:                                               ; preds = %75, %69
  %83 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %84 = call i32 @dib8000_restart_agc(%struct.dib8000_state* %83)
  store i32 50, i32* %5, align 4
  %85 = load i32*, i32** %4, align 8
  store i32 129, i32* %85, align 4
  br label %115

86:                                               ; preds = %1
  store i32 70, i32* %5, align 4
  %87 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %88 = call i32 @dib8000_update_lna(%struct.dib8000_state* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 50, i32* %5, align 4
  br label %93

91:                                               ; preds = %86
  %92 = load i32*, i32** %4, align 8
  store i32 128, i32* %92, align 4
  br label %93

93:                                               ; preds = %91, %90
  br label %115

94:                                               ; preds = %1
  %95 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %96 = call i32 @dib8000_agc_soft_split(%struct.dib8000_state* %95)
  %97 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %98 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %99, align 8
  %101 = icmp ne i32 (%struct.dvb_frontend*, i32)* %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %94
  %103 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %104 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %105, align 8
  %107 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %108 = call i32 %106(%struct.dvb_frontend* %107, i32 0)
  br label %109

109:                                              ; preds = %102, %94
  %110 = load i32, i32* @CT_AGC_STOP, align 4
  %111 = load i32*, i32** %4, align 8
  store i32 %110, i32* %111, align 4
  br label %115

112:                                              ; preds = %1
  %113 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %114 = call i32 @dib8000_agc_soft_split(%struct.dib8000_state* %113)
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %112, %109, %93, %82, %67, %61
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @dib8000_set_adc_state(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_set_power_mode(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

declare dso_local i32 @dib8000_set_agc_config(%struct.dib8000_state*, i8 zeroext) #1

declare dso_local i64 @BAND_OF_FREQUENCY(i32) #1

declare dso_local i32 @dib8000_restart_agc(%struct.dib8000_state*) #1

declare dso_local i32 @dib8000_update_lna(%struct.dib8000_state*) #1

declare dso_local i32 @dib8000_agc_soft_split(%struct.dib8000_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
