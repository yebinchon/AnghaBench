; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_of_touchscreen.c_touchscreen_report_pos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_of_touchscreen.c_touchscreen_report_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.touchscreen_properties = type { i32 }

@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @touchscreen_report_pos(%struct.input_dev* %0, %struct.touchscreen_properties* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.touchscreen_properties*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %6, align 8
  store %struct.touchscreen_properties* %1, %struct.touchscreen_properties** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.touchscreen_properties*, %struct.touchscreen_properties** %7, align 8
  %12 = call i32 @touchscreen_apply_prop_to_x_y(%struct.touchscreen_properties* %11, i32* %8, i32* %9)
  %13 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32, i32* @ABS_MT_POSITION_X, align 4
  br label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @ABS_X, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @input_report_abs(%struct.input_dev* %13, i32 %21, i32 %22)
  %24 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  br label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @ABS_Y, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @input_report_abs(%struct.input_dev* %24, i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @touchscreen_apply_prop_to_x_y(%struct.touchscreen_properties*, i32*, i32*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
