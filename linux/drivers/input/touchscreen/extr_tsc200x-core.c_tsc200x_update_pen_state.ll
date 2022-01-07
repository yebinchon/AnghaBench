; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc200x-core.c_tsc200x_update_pen_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc200x-core.c_tsc200x_update_pen_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsc200x = type { i32, i32, i32 }

@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"point(%4d,%4d), pressure (%4d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsc200x*, i32, i32, i32)* @tsc200x_update_pen_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsc200x_update_pen_state(%struct.tsc200x* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tsc200x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tsc200x* %0, %struct.tsc200x** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %4
  %12 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %13 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ABS_X, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @input_report_abs(i32 %14, i32 %15, i32 %16)
  %18 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %19 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ABS_Y, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @input_report_abs(i32 %20, i32 %21, i32 %22)
  %24 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %25 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ABS_PRESSURE, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @input_report_abs(i32 %26, i32 %27, i32 %28)
  %30 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %31 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %11
  %35 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %36 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BTN_TOUCH, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @input_report_key(i32 %37, i32 %38, i32 %43)
  %45 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %46 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  br label %47

47:                                               ; preds = %34, %11
  br label %67

48:                                               ; preds = %4
  %49 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %50 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ABS_PRESSURE, align 4
  %53 = call i32 @input_report_abs(i32 %51, i32 %52, i32 0)
  %54 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %55 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %48
  %59 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %60 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @BTN_TOUCH, align 4
  %63 = call i32 @input_report_key(i32 %61, i32 %62, i32 0)
  %64 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %65 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %58, %48
  br label %67

67:                                               ; preds = %66, %47
  %68 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %69 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @input_sync(i32 %70)
  %72 = load %struct.tsc200x*, %struct.tsc200x** %5, align 8
  %73 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @dev_dbg(i32 %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %76, i32 %77)
  ret void
}

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
