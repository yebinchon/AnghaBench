; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib7000p_state* }
%struct.dib7000p_state = type { i64 }

@DIB7000P_POWER_ALL = common dso_local global i32 0, align 4
@DIBX000_SLOW_ADC_ON = common dso_local global i32 0, align 4
@SOC7090 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib7000p_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000p_wakeup(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dib7000p_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 0
  %6 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  store %struct.dib7000p_state* %6, %struct.dib7000p_state** %3, align 8
  %7 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %8 = load i32, i32* @DIB7000P_POWER_ALL, align 4
  %9 = call i32 @dib7000p_set_power_mode(%struct.dib7000p_state* %7, i32 %8)
  %10 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %11 = load i32, i32* @DIBX000_SLOW_ADC_ON, align 4
  %12 = call i32 @dib7000p_set_adc_state(%struct.dib7000p_state* %10, i32 %11)
  %13 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %14 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SOC7090, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %20 = call i32 @dib7000p_sad_calib(%struct.dib7000p_state* %19)
  br label %21

21:                                               ; preds = %18, %1
  ret i32 0
}

declare dso_local i32 @dib7000p_set_power_mode(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_set_adc_state(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_sad_calib(%struct.dib7000p_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
