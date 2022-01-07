; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_touchkit_ps2.c_touchkit_ps2_process_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_touchkit_ps2.c_touchkit_ps2_process_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@PSMOUSE_GOOD_DATA = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@PSMOUSE_FULL_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @touchkit_ps2_process_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @touchkit_ps2_process_byte(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input_dev*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %6 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %7 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %4, align 8
  %9 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %10 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 2
  %11 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  store %struct.input_dev* %11, %struct.input_dev** %5, align 8
  %12 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %13 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 5
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @PSMOUSE_GOOD_DATA, align 4
  store i32 %17, i32* %2, align 4
  br label %37

18:                                               ; preds = %1
  %19 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %20 = load i32, i32* @ABS_X, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @TOUCHKIT_GET_X(i8* %21)
  %23 = call i32 @input_report_abs(%struct.input_dev* %19, i32 %20, i32 %22)
  %24 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %25 = load i32, i32* @ABS_Y, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @TOUCHKIT_GET_Y(i8* %26)
  %28 = call i32 @input_report_abs(%struct.input_dev* %24, i32 %25, i32 %27)
  %29 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %30 = load i32, i32* @BTN_TOUCH, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @TOUCHKIT_GET_TOUCHED(i8* %31)
  %33 = call i32 @input_report_key(%struct.input_dev* %29, i32 %30, i32 %32)
  %34 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %35 = call i32 @input_sync(%struct.input_dev* %34)
  %36 = load i32, i32* @PSMOUSE_FULL_PACKET, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %18, %16
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @TOUCHKIT_GET_X(i8*) #1

declare dso_local i32 @TOUCHKIT_GET_Y(i8*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @TOUCHKIT_GET_TOUCHED(i8*) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
