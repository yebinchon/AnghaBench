; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc2007_core.c_tsc2007_calculate_resistance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc2007_core.c_tsc2007_calculate_resistance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsc2007 = type { i32 }
%struct.ts_event = type { i32, i32, i32 }

@MAX_12BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsc2007_calculate_resistance(%struct.tsc2007* %0, %struct.ts_event* %1) #0 {
  %3 = alloca %struct.tsc2007*, align 8
  %4 = alloca %struct.ts_event*, align 8
  %5 = alloca i32, align 4
  store %struct.tsc2007* %0, %struct.tsc2007** %3, align 8
  store %struct.ts_event* %1, %struct.ts_event** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ts_event*, %struct.ts_event** %4, align 8
  %7 = getelementptr inbounds %struct.ts_event, %struct.ts_event* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MAX_12BIT, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.ts_event*, %struct.ts_event** %4, align 8
  %13 = getelementptr inbounds %struct.ts_event, %struct.ts_event* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.ts_event*, %struct.ts_event** %4, align 8
  %16 = getelementptr inbounds %struct.ts_event, %struct.ts_event* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.ts_event*, %struct.ts_event** %4, align 8
  %21 = getelementptr inbounds %struct.ts_event, %struct.ts_event* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i1 [ false, %14 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @likely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %24
  %30 = load %struct.ts_event*, %struct.ts_event** %4, align 8
  %31 = getelementptr inbounds %struct.ts_event, %struct.ts_event* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ts_event*, %struct.ts_event** %4, align 8
  %34 = getelementptr inbounds %struct.ts_event, %struct.ts_event* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  store i32 %36, i32* %5, align 4
  %37 = load %struct.ts_event*, %struct.ts_event** %4, align 8
  %38 = getelementptr inbounds %struct.ts_event, %struct.ts_event* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = mul nsw i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load %struct.tsc2007*, %struct.tsc2007** %3, align 8
  %43 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = mul nsw i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load %struct.ts_event*, %struct.ts_event** %4, align 8
  %48 = getelementptr inbounds %struct.ts_event, %struct.ts_event* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = sdiv i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 2047
  %54 = ashr i32 %53, 12
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %29, %24
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
