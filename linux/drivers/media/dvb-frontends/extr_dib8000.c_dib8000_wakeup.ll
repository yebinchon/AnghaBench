; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib8000_state* }
%struct.dib8000_state = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)* }

@DIB8000_POWER_ALL = common dso_local global i32 0, align 4
@DIBX000_ADC_ON = common dso_local global i32 0, align 4
@DIBX000_SLOW_ADC_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"could not start Slow ADC\0A\00", align 1
@MAX_NUMBER_OF_FRONTENDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib8000_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_wakeup(%struct.dvb_frontend* %0) #0 {
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
  %10 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %11 = load i32, i32* @DIB8000_POWER_ALL, align 4
  %12 = call i32 @dib8000_set_power_mode(%struct.dib8000_state* %10, i32 %11)
  %13 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %14 = load i32, i32* @DIBX000_ADC_ON, align 4
  %15 = call i64 @dib8000_set_adc_state(%struct.dib8000_state* %13, i32 %14)
  %16 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %17 = load i32, i32* @DIBX000_SLOW_ADC_ON, align 4
  %18 = call i64 @dib8000_set_adc_state(%struct.dib8000_state* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %1
  %23 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %24 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 32912
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %29 = call i32 @dib8000_sad_calib(%struct.dib8000_state* %28)
  br label %30

30:                                               ; preds = %27, %22
  store i64 1, i64* %5, align 8
  br label %31

31:                                               ; preds = %67, %30
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %37 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %38, i64 %39
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br label %43

43:                                               ; preds = %35, %31
  %44 = phi i1 [ false, %31 ], [ %42, %35 ]
  br i1 %44, label %45, label %70

45:                                               ; preds = %43
  %46 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %47 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %48, i64 %49
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %53, align 8
  %55 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %56 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %57, i64 %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = call i32 %54(%struct.TYPE_4__* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %45
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %2, align 4
  br label %71

66:                                               ; preds = %45
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %5, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %5, align 8
  br label %31

70:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %64
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @dib8000_set_power_mode(%struct.dib8000_state*, i32) #1

declare dso_local i64 @dib8000_set_adc_state(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @dib8000_sad_calib(%struct.dib8000_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
