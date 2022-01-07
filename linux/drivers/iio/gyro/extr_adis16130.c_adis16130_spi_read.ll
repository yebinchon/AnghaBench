; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16130.c_adis16130_spi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16130.c_adis16130_spi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.adis16130_state = type { i32*, i32, i32 }
%struct.spi_transfer = type { i32*, i32*, i32 }

@ADIS16130_CON_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32*)* @adis16130_spi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16130_spi_read(%struct.iio_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.adis16130_state*, align 8
  %9 = alloca %struct.spi_transfer, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = call %struct.adis16130_state* @iio_priv(%struct.iio_dev* %10)
  store %struct.adis16130_state* %11, %struct.adis16130_state** %8, align 8
  %12 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 0
  %13 = load %struct.adis16130_state*, %struct.adis16130_state** %8, align 8
  %14 = getelementptr inbounds %struct.adis16130_state, %struct.adis16130_state* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %12, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 1
  %17 = load %struct.adis16130_state*, %struct.adis16130_state** %8, align 8
  %18 = getelementptr inbounds %struct.adis16130_state, %struct.adis16130_state* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %16, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 2
  store i32 4, i32* %20, align 8
  %21 = load %struct.adis16130_state*, %struct.adis16130_state** %8, align 8
  %22 = getelementptr inbounds %struct.adis16130_state, %struct.adis16130_state* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load i32, i32* @ADIS16130_CON_RD, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.adis16130_state*, %struct.adis16130_state** %8, align 8
  %28 = getelementptr inbounds %struct.adis16130_state, %struct.adis16130_state* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %26, i32* %30, align 4
  %31 = load %struct.adis16130_state*, %struct.adis16130_state** %8, align 8
  %32 = getelementptr inbounds %struct.adis16130_state, %struct.adis16130_state* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  store i32 0, i32* %34, align 4
  %35 = load %struct.adis16130_state*, %struct.adis16130_state** %8, align 8
  %36 = getelementptr inbounds %struct.adis16130_state, %struct.adis16130_state* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 0, i32* %38, align 4
  %39 = load %struct.adis16130_state*, %struct.adis16130_state** %8, align 8
  %40 = getelementptr inbounds %struct.adis16130_state, %struct.adis16130_state* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 0, i32* %42, align 4
  %43 = load %struct.adis16130_state*, %struct.adis16130_state** %8, align 8
  %44 = getelementptr inbounds %struct.adis16130_state, %struct.adis16130_state* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @spi_sync_transfer(i32 %45, %struct.spi_transfer* %9, i32 1)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %3
  %50 = load %struct.adis16130_state*, %struct.adis16130_state** %8, align 8
  %51 = getelementptr inbounds %struct.adis16130_state, %struct.adis16130_state* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 16
  %56 = load %struct.adis16130_state*, %struct.adis16130_state** %8, align 8
  %57 = getelementptr inbounds %struct.adis16130_state, %struct.adis16130_state* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 8
  %62 = or i32 %55, %61
  %63 = load %struct.adis16130_state*, %struct.adis16130_state** %8, align 8
  %64 = getelementptr inbounds %struct.adis16130_state, %struct.adis16130_state* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %62, %67
  %69 = load i32*, i32** %6, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %49, %3
  %71 = load %struct.adis16130_state*, %struct.adis16130_state** %8, align 8
  %72 = getelementptr inbounds %struct.adis16130_state, %struct.adis16130_state* %71, i32 0, i32 1
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local %struct.adis16130_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spi_sync_transfer(i32, %struct.spi_transfer*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
