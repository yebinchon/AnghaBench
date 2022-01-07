; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_agc_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_agc_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib7000m_state*, %struct.dtv_frontend_properties }
%struct.dib7000m_state = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (i32*, i32)* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dtv_frontend_properties = type { i32 }

@DIB7000M_POWER_INTERF_ANALOG_AGC = common dso_local global i32 0, align 4
@DIBX000_ADC_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"SPLIT %p: %hd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib7000m_agc_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000m_agc_startup(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.dib7000m_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 1
  store %struct.dtv_frontend_properties* %11, %struct.dtv_frontend_properties** %4, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.dib7000m_state*, %struct.dib7000m_state** %13, align 8
  store %struct.dib7000m_state* %14, %struct.dib7000m_state** %5, align 8
  %15 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %16 = call i32 @dib7000m_read_word(%struct.dib7000m_state* %15, i32 72)
  store i32 %16, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %17 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %18 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %17, i32 0, i32 0
  store i32* %18, i32** %8, align 8
  %19 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %20 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %145 [
    i32 0, label %22
    i32 1, label %42
    i32 2, label %76
    i32 3, label %86
    i32 4, label %115
    i32 5, label %125
  ]

22:                                               ; preds = %1
  %23 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %24 = load i32, i32* @DIB7000M_POWER_INTERF_ANALOG_AGC, align 4
  %25 = call i32 @dib7000m_set_power_mode(%struct.dib7000m_state* %23, i32 %24)
  %26 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %27 = load i32, i32* @DIBX000_ADC_ON, align 4
  %28 = call i32 @dib7000m_set_adc_state(%struct.dib7000m_state* %26, i32 %27)
  %29 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %30 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %31 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %32, 1000
  %34 = call i32 @BAND_OF_FREQUENCY(i32 %33)
  %35 = call i32 @dib7000m_set_agc_config(%struct.dib7000m_state* %29, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  store i32 -1, i32* %2, align 4
  br label %148

38:                                               ; preds = %22
  store i32 7, i32* %7, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %146

42:                                               ; preds = %1
  %43 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %44 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32 (i32*, i32)*, i32 (i32*, i32)** %45, align 8
  %47 = icmp ne i32 (i32*, i32)* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %50 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32 (i32*, i32)*, i32 (i32*, i32)** %51, align 8
  %53 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %54 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %53, i32 0, i32 1
  %55 = call i32 %52(i32* %54, i32 1)
  br label %56

56:                                               ; preds = %48, %42
  %57 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %58 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %57, i32 75, i32 32768)
  %59 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %60 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %59, i32 0, i32 3
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %56
  %66 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %67 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %66, i32 103, i32 256)
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  store i32 5, i32* %7, align 4
  br label %73

71:                                               ; preds = %56
  %72 = load i32*, i32** %8, align 8
  store i32 4, i32* %72, align 4
  store i32 7, i32* %7, align 4
  br label %73

73:                                               ; preds = %71, %65
  %74 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %75 = call i32 @dib7000m_restart_agc(%struct.dib7000m_state* %74)
  br label %146

76:                                               ; preds = %1
  %77 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = or i32 %78, 16
  %80 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %77, i32 72, i32 %79)
  %81 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %82 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %81, i32 103, i32 1024)
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  store i32 14, i32* %7, align 4
  br label %146

86:                                               ; preds = %1
  %87 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %88 = call i32 @dib7000m_read_word(%struct.dib7000m_state* %87, i32 392)
  store i32 %88, i32* %9, align 4
  %89 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %90 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %91 = call i32 @dib7000m_read_word(%struct.dib7000m_state* %90, i32 390)
  %92 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %89, i32 75, i32 %91)
  %93 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = and i32 %94, -17
  %96 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %93, i32 72, i32 %95)
  %97 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %98 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %99 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %98, i32 0, i32 3
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 9
  %104 = load i32, i32* %9, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %97, i32 103, i32 %105)
  %107 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %108 = call i32 @dib7000m_restart_agc(%struct.dib7000m_state* %107)
  %109 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.dvb_frontend* %109, i32 %110)
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  store i32 5, i32* %7, align 4
  br label %146

115:                                              ; preds = %1
  store i32 7, i32* %7, align 4
  %116 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %117 = call i32 @dib7000m_update_lna(%struct.dib7000m_state* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  store i32 5, i32* %7, align 4
  br label %124

120:                                              ; preds = %115
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %120, %119
  br label %146

125:                                              ; preds = %1
  %126 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %127 = call i32 @dib7000m_agc_soft_split(%struct.dib7000m_state* %126)
  %128 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %129 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32 (i32*, i32)*, i32 (i32*, i32)** %130, align 8
  %132 = icmp ne i32 (i32*, i32)* %131, null
  br i1 %132, label %133, label %141

133:                                              ; preds = %125
  %134 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %135 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32 (i32*, i32)*, i32 (i32*, i32)** %136, align 8
  %138 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %139 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %138, i32 0, i32 1
  %140 = call i32 %137(i32* %139, i32 0)
  br label %141

141:                                              ; preds = %133, %125
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  br label %146

145:                                              ; preds = %1
  br label %146

146:                                              ; preds = %145, %141, %124, %86, %76, %73, %38
  %147 = load i32, i32* %7, align 4
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %146, %37
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32 @dib7000m_read_word(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @dib7000m_set_power_mode(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @dib7000m_set_adc_state(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @dib7000m_set_agc_config(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @BAND_OF_FREQUENCY(i32) #1

declare dso_local i32 @dib7000m_write_word(%struct.dib7000m_state*, i32, i32) #1

declare dso_local i32 @dib7000m_restart_agc(%struct.dib7000m_state*) #1

declare dso_local i32 @dprintk(i8*, %struct.dvb_frontend*, i32) #1

declare dso_local i32 @dib7000m_update_lna(%struct.dib7000m_state*) #1

declare dso_local i32 @dib7000m_agc_soft_split(%struct.dib7000m_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
