; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_exynos-bus.c_exynos_bus_get_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_exynos-bus.c_exynos_bus_get_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_bus = type { i32, i32* }
%struct.devfreq_event_data = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_bus*, %struct.devfreq_event_data*)* @exynos_bus_get_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_bus_get_event(%struct.exynos_bus* %0, %struct.devfreq_event_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.exynos_bus*, align 8
  %5 = alloca %struct.devfreq_event_data*, align 8
  %6 = alloca %struct.devfreq_event_data, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.exynos_bus* %0, %struct.exynos_bus** %4, align 8
  store %struct.devfreq_event_data* %1, %struct.devfreq_event_data** %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %54, %2
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.exynos_bus*, %struct.exynos_bus** %4, align 8
  %14 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %57

17:                                               ; preds = %11
  %18 = load %struct.exynos_bus*, %struct.exynos_bus** %4, align 8
  %19 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %54

27:                                               ; preds = %17
  %28 = load %struct.exynos_bus*, %struct.exynos_bus** %4, align 8
  %29 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @devfreq_event_get_event(i32 %34, %struct.devfreq_event_data* %6)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %3, align 4
  br label %65

40:                                               ; preds = %27
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %6, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %43, %40
  %49 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %6, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %7, align 8
  %51 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %6, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %8, align 8
  br label %53

53:                                               ; preds = %48, %43
  br label %54

54:                                               ; preds = %53, %26
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %11

57:                                               ; preds = %11
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.devfreq_event_data*, %struct.devfreq_event_data** %5, align 8
  %60 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.devfreq_event_data*, %struct.devfreq_event_data** %5, align 8
  %63 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %57, %38
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @devfreq_event_get_event(i32, %struct.devfreq_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
