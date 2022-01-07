; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm831x-ts.c_wm831x_ts_input_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm831x-ts.c_wm831x_ts_input_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.wm831x_ts = type { i32, i32, i32, i32, %struct.wm831x* }
%struct.wm831x = type { i32 }

@WM831X_TOUCH_CONTROL_1 = common dso_local global i32 0, align 4
@WM831X_TCH_ENA = common dso_local global i32 0, align 4
@WM831X_TCH_X_ENA = common dso_local global i32 0, align 4
@WM831X_TCH_Y_ENA = common dso_local global i32 0, align 4
@WM831X_TCH_Z_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @wm831x_ts_input_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm831x_ts_input_close(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.wm831x_ts*, align 8
  %4 = alloca %struct.wm831x*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %5 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %6 = call %struct.wm831x_ts* @input_get_drvdata(%struct.input_dev* %5)
  store %struct.wm831x_ts* %6, %struct.wm831x_ts** %3, align 8
  %7 = load %struct.wm831x_ts*, %struct.wm831x_ts** %3, align 8
  %8 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %7, i32 0, i32 4
  %9 = load %struct.wm831x*, %struct.wm831x** %8, align 8
  store %struct.wm831x* %9, %struct.wm831x** %4, align 8
  %10 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %11 = load i32, i32* @WM831X_TOUCH_CONTROL_1, align 4
  %12 = load i32, i32* @WM831X_TCH_ENA, align 4
  %13 = load i32, i32* @WM831X_TCH_X_ENA, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @WM831X_TCH_Y_ENA, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @WM831X_TCH_Z_ENA, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @wm831x_set_bits(%struct.wm831x* %10, i32 %11, i32 %18, i32 0)
  %20 = load %struct.wm831x_ts*, %struct.wm831x_ts** %3, align 8
  %21 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @synchronize_irq(i32 %22)
  %24 = load %struct.wm831x_ts*, %struct.wm831x_ts** %3, align 8
  %25 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @synchronize_irq(i32 %26)
  %28 = load %struct.wm831x_ts*, %struct.wm831x_ts** %3, align 8
  %29 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %28, i32 0, i32 3
  %30 = call i32 @flush_work(i32* %29)
  %31 = load %struct.wm831x_ts*, %struct.wm831x_ts** %3, align 8
  %32 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %1
  %36 = load %struct.wm831x_ts*, %struct.wm831x_ts** %3, align 8
  %37 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @disable_irq(i32 %38)
  %40 = load %struct.wm831x_ts*, %struct.wm831x_ts** %3, align 8
  %41 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @enable_irq(i32 %42)
  %44 = load %struct.wm831x_ts*, %struct.wm831x_ts** %3, align 8
  %45 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  br label %46

46:                                               ; preds = %35, %1
  ret void
}

declare dso_local %struct.wm831x_ts* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
