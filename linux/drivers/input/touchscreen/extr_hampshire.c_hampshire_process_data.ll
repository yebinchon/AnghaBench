; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hampshire.c_hampshire_process_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hampshire.c_hampshire_process_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hampshire = type { i64, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@HAMPSHIRE_FORMAT_LENGTH = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hampshire*)* @hampshire_process_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hampshire_process_data(%struct.hampshire* %0) #0 {
  %2 = alloca %struct.hampshire*, align 8
  %3 = alloca %struct.input_dev*, align 8
  store %struct.hampshire* %0, %struct.hampshire** %2, align 8
  %4 = load %struct.hampshire*, %struct.hampshire** %2, align 8
  %5 = getelementptr inbounds %struct.hampshire, %struct.hampshire* %4, i32 0, i32 2
  %6 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  store %struct.input_dev* %6, %struct.input_dev** %3, align 8
  %7 = load i64, i64* @HAMPSHIRE_FORMAT_LENGTH, align 8
  %8 = load %struct.hampshire*, %struct.hampshire** %2, align 8
  %9 = getelementptr inbounds %struct.hampshire, %struct.hampshire* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %9, align 8
  %12 = icmp eq i64 %7, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %1
  %14 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %15 = load i32, i32* @ABS_X, align 4
  %16 = load %struct.hampshire*, %struct.hampshire** %2, align 8
  %17 = getelementptr inbounds %struct.hampshire, %struct.hampshire* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @HAMPSHIRE_GET_XC(i32 %18)
  %20 = call i32 @input_report_abs(%struct.input_dev* %14, i32 %15, i32 %19)
  %21 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %22 = load i32, i32* @ABS_Y, align 4
  %23 = load %struct.hampshire*, %struct.hampshire** %2, align 8
  %24 = getelementptr inbounds %struct.hampshire, %struct.hampshire* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @HAMPSHIRE_GET_YC(i32 %25)
  %27 = call i32 @input_report_abs(%struct.input_dev* %21, i32 %22, i32 %26)
  %28 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %29 = load i32, i32* @BTN_TOUCH, align 4
  %30 = load %struct.hampshire*, %struct.hampshire** %2, align 8
  %31 = getelementptr inbounds %struct.hampshire, %struct.hampshire* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @HAMPSHIRE_GET_TOUCHED(i32 %32)
  %34 = call i32 @input_report_key(%struct.input_dev* %28, i32 %29, i32 %33)
  %35 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %36 = call i32 @input_sync(%struct.input_dev* %35)
  %37 = load %struct.hampshire*, %struct.hampshire** %2, align 8
  %38 = getelementptr inbounds %struct.hampshire, %struct.hampshire* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @HAMPSHIRE_GET_XC(i32) #1

declare dso_local i32 @HAMPSHIRE_GET_YC(i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @HAMPSHIRE_GET_TOUCHED(i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
