; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1118.c_max1118_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1118.c_max1118_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.max1118 = type { i32 }
%struct.spi_transfer = type { i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, i32)* @max1118_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1118_read(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.max1118*, align 8
  %8 = alloca [3 x %struct.spi_transfer], align 16
  %9 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %11 = call %struct.iio_dev* @spi_get_drvdata(%struct.spi_device* %10)
  store %struct.iio_dev* %11, %struct.iio_dev** %6, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %13 = call %struct.max1118* @iio_priv(%struct.iio_dev* %12)
  store %struct.max1118* %13, %struct.max1118** %7, align 8
  %14 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %8, i64 0, i64 0
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 1
  store i32 1, i32* %16, align 4
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 2
  store i32 1, i32* %17, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 3
  store i32* null, i32** %18, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i64 1
  %20 = bitcast %struct.spi_transfer* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 24, i1 false)
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 1
  store i32 8, i32* %21, align 4
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i64 1
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 2
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 3
  %27 = load %struct.max1118*, %struct.max1118** %7, align 8
  %28 = getelementptr inbounds %struct.max1118, %struct.max1118* %27, i32 0, i32 0
  store i32* %28, i32** %26, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %33 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %8, i64 0, i64 0
  %34 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %33, i64 1
  %35 = call i32 @spi_sync_transfer(%struct.spi_device* %32, %struct.spi_transfer* %34, i32 2)
  store i32 %35, i32* %9, align 4
  br label %40

36:                                               ; preds = %2
  %37 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %38 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %8, i64 0, i64 0
  %39 = call i32 @spi_sync_transfer(%struct.spi_device* %37, %struct.spi_transfer* %38, i32 3)
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %49

45:                                               ; preds = %40
  %46 = load %struct.max1118*, %struct.max1118** %7, align 8
  %47 = getelementptr inbounds %struct.max1118, %struct.max1118* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %43
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.iio_dev* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local %struct.max1118* @iio_priv(%struct.iio_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @spi_sync_transfer(%struct.spi_device*, %struct.spi_transfer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
