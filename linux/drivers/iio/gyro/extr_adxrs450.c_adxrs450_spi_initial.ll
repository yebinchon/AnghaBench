; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adxrs450.c_adxrs450_spi_initial.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adxrs450.c_adxrs450_spi_initial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adxrs450_state = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.spi_transfer = type { i32, i32, i32*, i32* }

@ADXRS450_SENSOR_DATA = common dso_local global i32 0, align 4
@ADXRS450_CHK = common dso_local global i32 0, align 4
@ADXRS450_P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Problem while reading initializing data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adxrs450_state*, i32*, i8)* @adxrs450_spi_initial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adxrs450_spi_initial(%struct.adxrs450_state* %0, i32* %1, i8 signext %2) #0 {
  %4 = alloca %struct.adxrs450_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.spi_transfer, align 8
  store %struct.adxrs450_state* %0, %struct.adxrs450_state** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8 %2, i8* %6, align 1
  %10 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 0
  store i32 8, i32* %10, align 8
  %11 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 1
  store i32 4, i32* %11, align 4
  %12 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 2
  %13 = load %struct.adxrs450_state*, %struct.adxrs450_state** %4, align 8
  %14 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %13, i32 0, i32 1
  store i32* %14, i32** %12, align 8
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 3
  %16 = load %struct.adxrs450_state*, %struct.adxrs450_state** %4, align 8
  %17 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %16, i32 0, i32 3
  store i32* %17, i32** %15, align 8
  %18 = load %struct.adxrs450_state*, %struct.adxrs450_state** %4, align 8
  %19 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i32, i32* @ADXRS450_SENSOR_DATA, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i8, i8* %6, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load i32, i32* @ADXRS450_CHK, align 4
  %26 = load i32, i32* @ADXRS450_P, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %24, %3
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @cpu_to_be32(i32 %31)
  %33 = load %struct.adxrs450_state*, %struct.adxrs450_state** %4, align 8
  %34 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.adxrs450_state*, %struct.adxrs450_state** %4, align 8
  %36 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = call i32 @spi_sync_transfer(%struct.TYPE_2__* %37, %struct.spi_transfer* %9, i32 1)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %30
  %42 = load %struct.adxrs450_state*, %struct.adxrs450_state** %4, align 8
  %43 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %53

47:                                               ; preds = %30
  %48 = load %struct.adxrs450_state*, %struct.adxrs450_state** %4, align 8
  %49 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @be32_to_cpu(i32 %50)
  %52 = load i32*, i32** %5, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.adxrs450_state*, %struct.adxrs450_state** %4, align 8
  %55 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @spi_sync_transfer(%struct.TYPE_2__*, %struct.spi_transfer*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
