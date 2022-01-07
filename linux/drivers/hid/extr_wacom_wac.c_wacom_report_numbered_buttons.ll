; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_report_numbered_buttons.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_report_numbered_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.wacom = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, i32, i32)* @wacom_report_numbered_buttons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_report_numbered_buttons(%struct.input_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wacom*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %11 = call %struct.wacom* @input_get_drvdata(%struct.input_dev* %10)
  store %struct.wacom* %11, %struct.wacom** %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %25, %3
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.wacom*, %struct.wacom** %7, align 8
  %15 = getelementptr inbounds %struct.wacom, %struct.wacom* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load %struct.wacom*, %struct.wacom** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @wacom_update_led(%struct.wacom* %20, i32 %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  br label %12

28:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %47, %28
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @wacom_numbered_button_to_key(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = shl i32 1, %42
  %44 = and i32 %41, %43
  %45 = call i32 @input_report_key(%struct.input_dev* %39, i32 %40, i32 %44)
  br label %46

46:                                               ; preds = %38, %33
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %29

50:                                               ; preds = %29
  ret void
}

declare dso_local %struct.wacom* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @wacom_update_led(%struct.wacom*, i32, i32, i32) #1

declare dso_local i32 @wacom_numbered_button_to_key(i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
