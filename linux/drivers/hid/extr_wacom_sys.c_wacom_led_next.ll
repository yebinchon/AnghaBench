; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_led_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_led_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { i32 }
%struct.wacom_led = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wacom_led* @wacom_led_next(%struct.wacom* %0, %struct.wacom_led* %1) #0 {
  %3 = alloca %struct.wacom_led*, align 8
  %4 = alloca %struct.wacom*, align 8
  %5 = alloca %struct.wacom_led*, align 8
  %6 = alloca %struct.wacom_led*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wacom* %0, %struct.wacom** %4, align 8
  store %struct.wacom_led* %1, %struct.wacom_led** %5, align 8
  %9 = load %struct.wacom*, %struct.wacom** %4, align 8
  %10 = icmp ne %struct.wacom* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.wacom_led*, %struct.wacom_led** %5, align 8
  %13 = icmp ne %struct.wacom_led* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %2
  store %struct.wacom_led* null, %struct.wacom_led** %3, align 8
  br label %47

15:                                               ; preds = %11
  %16 = load %struct.wacom_led*, %struct.wacom_led** %5, align 8
  %17 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.wacom_led*, %struct.wacom_led** %5, align 8
  %20 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %37, %15
  %23 = load %struct.wacom*, %struct.wacom** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  %27 = call %struct.wacom_led* @wacom_led_find(%struct.wacom* %23, i32 %24, i32 %26)
  store %struct.wacom_led* %27, %struct.wacom_led** %6, align 8
  %28 = load %struct.wacom_led*, %struct.wacom_led** %6, align 8
  %29 = icmp ne %struct.wacom_led* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load %struct.wacom_led*, %struct.wacom_led** %6, align 8
  %32 = load %struct.wacom_led*, %struct.wacom_led** %5, align 8
  %33 = icmp eq %struct.wacom_led* %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %22
  %35 = load %struct.wacom_led*, %struct.wacom_led** %6, align 8
  store %struct.wacom_led* %35, %struct.wacom_led** %3, align 8
  br label %47

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.wacom_led*, %struct.wacom_led** %6, align 8
  %39 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.wacom_led*, %struct.wacom_led** %6, align 8
  %43 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %42, i32 0, i32 2
  %44 = icmp ne i32* %41, %43
  br i1 %44, label %22, label %45

45:                                               ; preds = %37
  %46 = load %struct.wacom_led*, %struct.wacom_led** %6, align 8
  store %struct.wacom_led* %46, %struct.wacom_led** %3, align 8
  br label %47

47:                                               ; preds = %45, %34, %14
  %48 = load %struct.wacom_led*, %struct.wacom_led** %3, align 8
  ret %struct.wacom_led* %48
}

declare dso_local %struct.wacom_led* @wacom_led_find(%struct.wacom*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
