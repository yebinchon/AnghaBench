; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_da9034-ts.c_report_pen_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_da9034-ts.c_report_pen_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9034_touch = type { i32, i32, i32, i64, i64 }

@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.da9034_touch*)* @report_pen_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_pen_down(%struct.da9034_touch* %0) #0 {
  %2 = alloca %struct.da9034_touch*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.da9034_touch* %0, %struct.da9034_touch** %2, align 8
  %5 = load %struct.da9034_touch*, %struct.da9034_touch** %2, align 8
  %6 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load %struct.da9034_touch*, %struct.da9034_touch** %2, align 8
  %9 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 4095
  store i32 %12, i32* %3, align 4
  %13 = load %struct.da9034_touch*, %struct.da9034_touch** %2, align 8
  %14 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = sub nsw i32 1024, %18
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 4095
  store i32 %22, i32* %4, align 4
  %23 = load %struct.da9034_touch*, %struct.da9034_touch** %2, align 8
  %24 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = sub nsw i32 1024, %28
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %20
  %31 = load %struct.da9034_touch*, %struct.da9034_touch** %2, align 8
  %32 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ABS_X, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @input_report_abs(i32 %33, i32 %34, i32 %35)
  %37 = load %struct.da9034_touch*, %struct.da9034_touch** %2, align 8
  %38 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ABS_Y, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @input_report_abs(i32 %39, i32 %40, i32 %41)
  %43 = load %struct.da9034_touch*, %struct.da9034_touch** %2, align 8
  %44 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @BTN_TOUCH, align 4
  %47 = call i32 @input_report_key(i32 %45, i32 %46, i32 1)
  %48 = load %struct.da9034_touch*, %struct.da9034_touch** %2, align 8
  %49 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @input_sync(i32 %50)
  ret void
}

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
