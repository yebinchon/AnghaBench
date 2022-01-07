; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_byd.c_byd_report_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_byd.c_byd_report_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.input_dev*, %struct.byd_data* }
%struct.input_dev = type { i32 }
%struct.byd_data = type { i32, i32, i32, i32, i32 }

@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*)* @byd_report_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @byd_report_input(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.byd_data*, align 8
  %4 = alloca %struct.input_dev*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %5 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %6 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %5, i32 0, i32 1
  %7 = load %struct.byd_data*, %struct.byd_data** %6, align 8
  store %struct.byd_data* %7, %struct.byd_data** %3, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 0
  %10 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  store %struct.input_dev* %10, %struct.input_dev** %4, align 8
  %11 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %12 = load i32, i32* @BTN_TOUCH, align 4
  %13 = load %struct.byd_data*, %struct.byd_data** %3, align 8
  %14 = getelementptr inbounds %struct.byd_data, %struct.byd_data* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @input_report_key(%struct.input_dev* %11, i32 %12, i32 %15)
  %17 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %18 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %19 = load %struct.byd_data*, %struct.byd_data** %3, align 8
  %20 = getelementptr inbounds %struct.byd_data, %struct.byd_data* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @input_report_key(%struct.input_dev* %17, i32 %18, i32 %21)
  %23 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %24 = load i32, i32* @ABS_X, align 4
  %25 = load %struct.byd_data*, %struct.byd_data** %3, align 8
  %26 = getelementptr inbounds %struct.byd_data, %struct.byd_data* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @input_report_abs(%struct.input_dev* %23, i32 %24, i32 %27)
  %29 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %30 = load i32, i32* @ABS_Y, align 4
  %31 = load %struct.byd_data*, %struct.byd_data** %3, align 8
  %32 = getelementptr inbounds %struct.byd_data, %struct.byd_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @input_report_abs(%struct.input_dev* %29, i32 %30, i32 %33)
  %35 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %36 = load i32, i32* @BTN_LEFT, align 4
  %37 = load %struct.byd_data*, %struct.byd_data** %3, align 8
  %38 = getelementptr inbounds %struct.byd_data, %struct.byd_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @input_report_key(%struct.input_dev* %35, i32 %36, i32 %39)
  %41 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %42 = load i32, i32* @BTN_RIGHT, align 4
  %43 = load %struct.byd_data*, %struct.byd_data** %3, align 8
  %44 = getelementptr inbounds %struct.byd_data, %struct.byd_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @input_report_key(%struct.input_dev* %41, i32 %42, i32 %45)
  %47 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %48 = call i32 @input_sync(%struct.input_dev* %47)
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
