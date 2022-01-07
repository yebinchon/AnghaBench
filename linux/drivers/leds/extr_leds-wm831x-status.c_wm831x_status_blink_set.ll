; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-wm831x-status.c_wm831x_status_blink_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-wm831x-status.c_wm831x_status_blink_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.wm831x_status = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i64*, i64*)* @wm831x_status_blink_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_status_blink_set(%struct.led_classdev* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.led_classdev*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.wm831x_status*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %11 = call %struct.wm831x_status* @to_wm831x_status(%struct.led_classdev* %10)
  store %struct.wm831x_status* %11, %struct.wm831x_status** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load i64*, i64** %5, align 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i64*, i64** %6, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i64*, i64** %5, align 8
  store i64 250, i64* %20, align 8
  %21 = load i64*, i64** %6, align 8
  store i64 250, i64* %21, align 8
  br label %22

22:                                               ; preds = %19, %15, %3
  %23 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %24 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %23, i32 0, i32 3
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load i64*, i64** %5, align 8
  %28 = load i64, i64* %27, align 8
  switch i64 %28, label %41 [
    i64 1000, label %29
    i64 250, label %32
    i64 125, label %35
    i64 62, label %38
    i64 63, label %38
  ]

29:                                               ; preds = %22
  %30 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %31 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %44

32:                                               ; preds = %22
  %33 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %34 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  br label %44

35:                                               ; preds = %22
  %36 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %37 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %36, i32 0, i32 0
  store i32 2, i32* %37, align 4
  br label %44

38:                                               ; preds = %22, %22
  %39 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %40 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %39, i32 0, i32 0
  store i32 3, i32* %40, align 4
  br label %44

41:                                               ; preds = %22
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %41, %38, %35, %32, %29
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %44
  %48 = load i64*, i64** %6, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %5, align 8
  %51 = load i64, i64* %50, align 8
  %52 = udiv i64 %49, %51
  switch i64 %52, label %65 [
    i64 1, label %53
    i64 3, label %56
    i64 4, label %59
    i64 8, label %62
  ]

53:                                               ; preds = %47
  %54 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %55 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  br label %68

56:                                               ; preds = %47
  %57 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %58 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  br label %68

59:                                               ; preds = %47
  %60 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %61 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %60, i32 0, i32 1
  store i32 2, i32* %61, align 4
  br label %68

62:                                               ; preds = %47
  %63 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %64 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %63, i32 0, i32 1
  store i32 3, i32* %64, align 4
  br label %68

65:                                               ; preds = %47
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %65, %62, %59, %56, %53
  br label %69

69:                                               ; preds = %68, %44
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %74 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %73, i32 0, i32 2
  store i32 1, i32* %74, align 4
  br label %78

75:                                               ; preds = %69
  %76 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %77 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %76, i32 0, i32 2
  store i32 0, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %72
  %79 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %80 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %79, i32 0, i32 3
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load %struct.wm831x_status*, %struct.wm831x_status** %7, align 8
  %84 = call i32 @wm831x_status_set(%struct.wm831x_status* %83)
  %85 = load i32, i32* %9, align 4
  ret i32 %85
}

declare dso_local %struct.wm831x_status* @to_wm831x_status(%struct.led_classdev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wm831x_status_set(%struct.wm831x_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
