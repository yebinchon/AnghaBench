; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_sgp30.c_sgp_measure_iaq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_sgp30.c_sgp_measure_iaq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgp_data = type { i32, i32, i32, i64, i64 }

@jiffies = common dso_local global i32 0, align 4
@SGP_MEASUREMENT_LEN = common dso_local global i32 0, align 4
@SGP_MEASUREMENT_DURATION_US = common dso_local global i32 0, align 4
@IAQ_BUFFER_DEFAULT_VALS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IAQ_BUFFER_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sgp_data*)* @sgp_measure_iaq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgp_measure_iaq(%struct.sgp_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sgp_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sgp_data* %0, %struct.sgp_data** %3, align 8
  %6 = load i32, i32* @jiffies, align 4
  %7 = load %struct.sgp_data*, %struct.sgp_data** %3, align 8
  %8 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.sgp_data*, %struct.sgp_data** %3, align 8
  %11 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %9, %12
  %14 = call i32 @time_after(i32 %6, i64 %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load %struct.sgp_data*, %struct.sgp_data** %3, align 8
  %19 = load %struct.sgp_data*, %struct.sgp_data** %3, align 8
  %20 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.sgp_data*, %struct.sgp_data** %3, align 8
  %23 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %22, i32 0, i32 1
  %24 = load i32, i32* @SGP_MEASUREMENT_LEN, align 4
  %25 = load i32, i32* @SGP_MEASUREMENT_DURATION_US, align 4
  %26 = call i32 @sgp_read_cmd(%struct.sgp_data* %18, i32 %21, i32* %23, i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %44

31:                                               ; preds = %1
  %32 = load i32, i32* @IAQ_BUFFER_DEFAULT_VALS, align 4
  %33 = load %struct.sgp_data*, %struct.sgp_data** %3, align 8
  %34 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %44

40:                                               ; preds = %31
  %41 = load i32, i32* @IAQ_BUFFER_VALID, align 4
  %42 = load %struct.sgp_data*, %struct.sgp_data** %3, align 8
  %43 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %37, %29
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @time_after(i32, i64) #1

declare dso_local i32 @sgp_read_cmd(%struct.sgp_data*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
