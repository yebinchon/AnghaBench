; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib8000_state* }
%struct.dib8000_state = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)* }

@MAX_NUMBER_OF_FRONTENDS = common dso_local global i64 0, align 8
@OUTMODE_HIGH_Z = common dso_local global i32 0, align 4
@DIB8000_POWER_INTERFACE_ONLY = common dso_local global i32 0, align 4
@DIBX000_SLOW_ADC_OFF = common dso_local global i32 0, align 4
@DIBX000_ADC_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib8000_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_sleep(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dib8000_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.dib8000_state*, %struct.dib8000_state** %8, align 8
  store %struct.dib8000_state* %9, %struct.dib8000_state** %4, align 8
  store i64 1, i64* %5, align 8
  br label %10

10:                                               ; preds = %46, %1
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %16 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %17, i64 %18
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br label %22

22:                                               ; preds = %14, %10
  %23 = phi i1 [ false, %10 ], [ %21, %14 ]
  br i1 %23, label %24, label %49

24:                                               ; preds = %22
  %25 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %26 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %27, i64 %28
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %32, align 8
  %34 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %35 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %36, i64 %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = call i32 %33(%struct.TYPE_4__* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %24
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %69

45:                                               ; preds = %24
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %5, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %5, align 8
  br label %10

49:                                               ; preds = %22
  %50 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %51 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 32912
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %56 = load i32, i32* @OUTMODE_HIGH_Z, align 4
  %57 = call i32 @dib8000_set_output_mode(%struct.dvb_frontend* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %60 = load i32, i32* @DIB8000_POWER_INTERFACE_ONLY, align 4
  %61 = call i32 @dib8000_set_power_mode(%struct.dib8000_state* %59, i32 %60)
  %62 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %63 = load i32, i32* @DIBX000_SLOW_ADC_OFF, align 4
  %64 = call i32 @dib8000_set_adc_state(%struct.dib8000_state* %62, i32 %63)
  %65 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %66 = load i32, i32* @DIBX000_ADC_OFF, align 4
  %67 = call i32 @dib8000_set_adc_state(%struct.dib8000_state* %65, i32 %66)
  %68 = or i32 %64, %67
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %58, %43
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @dib8000_set_output_mode(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @dib8000_set_power_mode(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_set_adc_state(%struct.dib8000_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
