; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_gpio_mouse.c_gpio_mouse_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_gpio_mouse.c_gpio_mouse_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_polled_dev = type { %struct.input_dev*, %struct.gpio_mouse* }
%struct.input_dev = type { i32 }
%struct.gpio_mouse = type { i64, i64, i64, i64, i64, i64, i64 }

@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_polled_dev*)* @gpio_mouse_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_mouse_scan(%struct.input_polled_dev* %0) #0 {
  %2 = alloca %struct.input_polled_dev*, align 8
  %3 = alloca %struct.gpio_mouse*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.input_polled_dev* %0, %struct.input_polled_dev** %2, align 8
  %7 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %8 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %7, i32 0, i32 1
  %9 = load %struct.gpio_mouse*, %struct.gpio_mouse** %8, align 8
  store %struct.gpio_mouse* %9, %struct.gpio_mouse** %3, align 8
  %10 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %11 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %10, i32 0, i32 0
  %12 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  store %struct.input_dev* %12, %struct.input_dev** %4, align 8
  %13 = load %struct.gpio_mouse*, %struct.gpio_mouse** %3, align 8
  %14 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %19 = load i32, i32* @BTN_LEFT, align 4
  %20 = load %struct.gpio_mouse*, %struct.gpio_mouse** %3, align 8
  %21 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @gpiod_get_value(i64 %22)
  %24 = call i32 @input_report_key(%struct.input_dev* %18, i32 %19, i32 %23)
  br label %25

25:                                               ; preds = %17, %1
  %26 = load %struct.gpio_mouse*, %struct.gpio_mouse** %3, align 8
  %27 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %32 = load i32, i32* @BTN_MIDDLE, align 4
  %33 = load %struct.gpio_mouse*, %struct.gpio_mouse** %3, align 8
  %34 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @gpiod_get_value(i64 %35)
  %37 = call i32 @input_report_key(%struct.input_dev* %31, i32 %32, i32 %36)
  br label %38

38:                                               ; preds = %30, %25
  %39 = load %struct.gpio_mouse*, %struct.gpio_mouse** %3, align 8
  %40 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %45 = load i32, i32* @BTN_RIGHT, align 4
  %46 = load %struct.gpio_mouse*, %struct.gpio_mouse** %3, align 8
  %47 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @gpiod_get_value(i64 %48)
  %50 = call i32 @input_report_key(%struct.input_dev* %44, i32 %45, i32 %49)
  br label %51

51:                                               ; preds = %43, %38
  %52 = load %struct.gpio_mouse*, %struct.gpio_mouse** %3, align 8
  %53 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @gpiod_get_value(i64 %54)
  %56 = load %struct.gpio_mouse*, %struct.gpio_mouse** %3, align 8
  %57 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @gpiod_get_value(i64 %58)
  %60 = sub nsw i32 %55, %59
  store i32 %60, i32* %5, align 4
  %61 = load %struct.gpio_mouse*, %struct.gpio_mouse** %3, align 8
  %62 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @gpiod_get_value(i64 %63)
  %65 = load %struct.gpio_mouse*, %struct.gpio_mouse** %3, align 8
  %66 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @gpiod_get_value(i64 %67)
  %69 = sub nsw i32 %64, %68
  store i32 %69, i32* %6, align 4
  %70 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %71 = load i32, i32* @REL_X, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @input_report_rel(%struct.input_dev* %70, i32 %71, i32 %72)
  %74 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %75 = load i32, i32* @REL_Y, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @input_report_rel(%struct.input_dev* %74, i32 %75, i32 %76)
  %78 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %79 = call i32 @input_sync(%struct.input_dev* %78)
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @gpiod_get_value(i64) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
