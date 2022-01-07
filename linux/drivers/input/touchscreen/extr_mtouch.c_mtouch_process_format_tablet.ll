; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mtouch.c_mtouch_process_format_tablet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mtouch.c_mtouch_process_format_tablet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtouch = type { i64, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@MTOUCH_FORMAT_TABLET_LENGTH = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@MTOUCH_MAX_YC = common dso_local global i64 0, align 8
@BTN_TOUCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtouch*)* @mtouch_process_format_tablet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtouch_process_format_tablet(%struct.mtouch* %0) #0 {
  %2 = alloca %struct.mtouch*, align 8
  %3 = alloca %struct.input_dev*, align 8
  store %struct.mtouch* %0, %struct.mtouch** %2, align 8
  %4 = load %struct.mtouch*, %struct.mtouch** %2, align 8
  %5 = getelementptr inbounds %struct.mtouch, %struct.mtouch* %4, i32 0, i32 2
  %6 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  store %struct.input_dev* %6, %struct.input_dev** %3, align 8
  %7 = load i64, i64* @MTOUCH_FORMAT_TABLET_LENGTH, align 8
  %8 = load %struct.mtouch*, %struct.mtouch** %2, align 8
  %9 = getelementptr inbounds %struct.mtouch, %struct.mtouch* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %9, align 8
  %12 = icmp eq i64 %7, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %1
  %14 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %15 = load i32, i32* @ABS_X, align 4
  %16 = load %struct.mtouch*, %struct.mtouch** %2, align 8
  %17 = getelementptr inbounds %struct.mtouch, %struct.mtouch* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @MTOUCH_GET_XC(i32 %18)
  %20 = call i32 @input_report_abs(%struct.input_dev* %14, i32 %15, i64 %19)
  %21 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %22 = load i32, i32* @ABS_Y, align 4
  %23 = load i64, i64* @MTOUCH_MAX_YC, align 8
  %24 = load %struct.mtouch*, %struct.mtouch** %2, align 8
  %25 = getelementptr inbounds %struct.mtouch, %struct.mtouch* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @MTOUCH_GET_YC(i32 %26)
  %28 = sub nsw i64 %23, %27
  %29 = call i32 @input_report_abs(%struct.input_dev* %21, i32 %22, i64 %28)
  %30 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %31 = load i32, i32* @BTN_TOUCH, align 4
  %32 = load %struct.mtouch*, %struct.mtouch** %2, align 8
  %33 = getelementptr inbounds %struct.mtouch, %struct.mtouch* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @MTOUCH_GET_TOUCHED(i32 %34)
  %36 = call i32 @input_report_key(%struct.input_dev* %30, i32 %31, i32 %35)
  %37 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %38 = call i32 @input_sync(%struct.input_dev* %37)
  %39 = load %struct.mtouch*, %struct.mtouch** %2, align 8
  %40 = getelementptr inbounds %struct.mtouch, %struct.mtouch* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i64) #1

declare dso_local i64 @MTOUCH_GET_XC(i32) #1

declare dso_local i64 @MTOUCH_GET_YC(i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @MTOUCH_GET_TOUCHED(i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
