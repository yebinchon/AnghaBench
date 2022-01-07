; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_mpl115_spi.c_mpl115_spi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_mpl115_spi.c_mpl115_spi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.spi_device = type { i32 }
%struct.mpl115_spi_buf = type { i32*, i8** }
%struct.spi_transfer = type { i32*, i32, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64)* @mpl115_spi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpl115_spi_read(%struct.device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.mpl115_spi_buf*, align 8
  %8 = alloca %struct.spi_transfer, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.spi_device* @to_spi_device(%struct.device* %10)
  store %struct.spi_device* %11, %struct.spi_device** %6, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %13 = call %struct.mpl115_spi_buf* @spi_get_drvdata(%struct.spi_device* %12)
  store %struct.mpl115_spi_buf* %13, %struct.mpl115_spi_buf** %7, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 0
  %15 = load %struct.mpl115_spi_buf*, %struct.mpl115_spi_buf** %7, align 8
  %16 = getelementptr inbounds %struct.mpl115_spi_buf, %struct.mpl115_spi_buf* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %14, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 1
  store i32 4, i32* %18, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 2
  %20 = load %struct.mpl115_spi_buf*, %struct.mpl115_spi_buf** %7, align 8
  %21 = getelementptr inbounds %struct.mpl115_spi_buf, %struct.mpl115_spi_buf* %20, i32 0, i32 1
  %22 = load i8**, i8*** %21, align 8
  store i8** %22, i8*** %19, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i8* @MPL115_SPI_READ(i64 %23)
  %25 = load %struct.mpl115_spi_buf*, %struct.mpl115_spi_buf** %7, align 8
  %26 = getelementptr inbounds %struct.mpl115_spi_buf, %struct.mpl115_spi_buf* %25, i32 0, i32 1
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  store i8* %24, i8** %28, align 8
  %29 = load i64, i64* %5, align 8
  %30 = add nsw i64 %29, 1
  %31 = call i8* @MPL115_SPI_READ(i64 %30)
  %32 = load %struct.mpl115_spi_buf*, %struct.mpl115_spi_buf** %7, align 8
  %33 = getelementptr inbounds %struct.mpl115_spi_buf, %struct.mpl115_spi_buf* %32, i32 0, i32 1
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 2
  store i8* %31, i8** %35, align 8
  %36 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %37 = call i32 @spi_sync_transfer(%struct.spi_device* %36, %struct.spi_transfer* %8, i32 1)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %2
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %55

42:                                               ; preds = %2
  %43 = load %struct.mpl115_spi_buf*, %struct.mpl115_spi_buf** %7, align 8
  %44 = getelementptr inbounds %struct.mpl115_spi_buf, %struct.mpl115_spi_buf* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 8
  %49 = load %struct.mpl115_spi_buf*, %struct.mpl115_spi_buf** %7, align 8
  %50 = getelementptr inbounds %struct.mpl115_spi_buf, %struct.mpl115_spi_buf* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %48, %53
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %42, %40
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local %struct.mpl115_spi_buf* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i8* @MPL115_SPI_READ(i64) #1

declare dso_local i32 @spi_sync_transfer(%struct.spi_device*, %struct.spi_transfer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
