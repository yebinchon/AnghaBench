; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adxrs450.c_adxrs450_spi_read_reg_16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adxrs450.c_adxrs450_spi_read_reg_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.adxrs450_state = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.spi_transfer = type { i32, i32, i32, i32*, i32* }

@ADXRS450_READ_DATA = common dso_local global i32 0, align 4
@ADXRS450_P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"problem while reading 16 bit register 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32*)* @adxrs450_spi_read_reg_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adxrs450_spi_read_reg_16(%struct.iio_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.adxrs450_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x %struct.spi_transfer], align 16
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %12 = call %struct.adxrs450_state* @iio_priv(%struct.iio_dev* %11)
  store %struct.adxrs450_state* %12, %struct.adxrs450_state** %7, align 8
  %13 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %10, i64 0, i64 0
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 0
  store i32 8, i32* %14, align 16
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 1
  store i32 4, i32* %15, align 4
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 2
  store i32 1, i32* %16, align 8
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 3
  store i32* null, i32** %17, align 16
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 4
  %19 = load %struct.adxrs450_state*, %struct.adxrs450_state** %7, align 8
  %20 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %19, i32 0, i32 3
  store i32* %20, i32** %18, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i64 1
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 0
  store i32 8, i32* %22, align 16
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 1
  store i32 4, i32* %23, align 4
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 2
  store i32 0, i32* %24, align 8
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 3
  %26 = load %struct.adxrs450_state*, %struct.adxrs450_state** %7, align 8
  %27 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %26, i32 0, i32 1
  store i32* %27, i32** %25, align 16
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 4
  store i32* null, i32** %28, align 8
  %29 = load %struct.adxrs450_state*, %struct.adxrs450_state** %7, align 8
  %30 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i32, i32* @ADXRS450_READ_DATA, align 4
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 %33, 17
  %35 = or i32 %32, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @hweight32(i32 %36)
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %3
  %41 = load i32, i32* @ADXRS450_P, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %40, %3
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @cpu_to_be32(i32 %45)
  %47 = load %struct.adxrs450_state*, %struct.adxrs450_state** %7, align 8
  %48 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.adxrs450_state*, %struct.adxrs450_state** %7, align 8
  %50 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %10, i64 0, i64 0
  %53 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %10, i64 0, i64 0
  %54 = call i32 @ARRAY_SIZE(%struct.spi_transfer* %53)
  %55 = call i32 @spi_sync_transfer(%struct.TYPE_2__* %51, %struct.spi_transfer* %52, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %44
  %59 = load %struct.adxrs450_state*, %struct.adxrs450_state** %7, align 8
  %60 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %73

65:                                               ; preds = %44
  %66 = load %struct.adxrs450_state*, %struct.adxrs450_state** %7, align 8
  %67 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @be32_to_cpu(i32 %68)
  %70 = ashr i32 %69, 5
  %71 = and i32 %70, 65535
  %72 = load i32*, i32** %6, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %65, %58
  %74 = load %struct.adxrs450_state*, %struct.adxrs450_state** %7, align 8
  %75 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %9, align 4
  ret i32 %77
}

declare dso_local %struct.adxrs450_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @spi_sync_transfer(%struct.TYPE_2__*, %struct.spi_transfer*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.spi_transfer*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
