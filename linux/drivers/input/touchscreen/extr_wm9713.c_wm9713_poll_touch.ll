; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm9713.c_wm9713_poll_touch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm9713.c_wm9713_poll_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i32 }
%struct.wm97xx_data = type { i32, i32, i32 }

@coord = common dso_local global i64 0, align 8
@RC_VALID = common dso_local global i32 0, align 4
@WM97XX_ADCSEL_X = common dso_local global i32 0, align 4
@WM97XX_PEN_DOWN = common dso_local global i32 0, align 4
@WM97XX_ADCSEL_Y = common dso_local global i32 0, align 4
@pil = common dso_local global i64 0, align 8
@WM97XX_ADCSEL_PRES = common dso_local global i32 0, align 4
@DEFAULT_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm97xx*, %struct.wm97xx_data*)* @wm9713_poll_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9713_poll_touch(%struct.wm97xx* %0, %struct.wm97xx_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wm97xx*, align 8
  %5 = alloca %struct.wm97xx_data*, align 8
  %6 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %4, align 8
  store %struct.wm97xx_data* %1, %struct.wm97xx_data** %5, align 8
  %7 = load i64, i64* @coord, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %11 = load %struct.wm97xx_data*, %struct.wm97xx_data** %5, align 8
  %12 = call i32 @wm9713_poll_coord(%struct.wm97xx* %10, %struct.wm97xx_data* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @RC_VALID, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %69

18:                                               ; preds = %9
  br label %67

19:                                               ; preds = %2
  %20 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %21 = load i32, i32* @WM97XX_ADCSEL_X, align 4
  %22 = load i32, i32* @WM97XX_PEN_DOWN, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.wm97xx_data*, %struct.wm97xx_data** %5, align 8
  %25 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %24, i32 0, i32 2
  %26 = call i32 @wm9713_poll_sample(%struct.wm97xx* %20, i32 %23, i32* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @RC_VALID, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %69

32:                                               ; preds = %19
  %33 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %34 = load i32, i32* @WM97XX_ADCSEL_Y, align 4
  %35 = load i32, i32* @WM97XX_PEN_DOWN, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.wm97xx_data*, %struct.wm97xx_data** %5, align 8
  %38 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %37, i32 0, i32 1
  %39 = call i32 @wm9713_poll_sample(%struct.wm97xx* %33, i32 %36, i32* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @RC_VALID, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %69

45:                                               ; preds = %32
  %46 = load i64, i64* @pil, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %45
  %49 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %50 = load i32, i32* @WM97XX_ADCSEL_PRES, align 4
  %51 = load i32, i32* @WM97XX_PEN_DOWN, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.wm97xx_data*, %struct.wm97xx_data** %5, align 8
  %54 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %53, i32 0, i32 0
  %55 = call i32 @wm9713_poll_sample(%struct.wm97xx* %49, i32 %52, i32* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @RC_VALID, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %69

61:                                               ; preds = %48
  br label %66

62:                                               ; preds = %45
  %63 = load i32, i32* @DEFAULT_PRESSURE, align 4
  %64 = load %struct.wm97xx_data*, %struct.wm97xx_data** %5, align 8
  %65 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %61
  br label %67

67:                                               ; preds = %66, %18
  %68 = load i32, i32* @RC_VALID, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %59, %43, %30, %16
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @wm9713_poll_coord(%struct.wm97xx*, %struct.wm97xx_data*) #1

declare dso_local i32 @wm9713_poll_sample(%struct.wm97xx*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
