; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_sgp30.c_sgp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_sgp30.c_sgp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgp_data = type { i32, i32, i32, i8*, i8*, i32, i64, i32 }

@SGP_CMD_IAQ_INIT = common dso_local global i32 0, align 4
@IAQ_BUFFER_EMPTY = common dso_local global i32 0, align 4
@SGP30_MEASURE_INTERVAL_HZ = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@SGP_CMD_IAQ_MEASURE = common dso_local global i8* null, align 8
@SGP30_CMD_MEASURE_SIGNAL = common dso_local global i8* null, align 8
@SGPC3_MEASURE_INTERVAL_HZ = common dso_local global i32 0, align 4
@SGPC3_CMD_MEASURE_RAW = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sgp_data*)* @sgp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sgp_init(%struct.sgp_data* %0) #0 {
  %2 = alloca %struct.sgp_data*, align 8
  store %struct.sgp_data* %0, %struct.sgp_data** %2, align 8
  %3 = load i32, i32* @SGP_CMD_IAQ_INIT, align 4
  %4 = load %struct.sgp_data*, %struct.sgp_data** %2, align 8
  %5 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %4, i32 0, i32 7
  store i32 %3, i32* %5, align 8
  %6 = load %struct.sgp_data*, %struct.sgp_data** %2, align 8
  %7 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %6, i32 0, i32 6
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @IAQ_BUFFER_EMPTY, align 4
  %9 = load %struct.sgp_data*, %struct.sgp_data** %2, align 8
  %10 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %9, i32 0, i32 5
  store i32 %8, i32* %10, align 8
  %11 = load %struct.sgp_data*, %struct.sgp_data** %2, align 8
  %12 = call i32 @SGP_VERS_PRODUCT(%struct.sgp_data* %11)
  switch i32 %12, label %51 [
    i32 129, label %13
    i32 128, label %31
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* @SGP30_MEASURE_INTERVAL_HZ, align 4
  %15 = load i32, i32* @HZ, align 4
  %16 = mul nsw i32 %14, %15
  %17 = load %struct.sgp_data*, %struct.sgp_data** %2, align 8
  %18 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i8*, i8** @SGP_CMD_IAQ_MEASURE, align 8
  %20 = load %struct.sgp_data*, %struct.sgp_data** %2, align 8
  %21 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @SGP30_CMD_MEASURE_SIGNAL, align 8
  %23 = load %struct.sgp_data*, %struct.sgp_data** %2, align 8
  %24 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load %struct.sgp_data*, %struct.sgp_data** %2, align 8
  %26 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %25, i32 0, i32 1
  store i32 129, i32* %26, align 4
  %27 = load i32, i32* @HZ, align 4
  %28 = mul nsw i32 15, %27
  %29 = load %struct.sgp_data*, %struct.sgp_data** %2, align 8
  %30 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  br label %51

31:                                               ; preds = %1
  %32 = load i32, i32* @SGPC3_MEASURE_INTERVAL_HZ, align 4
  %33 = load i32, i32* @HZ, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load %struct.sgp_data*, %struct.sgp_data** %2, align 8
  %36 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** @SGPC3_CMD_MEASURE_RAW, align 8
  %38 = load %struct.sgp_data*, %struct.sgp_data** %2, align 8
  %39 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** @SGPC3_CMD_MEASURE_RAW, align 8
  %41 = load %struct.sgp_data*, %struct.sgp_data** %2, align 8
  %42 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load %struct.sgp_data*, %struct.sgp_data** %2, align 8
  %44 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %43, i32 0, i32 1
  store i32 128, i32* %44, align 4
  %45 = load %struct.sgp_data*, %struct.sgp_data** %2, align 8
  %46 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 43, %47
  %49 = load %struct.sgp_data*, %struct.sgp_data** %2, align 8
  %50 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %1, %31, %13
  ret void
}

declare dso_local i32 @SGP_VERS_PRODUCT(%struct.sgp_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
