; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm9705.c_wm9705_poll_touch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm9705.c_wm9705_poll_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i32 }
%struct.wm97xx_data = type { i32, i32, i32 }

@WM97XX_ADCSEL_X = common dso_local global i32 0, align 4
@WM97XX_PEN_DOWN = common dso_local global i32 0, align 4
@RC_VALID = common dso_local global i32 0, align 4
@WM97XX_ADCSEL_Y = common dso_local global i32 0, align 4
@pil = common dso_local global i64 0, align 8
@WM97XX_ADCSEL_PRES = common dso_local global i32 0, align 4
@DEFAULT_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm97xx*, %struct.wm97xx_data*)* @wm9705_poll_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9705_poll_touch(%struct.wm97xx* %0, %struct.wm97xx_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wm97xx*, align 8
  %5 = alloca %struct.wm97xx_data*, align 8
  %6 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %4, align 8
  store %struct.wm97xx_data* %1, %struct.wm97xx_data** %5, align 8
  %7 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %8 = load i32, i32* @WM97XX_ADCSEL_X, align 4
  %9 = load i32, i32* @WM97XX_PEN_DOWN, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.wm97xx_data*, %struct.wm97xx_data** %5, align 8
  %12 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %11, i32 0, i32 2
  %13 = call i32 @wm9705_poll_sample(%struct.wm97xx* %7, i32 %10, i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @RC_VALID, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %55

19:                                               ; preds = %2
  %20 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %21 = load i32, i32* @WM97XX_ADCSEL_Y, align 4
  %22 = load i32, i32* @WM97XX_PEN_DOWN, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.wm97xx_data*, %struct.wm97xx_data** %5, align 8
  %25 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %24, i32 0, i32 1
  %26 = call i32 @wm9705_poll_sample(%struct.wm97xx* %20, i32 %23, i32* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @RC_VALID, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %55

32:                                               ; preds = %19
  %33 = load i64, i64* @pil, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %37 = load i32, i32* @WM97XX_ADCSEL_PRES, align 4
  %38 = load i32, i32* @WM97XX_PEN_DOWN, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.wm97xx_data*, %struct.wm97xx_data** %5, align 8
  %41 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %40, i32 0, i32 0
  %42 = call i32 @wm9705_poll_sample(%struct.wm97xx* %36, i32 %39, i32* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @RC_VALID, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %55

48:                                               ; preds = %35
  br label %53

49:                                               ; preds = %32
  %50 = load i32, i32* @DEFAULT_PRESSURE, align 4
  %51 = load %struct.wm97xx_data*, %struct.wm97xx_data** %5, align 8
  %52 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %48
  %54 = load i32, i32* @RC_VALID, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %46, %30, %17
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @wm9705_poll_sample(%struct.wm97xx*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
