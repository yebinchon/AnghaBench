; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_iio.c_ssp_common_process_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_iio.c_ssp_common_process_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i64, i64 }
%struct.ssp_sensor_data = type { i32 }

@SSP_TIME_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssp_common_process_data(%struct.iio_dev* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ssp_sensor_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.ssp_sensor_data* @iio_priv(%struct.iio_dev* %13)
  store %struct.ssp_sensor_data* %14, %struct.ssp_sensor_data** %12, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %16 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %53

20:                                               ; preds = %4
  %21 = load %struct.ssp_sensor_data*, %struct.ssp_sensor_data** %12, align 8
  %22 = getelementptr inbounds %struct.ssp_sensor_data, %struct.ssp_sensor_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i32*
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @memcpy(i32* %25, i8* %26, i32 %27)
  %29 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %30 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %20
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i32, i32* @SSP_TIME_SIZE, align 4
  %39 = call i32 @memcpy(i32* %10, i8* %37, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @le32_to_cpu(i32 %41)
  %43 = trunc i64 %42 to i32
  %44 = mul nsw i32 %43, 1000000
  %45 = add nsw i32 %40, %44
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %33, %20
  %47 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %48 = load %struct.ssp_sensor_data*, %struct.ssp_sensor_data** %12, align 8
  %49 = getelementptr inbounds %struct.ssp_sensor_data, %struct.ssp_sensor_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %47, i32 %50, i32 %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %46, %19
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.ssp_sensor_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
