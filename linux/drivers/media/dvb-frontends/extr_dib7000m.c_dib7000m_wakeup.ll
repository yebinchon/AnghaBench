; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib7000m_state* }
%struct.dib7000m_state = type { i32 }

@DIB7000M_POWER_ALL = common dso_local global i32 0, align 4
@DIBX000_SLOW_ADC_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"could not start Slow ADC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib7000m_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000m_wakeup(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dib7000m_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 0
  %6 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  store %struct.dib7000m_state* %6, %struct.dib7000m_state** %3, align 8
  %7 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %8 = load i32, i32* @DIB7000M_POWER_ALL, align 4
  %9 = call i32 @dib7000m_set_power_mode(%struct.dib7000m_state* %7, i32 %8)
  %10 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %11 = load i32, i32* @DIBX000_SLOW_ADC_ON, align 4
  %12 = call i64 @dib7000m_set_adc_state(%struct.dib7000m_state* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  ret i32 0
}

declare dso_local i32 @dib7000m_set_power_mode(%struct.dib7000m_state*, i32) #1

declare dso_local i64 @dib7000m_set_adc_state(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @dprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
