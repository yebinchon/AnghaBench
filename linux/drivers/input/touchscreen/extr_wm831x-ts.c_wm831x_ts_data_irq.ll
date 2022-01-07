; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm831x-ts.c_wm831x_ts_data_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm831x-ts.c_wm831x_ts_data_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x_ts = type { i32, i32, i32, i64, i32, %struct.wm831x* }
%struct.wm831x = type { i32 }

@wm831x_ts_data_irq.data_types = internal global [3 x i32] [i32 129, i32 128, i32 130], align 4
@WM831X_INTERRUPT_STATUS_1 = common dso_local global i32 0, align 4
@WM831X_TCHDATA_EINT = common dso_local global i32 0, align 4
@WM831X_TOUCH_DATA_X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to read touch data: %d\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@WM831X_TCH_PD = common dso_local global i32 0, align 4
@WM831X_TCH_DATA_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"IRQ DATA->PD\0A\00", align 1
@WM831X_TOUCH_CONTROL_1 = common dso_local global i32 0, align 4
@WM831X_TCH_X_ENA = common dso_local global i32 0, align 4
@WM831X_TCH_Y_ENA = common dso_local global i32 0, align 4
@WM831X_TCH_Z_ENA = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wm831x_ts_data_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_ts_data_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wm831x_ts*, align 8
  %7 = alloca %struct.wm831x*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.wm831x_ts*
  store %struct.wm831x_ts* %13, %struct.wm831x_ts** %6, align 8
  %14 = load %struct.wm831x_ts*, %struct.wm831x_ts** %6, align 8
  %15 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %14, i32 0, i32 5
  %16 = load %struct.wm831x*, %struct.wm831x** %15, align 8
  store %struct.wm831x* %16, %struct.wm831x** %7, align 8
  %17 = load %struct.wm831x_ts*, %struct.wm831x_ts** %6, align 8
  %18 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 3, i32* %9, align 4
  br label %23

22:                                               ; preds = %2
  store i32 2, i32* %9, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %25 = load i32, i32* @WM831X_INTERRUPT_STATUS_1, align 4
  %26 = load i32, i32* @WM831X_TCHDATA_EINT, align 4
  %27 = load i32, i32* @WM831X_TCHDATA_EINT, align 4
  %28 = call i32 @wm831x_set_bits(%struct.wm831x* %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %30 = load i32, i32* @WM831X_TOUCH_DATA_X, align 4
  %31 = load i32, i32* %9, align 4
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %33 = call i32 @wm831x_bulk_read(%struct.wm831x* %29, i32 %30, i32 %31, i32* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %23
  %37 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %38 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @IRQ_NONE, align 4
  store i32 %42, i32* %3, align 4
  br label %141

43:                                               ; preds = %23
  %44 = load %struct.wm831x_ts*, %struct.wm831x_ts** %6, align 8
  %45 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %76, %43
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %79

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @WM831X_TCH_PD, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %50
  %59 = load %struct.wm831x_ts*, %struct.wm831x_ts** %6, align 8
  %60 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  br label %76

61:                                               ; preds = %50
  %62 = load %struct.wm831x_ts*, %struct.wm831x_ts** %6, align 8
  %63 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* @wm831x_ts_data_irq.data_types, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @WM831X_TCH_DATA_MASK, align 4
  %74 = and i32 %72, %73
  %75 = call i32 @input_report_abs(i32 %64, i32 %68, i32 %74)
  br label %76

76:                                               ; preds = %61, %58
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %46

79:                                               ; preds = %46
  %80 = load %struct.wm831x_ts*, %struct.wm831x_ts** %6, align 8
  %81 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %129, label %84

84:                                               ; preds = %79
  %85 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %86 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_dbg(i32 %87, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %89 = load %struct.wm831x_ts*, %struct.wm831x_ts** %6, align 8
  %90 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @disable_irq_nosync(i32 %91)
  %93 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %94 = load i32, i32* @WM831X_TOUCH_CONTROL_1, align 4
  %95 = load i32, i32* @WM831X_TCH_X_ENA, align 4
  %96 = load i32, i32* @WM831X_TCH_Y_ENA, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @WM831X_TCH_Z_ENA, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @wm831x_set_bits(%struct.wm831x* %93, i32 %94, i32 %99, i32 0)
  %101 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %102 = load i32, i32* @WM831X_INTERRUPT_STATUS_1, align 4
  %103 = load i32, i32* @WM831X_TCHDATA_EINT, align 4
  %104 = load i32, i32* @WM831X_TCHDATA_EINT, align 4
  %105 = call i32 @wm831x_set_bits(%struct.wm831x* %101, i32 %102, i32 %103, i32 %104)
  %106 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %107 = load i32, i32* @WM831X_TOUCH_DATA_X, align 4
  %108 = load i32, i32* %9, align 4
  %109 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %110 = call i32 @wm831x_bulk_read(%struct.wm831x* %106, i32 %107, i32 %108, i32* %109)
  %111 = load %struct.wm831x_ts*, %struct.wm831x_ts** %6, align 8
  %112 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %84
  %116 = load %struct.wm831x_ts*, %struct.wm831x_ts** %6, align 8
  %117 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @input_report_abs(i32 %118, i32 130, i32 0)
  br label %120

120:                                              ; preds = %115, %84
  %121 = load %struct.wm831x_ts*, %struct.wm831x_ts** %6, align 8
  %122 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @BTN_TOUCH, align 4
  %125 = call i32 @input_report_key(i32 %123, i32 %124, i32 0)
  %126 = load %struct.wm831x_ts*, %struct.wm831x_ts** %6, align 8
  %127 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %126, i32 0, i32 2
  %128 = call i32 @schedule_work(i32* %127)
  br label %135

129:                                              ; preds = %79
  %130 = load %struct.wm831x_ts*, %struct.wm831x_ts** %6, align 8
  %131 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @BTN_TOUCH, align 4
  %134 = call i32 @input_report_key(i32 %132, i32 %133, i32 1)
  br label %135

135:                                              ; preds = %129, %120
  %136 = load %struct.wm831x_ts*, %struct.wm831x_ts** %6, align 8
  %137 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @input_sync(i32 %138)
  %140 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %135, %36
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

declare dso_local i32 @wm831x_bulk_read(%struct.wm831x*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
