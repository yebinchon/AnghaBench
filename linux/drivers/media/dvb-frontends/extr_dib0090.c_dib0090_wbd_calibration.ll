; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_wbd_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_wbd_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib0090_state = type { i32, i32, i32, i32, i32, %struct.dib0090_wbd_slope* }
%struct.dib0090_wbd_slope = type { i32, i32 }

@WBD_CAL = common dso_local global i32 0, align 4
@EN_UHF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"WBD calibration offset = %d\0A\00", align 1
@BAND_LBAND = common dso_local global i32 0, align 4
@BAND_SBAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib0090_state*, i32*)* @dib0090_wbd_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0090_wbd_calibration(%struct.dib0090_state* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dib0090_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dib0090_wbd_slope*, align 8
  store %struct.dib0090_state* %0, %struct.dib0090_state** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %9 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %8, i32 0, i32 5
  %10 = load %struct.dib0090_wbd_slope*, %struct.dib0090_wbd_slope** %9, align 8
  store %struct.dib0090_wbd_slope* %10, %struct.dib0090_wbd_slope** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %82 [
    i32 129, label %13
    i32 128, label %66
  ]

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %23, %13
  %15 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %16 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sdiv i32 %17, 1000
  %19 = load %struct.dib0090_wbd_slope*, %struct.dib0090_wbd_slope** %7, align 8
  %20 = getelementptr inbounds %struct.dib0090_wbd_slope, %struct.dib0090_wbd_slope* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.dib0090_wbd_slope*, %struct.dib0090_wbd_slope** %7, align 8
  %25 = getelementptr inbounds %struct.dib0090_wbd_slope, %struct.dib0090_wbd_slope* %24, i32 1
  store %struct.dib0090_wbd_slope* %25, %struct.dib0090_wbd_slope** %7, align 8
  br label %14

26:                                               ; preds = %14
  %27 = load %struct.dib0090_wbd_slope*, %struct.dib0090_wbd_slope** %7, align 8
  %28 = getelementptr inbounds %struct.dib0090_wbd_slope, %struct.dib0090_wbd_slope* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.dib0090_wbd_slope*, %struct.dib0090_wbd_slope** %7, align 8
  %33 = getelementptr inbounds %struct.dib0090_wbd_slope, %struct.dib0090_wbd_slope* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  br label %36

35:                                               ; preds = %26
  store i32 4, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %39 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load i32*, i32** %5, align 8
  store i32 129, i32* %43, align 4
  %44 = load i32, i32* @WBD_CAL, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %47 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  store i32 0, i32* %3, align 4
  br label %84

50:                                               ; preds = %36
  %51 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = shl i32 %52, 13
  %54 = or i32 8065, %53
  %55 = or i32 %54, 8
  %56 = call i32 @dib0090_write_reg(%struct.dib0090_state* %51, i32 16, i32 %55)
  %57 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %58 = load i32, i32* @EN_UHF, align 4
  %59 = and i32 %58, 4095
  %60 = or i32 %59, 2
  %61 = call i32 @dib0090_write_reg(%struct.dib0090_state* %57, i32 36, i32 %60)
  %62 = load i32*, i32** %5, align 8
  store i32 128, i32* %62, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %65 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  store i32 90, i32* %3, align 4
  br label %84

66:                                               ; preds = %2
  %67 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %68 = call i32 @dib0090_get_slow_adc_val(%struct.dib0090_state* %67)
  %69 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %70 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %72 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32*, i32** %5, align 8
  store i32 129, i32* %75, align 4
  %76 = load i32, i32* @WBD_CAL, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %79 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %83

82:                                               ; preds = %2
  br label %83

83:                                               ; preds = %82, %66
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %50, %42
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @dib0090_write_reg(%struct.dib0090_state*, i32, i32) #1

declare dso_local i32 @dib0090_get_slow_adc_val(%struct.dib0090_state*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
