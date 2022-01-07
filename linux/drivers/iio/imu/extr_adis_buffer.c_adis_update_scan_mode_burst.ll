; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis_buffer.c_adis_update_scan_mode_burst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis_buffer.c_adis_update_scan_mode_burst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.adis = type { i32, %struct.TYPE_6__*, i64*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i64*, i64* }
%struct.TYPE_5__ = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64*)* @adis_update_scan_mode_burst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis_update_scan_mode_burst(%struct.iio_dev* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.adis*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = call %struct.adis* @iio_device_get_drvdata(%struct.iio_dev* %9)
  store %struct.adis* %10, %struct.adis** %6, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %12 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load %struct.adis*, %struct.adis** %6, align 8
  %19 = getelementptr inbounds %struct.adis, %struct.adis* %18, i32 0, i32 3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.TYPE_6__* @kcalloc(i32 2, i32 24, i32 %27)
  %29 = load %struct.adis*, %struct.adis** %6, align 8
  %30 = getelementptr inbounds %struct.adis, %struct.adis* %29, i32 0, i32 1
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %30, align 8
  %31 = load %struct.adis*, %struct.adis** %6, align 8
  %32 = getelementptr inbounds %struct.adis, %struct.adis* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %129

38:                                               ; preds = %2
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = add i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i64* @kzalloc(i32 %42, i32 %43)
  %45 = load %struct.adis*, %struct.adis** %6, align 8
  %46 = getelementptr inbounds %struct.adis, %struct.adis* %45, i32 0, i32 2
  store i64* %44, i64** %46, align 8
  %47 = load %struct.adis*, %struct.adis** %6, align 8
  %48 = getelementptr inbounds %struct.adis, %struct.adis* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = icmp ne i64* %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %38
  %52 = load %struct.adis*, %struct.adis** %6, align 8
  %53 = getelementptr inbounds %struct.adis, %struct.adis* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = call i32 @kfree(%struct.TYPE_6__* %54)
  %56 = load %struct.adis*, %struct.adis** %6, align 8
  %57 = getelementptr inbounds %struct.adis, %struct.adis* %56, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %57, align 8
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %129

60:                                               ; preds = %38
  %61 = load %struct.adis*, %struct.adis** %6, align 8
  %62 = getelementptr inbounds %struct.adis, %struct.adis* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  store i64* %66, i64** %8, align 8
  %67 = load %struct.adis*, %struct.adis** %6, align 8
  %68 = getelementptr inbounds %struct.adis, %struct.adis* %67, i32 0, i32 3
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @ADIS_READ_REG(i32 %71)
  %73 = load i64*, i64** %8, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  store i64 %72, i64* %74, align 8
  %75 = load i64*, i64** %8, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 1
  store i64 0, i64* %76, align 8
  %77 = load i64*, i64** %8, align 8
  %78 = load %struct.adis*, %struct.adis** %6, align 8
  %79 = getelementptr inbounds %struct.adis, %struct.adis* %78, i32 0, i32 1
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  store i64* %77, i64** %82, align 8
  %83 = load %struct.adis*, %struct.adis** %6, align 8
  %84 = getelementptr inbounds %struct.adis, %struct.adis* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 8, i32* %87, align 8
  %88 = load %struct.adis*, %struct.adis** %6, align 8
  %89 = getelementptr inbounds %struct.adis, %struct.adis* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  store i32 2, i32* %92, align 4
  %93 = load %struct.adis*, %struct.adis** %6, align 8
  %94 = getelementptr inbounds %struct.adis, %struct.adis* %93, i32 0, i32 2
  %95 = load i64*, i64** %94, align 8
  %96 = load %struct.adis*, %struct.adis** %6, align 8
  %97 = getelementptr inbounds %struct.adis, %struct.adis* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  store i64* %95, i64** %100, align 8
  %101 = load %struct.adis*, %struct.adis** %6, align 8
  %102 = getelementptr inbounds %struct.adis, %struct.adis* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i32 8, i32* %105, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.adis*, %struct.adis** %6, align 8
  %108 = getelementptr inbounds %struct.adis, %struct.adis* %107, i32 0, i32 1
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  store i32 %106, i32* %111, align 4
  %112 = load %struct.adis*, %struct.adis** %6, align 8
  %113 = getelementptr inbounds %struct.adis, %struct.adis* %112, i32 0, i32 0
  %114 = call i32 @spi_message_init(i32* %113)
  %115 = load %struct.adis*, %struct.adis** %6, align 8
  %116 = getelementptr inbounds %struct.adis, %struct.adis* %115, i32 0, i32 1
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 0
  %119 = load %struct.adis*, %struct.adis** %6, align 8
  %120 = getelementptr inbounds %struct.adis, %struct.adis* %119, i32 0, i32 0
  %121 = call i32 @spi_message_add_tail(%struct.TYPE_6__* %118, i32* %120)
  %122 = load %struct.adis*, %struct.adis** %6, align 8
  %123 = getelementptr inbounds %struct.adis, %struct.adis* %122, i32 0, i32 1
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i64 1
  %126 = load %struct.adis*, %struct.adis** %6, align 8
  %127 = getelementptr inbounds %struct.adis, %struct.adis* %126, i32 0, i32 0
  %128 = call i32 @spi_message_add_tail(%struct.TYPE_6__* %125, i32* %127)
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %60, %51, %35
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.adis* @iio_device_get_drvdata(%struct.iio_dev*) #1

declare dso_local %struct.TYPE_6__* @kcalloc(i32, i32, i32) #1

declare dso_local i64* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i64 @ADIS_READ_REG(i32) #1

declare dso_local i32 @spi_message_init(i32*) #1

declare dso_local i32 @spi_message_add_tail(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
