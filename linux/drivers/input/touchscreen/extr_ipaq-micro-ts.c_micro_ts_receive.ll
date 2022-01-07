; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ipaq-micro-ts.c_micro_ts_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ipaq-micro-ts.c_micro_ts_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.touchscreen_data = type { i32 }

@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @micro_ts_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @micro_ts_receive(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.touchscreen_data*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.touchscreen_data*
  store %struct.touchscreen_data* %9, %struct.touchscreen_data** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %12, label %40

12:                                               ; preds = %3
  %13 = load %struct.touchscreen_data*, %struct.touchscreen_data** %7, align 8
  %14 = getelementptr inbounds %struct.touchscreen_data, %struct.touchscreen_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ABS_X, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 2
  %19 = bitcast i8* %18 to i32*
  %20 = call i32 @be16_to_cpup(i32* %19)
  %21 = call i32 @input_report_abs(i32 %15, i32 %16, i32 %20)
  %22 = load %struct.touchscreen_data*, %struct.touchscreen_data** %7, align 8
  %23 = getelementptr inbounds %struct.touchscreen_data, %struct.touchscreen_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ABS_Y, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = bitcast i8* %27 to i32*
  %29 = call i32 @be16_to_cpup(i32* %28)
  %30 = call i32 @input_report_abs(i32 %24, i32 %25, i32 %29)
  %31 = load %struct.touchscreen_data*, %struct.touchscreen_data** %7, align 8
  %32 = getelementptr inbounds %struct.touchscreen_data, %struct.touchscreen_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @BTN_TOUCH, align 4
  %35 = call i32 @input_report_key(i32 %33, i32 %34, i32 1)
  %36 = load %struct.touchscreen_data*, %struct.touchscreen_data** %7, align 8
  %37 = getelementptr inbounds %struct.touchscreen_data, %struct.touchscreen_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @input_sync(i32 %38)
  br label %64

40:                                               ; preds = %3
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %40
  %44 = load %struct.touchscreen_data*, %struct.touchscreen_data** %7, align 8
  %45 = getelementptr inbounds %struct.touchscreen_data, %struct.touchscreen_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ABS_X, align 4
  %48 = call i32 @input_report_abs(i32 %46, i32 %47, i32 0)
  %49 = load %struct.touchscreen_data*, %struct.touchscreen_data** %7, align 8
  %50 = getelementptr inbounds %struct.touchscreen_data, %struct.touchscreen_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ABS_Y, align 4
  %53 = call i32 @input_report_abs(i32 %51, i32 %52, i32 0)
  %54 = load %struct.touchscreen_data*, %struct.touchscreen_data** %7, align 8
  %55 = getelementptr inbounds %struct.touchscreen_data, %struct.touchscreen_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @BTN_TOUCH, align 4
  %58 = call i32 @input_report_key(i32 %56, i32 %57, i32 0)
  %59 = load %struct.touchscreen_data*, %struct.touchscreen_data** %7, align 8
  %60 = getelementptr inbounds %struct.touchscreen_data, %struct.touchscreen_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @input_sync(i32 %61)
  br label %63

63:                                               ; preds = %43, %40
  br label %64

64:                                               ; preds = %63, %12
  ret void
}

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @be16_to_cpup(i32*) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
