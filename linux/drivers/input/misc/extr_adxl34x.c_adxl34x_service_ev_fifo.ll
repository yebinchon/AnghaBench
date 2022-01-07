; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_adxl34x.c_adxl34x_service_ev_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_adxl34x.c_adxl34x_service_ev_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adxl34x = type { %struct.TYPE_2__, i32, %struct.adxl34x_platform_data }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.adxl34x_platform_data = type { i32, i32, i32, i32 }
%struct.axis_triple = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adxl34x*)* @adxl34x_service_ev_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adxl34x_service_ev_fifo(%struct.adxl34x* %0) #0 {
  %2 = alloca %struct.adxl34x*, align 8
  %3 = alloca %struct.adxl34x_platform_data*, align 8
  %4 = alloca %struct.axis_triple, align 8
  store %struct.adxl34x* %0, %struct.adxl34x** %2, align 8
  %5 = load %struct.adxl34x*, %struct.adxl34x** %2, align 8
  %6 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %5, i32 0, i32 2
  store %struct.adxl34x_platform_data* %6, %struct.adxl34x_platform_data** %3, align 8
  %7 = load %struct.adxl34x*, %struct.adxl34x** %2, align 8
  %8 = call i32 @adxl34x_get_triple(%struct.adxl34x* %7, %struct.axis_triple* %4)
  %9 = load %struct.adxl34x*, %struct.adxl34x** %2, align 8
  %10 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.adxl34x_platform_data*, %struct.adxl34x_platform_data** %3, align 8
  %13 = getelementptr inbounds %struct.adxl34x_platform_data, %struct.adxl34x_platform_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.adxl34x_platform_data*, %struct.adxl34x_platform_data** %3, align 8
  %16 = getelementptr inbounds %struct.adxl34x_platform_data, %struct.adxl34x_platform_data* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.axis_triple, %struct.axis_triple* %4, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.adxl34x*, %struct.adxl34x** %2, align 8
  %21 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %19, %23
  %25 = call i32 @input_event(i32 %11, i32 %14, i32 %17, i64 %24)
  %26 = load %struct.adxl34x*, %struct.adxl34x** %2, align 8
  %27 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.adxl34x_platform_data*, %struct.adxl34x_platform_data** %3, align 8
  %30 = getelementptr inbounds %struct.adxl34x_platform_data, %struct.adxl34x_platform_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.adxl34x_platform_data*, %struct.adxl34x_platform_data** %3, align 8
  %33 = getelementptr inbounds %struct.adxl34x_platform_data, %struct.adxl34x_platform_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.axis_triple, %struct.axis_triple* %4, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.adxl34x*, %struct.adxl34x** %2, align 8
  %38 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %36, %40
  %42 = call i32 @input_event(i32 %28, i32 %31, i32 %34, i64 %41)
  %43 = load %struct.adxl34x*, %struct.adxl34x** %2, align 8
  %44 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.adxl34x_platform_data*, %struct.adxl34x_platform_data** %3, align 8
  %47 = getelementptr inbounds %struct.adxl34x_platform_data, %struct.adxl34x_platform_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.adxl34x_platform_data*, %struct.adxl34x_platform_data** %3, align 8
  %50 = getelementptr inbounds %struct.adxl34x_platform_data, %struct.adxl34x_platform_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.axis_triple, %struct.axis_triple* %4, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.adxl34x*, %struct.adxl34x** %2, align 8
  %55 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %53, %57
  %59 = call i32 @input_event(i32 %45, i32 %48, i32 %51, i64 %58)
  ret void
}

declare dso_local i32 @adxl34x_get_triple(%struct.adxl34x*, %struct.axis_triple*) #1

declare dso_local i32 @input_event(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
