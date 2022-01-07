; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sun4i-ts.c_sun4i_ts_irq_handle_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sun4i-ts.c_sun4i_ts_irq_handle_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_ts_data = type { i32, i32, i64 }

@FIFO_DATA_PENDING = common dso_local global i32 0, align 4
@TP_DATA = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@TP_UP_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun4i_ts_data*, i32)* @sun4i_ts_irq_handle_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_ts_irq_handle_input(%struct.sun4i_ts_data* %0, i32 %1) #0 {
  %3 = alloca %struct.sun4i_ts_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sun4i_ts_data* %0, %struct.sun4i_ts_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @FIFO_DATA_PENDING, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %54

11:                                               ; preds = %2
  %12 = load %struct.sun4i_ts_data*, %struct.sun4i_ts_data** %3, align 8
  %13 = getelementptr inbounds %struct.sun4i_ts_data, %struct.sun4i_ts_data* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TP_DATA, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.sun4i_ts_data*, %struct.sun4i_ts_data** %3, align 8
  %19 = getelementptr inbounds %struct.sun4i_ts_data, %struct.sun4i_ts_data* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TP_DATA, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.sun4i_ts_data*, %struct.sun4i_ts_data** %3, align 8
  %25 = getelementptr inbounds %struct.sun4i_ts_data, %struct.sun4i_ts_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %50, label %28

28:                                               ; preds = %11
  %29 = load %struct.sun4i_ts_data*, %struct.sun4i_ts_data** %3, align 8
  %30 = getelementptr inbounds %struct.sun4i_ts_data, %struct.sun4i_ts_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ABS_X, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @input_report_abs(i32 %31, i32 %32, i32 %33)
  %35 = load %struct.sun4i_ts_data*, %struct.sun4i_ts_data** %3, align 8
  %36 = getelementptr inbounds %struct.sun4i_ts_data, %struct.sun4i_ts_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ABS_Y, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @input_report_abs(i32 %37, i32 %38, i32 %39)
  %41 = load %struct.sun4i_ts_data*, %struct.sun4i_ts_data** %3, align 8
  %42 = getelementptr inbounds %struct.sun4i_ts_data, %struct.sun4i_ts_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @BTN_TOUCH, align 4
  %45 = call i32 @input_report_key(i32 %43, i32 %44, i32 1)
  %46 = load %struct.sun4i_ts_data*, %struct.sun4i_ts_data** %3, align 8
  %47 = getelementptr inbounds %struct.sun4i_ts_data, %struct.sun4i_ts_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @input_sync(i32 %48)
  br label %53

50:                                               ; preds = %11
  %51 = load %struct.sun4i_ts_data*, %struct.sun4i_ts_data** %3, align 8
  %52 = getelementptr inbounds %struct.sun4i_ts_data, %struct.sun4i_ts_data* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %28
  br label %54

54:                                               ; preds = %53, %2
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @TP_UP_PENDING, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load %struct.sun4i_ts_data*, %struct.sun4i_ts_data** %3, align 8
  %61 = getelementptr inbounds %struct.sun4i_ts_data, %struct.sun4i_ts_data* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.sun4i_ts_data*, %struct.sun4i_ts_data** %3, align 8
  %63 = getelementptr inbounds %struct.sun4i_ts_data, %struct.sun4i_ts_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @BTN_TOUCH, align 4
  %66 = call i32 @input_report_key(i32 %64, i32 %65, i32 0)
  %67 = load %struct.sun4i_ts_data*, %struct.sun4i_ts_data** %3, align 8
  %68 = getelementptr inbounds %struct.sun4i_ts_data, %struct.sun4i_ts_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @input_sync(i32 %69)
  br label %71

71:                                               ; preds = %59, %54
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
