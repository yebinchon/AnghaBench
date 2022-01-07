; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wm831x.c_wm831x_gpio_set_debounce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wm831x.c_wm831x_gpio_set_debounce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x = type { i32 }

@WM831X_GPIO1_CONTROL = common dso_local global i32 0, align 4
@WM831X_GPN_FN_MASK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm831x*, i32, i32)* @wm831x_gpio_set_debounce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_gpio_set_debounce(%struct.wm831x* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm831x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wm831x* %0, %struct.wm831x** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @WM831X_GPIO1_CONTROL, align 4
  %12 = load i32, i32* %6, align 4
  %13 = add i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @wm831x_reg_read(%struct.wm831x* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %53

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @WM831X_GPN_FN_MASK, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %26 [
    i32 0, label %25
    i32 1, label %25
  ]

25:                                               ; preds = %21, %21
  br label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %53

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = icmp uge i32 %30, 32
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp ule i32 %33, 64
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  br label %47

36:                                               ; preds = %32, %29
  %37 = load i32, i32* %7, align 4
  %38 = icmp uge i32 %37, 4000
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = icmp ule i32 %40, 8000
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 1, i32* %10, align 4
  br label %46

43:                                               ; preds = %39, %36
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %53

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46, %35
  %48 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @WM831X_GPN_FN_MASK, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @wm831x_set_bits(%struct.wm831x* %48, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %47, %43, %26, %19
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @wm831x_reg_read(%struct.wm831x*, i32) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
