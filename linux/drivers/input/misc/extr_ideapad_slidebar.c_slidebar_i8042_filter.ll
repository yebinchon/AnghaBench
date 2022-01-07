; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ideapad_slidebar.c_slidebar_i8042_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ideapad_slidebar.c_slidebar_i8042_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }

@slidebar_i8042_filter.extended = internal global i32 0, align 4
@I8042_STR_AUXDATA = common dso_local global i8 0, align 1
@slidebar_input_dev = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8, %struct.serio*)* @slidebar_i8042_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slidebar_i8042_filter(i8 zeroext %0, i8 zeroext %1, %struct.serio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.serio*, align 8
  store i8 %0, i8* %5, align 1
  store i8 %1, i8* %6, align 1
  store %struct.serio* %2, %struct.serio** %7, align 8
  %8 = load i8, i8* %6, align 1
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* @I8042_STR_AUXDATA, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %55

15:                                               ; preds = %3
  %16 = load i8, i8* %5, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %17, 224
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 1, i32* @slidebar_i8042_filter.extended, align 4
  store i32 1, i32* %4, align 4
  br label %55

20:                                               ; preds = %15
  %21 = load i32, i32* @slidebar_i8042_filter.extended, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %55

24:                                               ; preds = %20
  store i32 0, i32* @slidebar_i8042_filter.extended, align 4
  %25 = load i8, i8* %5, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 127
  %28 = icmp ne i32 %27, 59
  %29 = zext i1 %28 to i32
  %30 = call i64 @likely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.serio*, %struct.serio** %7, align 8
  %34 = call i32 @serio_interrupt(%struct.serio* %33, i32 224, i32 0)
  store i32 0, i32* %4, align 4
  br label %55

35:                                               ; preds = %24
  %36 = load i8, i8* %5, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 128
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @slidebar_input_dev, align 4
  %42 = load i32, i32* @BTN_TOUCH, align 4
  %43 = call i32 @input_report_key(i32 %41, i32 %42, i32 0)
  br label %52

44:                                               ; preds = %35
  %45 = load i32, i32* @slidebar_input_dev, align 4
  %46 = load i32, i32* @BTN_TOUCH, align 4
  %47 = call i32 @input_report_key(i32 %45, i32 %46, i32 1)
  %48 = load i32, i32* @slidebar_input_dev, align 4
  %49 = load i32, i32* @ABS_X, align 4
  %50 = call i32 (...) @slidebar_pos_get()
  %51 = call i32 @input_report_abs(i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %44, %40
  %53 = load i32, i32* @slidebar_input_dev, align 4
  %54 = call i32 @input_sync(i32 %53)
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %52, %32, %23, %19, %14
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @serio_interrupt(%struct.serio*, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @slidebar_pos_get(...) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
