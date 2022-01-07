; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-buffer.c_iio_buffer_add_channel_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-buffer.c_iio_buffer_add_channel_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, %struct.iio_buffer* }
%struct.iio_buffer = type { i32 }
%struct.iio_chan_spec = type { i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"index\00", align 1
@iio_show_scan_index = common dso_local global i32 0, align 4
@IIO_SEPARATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@iio_show_fixed_type = common dso_local global i32 0, align 4
@IIO_TIMESTAMP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@iio_scan_el_show = common dso_local global i32 0, align 4
@iio_scan_el_store = common dso_local global i32 0, align 4
@iio_scan_el_ts_show = common dso_local global i32 0, align 4
@iio_scan_el_ts_store = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*)* @iio_buffer_add_channel_sysfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_buffer_add_channel_sysfs(%struct.iio_dev* %0, %struct.iio_chan_spec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.iio_chan_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iio_buffer*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %9, i32 0, i32 1
  %11 = load %struct.iio_buffer*, %struct.iio_buffer** %10, align 8
  store %struct.iio_buffer* %11, %struct.iio_buffer** %8, align 8
  %12 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %13 = load i32, i32* @IIO_SEPARATE, align 4
  %14 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %15 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %14, i32 0, i32 0
  %16 = load %struct.iio_buffer*, %struct.iio_buffer** %8, align 8
  %17 = getelementptr inbounds %struct.iio_buffer, %struct.iio_buffer* %16, i32 0, i32 0
  %18 = call i32 @__iio_add_chan_devattr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.iio_chan_spec* %12, i32* @iio_show_scan_index, i32* null, i32 0, i32 %13, i32* %15, i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %74

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %27 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %28 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %27, i32 0, i32 0
  %29 = load %struct.iio_buffer*, %struct.iio_buffer** %8, align 8
  %30 = getelementptr inbounds %struct.iio_buffer, %struct.iio_buffer* %29, i32 0, i32 0
  %31 = call i32 @__iio_add_chan_devattr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.iio_chan_spec* %26, i32* @iio_show_fixed_type, i32* null, i32 0, i32 0, i32* %28, i32* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %74

36:                                               ; preds = %23
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  %39 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %40 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IIO_TIMESTAMP, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %36
  %45 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %46 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %47 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 0
  %51 = load %struct.iio_buffer*, %struct.iio_buffer** %8, align 8
  %52 = getelementptr inbounds %struct.iio_buffer, %struct.iio_buffer* %51, i32 0, i32 0
  %53 = call i32 @__iio_add_chan_devattr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.iio_chan_spec* %45, i32* @iio_scan_el_show, i32* @iio_scan_el_store, i32 %48, i32 0, i32* %50, i32* %52)
  store i32 %53, i32* %6, align 4
  br label %64

54:                                               ; preds = %36
  %55 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %56 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %57 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 0
  %61 = load %struct.iio_buffer*, %struct.iio_buffer** %8, align 8
  %62 = getelementptr inbounds %struct.iio_buffer, %struct.iio_buffer* %61, i32 0, i32 0
  %63 = call i32 @__iio_add_chan_devattr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.iio_chan_spec* %55, i32* @iio_scan_el_ts_show, i32* @iio_scan_el_ts_store, i32 %58, i32 0, i32* %60, i32* %62)
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %54, %44
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %74

69:                                               ; preds = %64
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %69, %67, %34, %21
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @__iio_add_chan_devattr(i8*, %struct.iio_chan_spec*, i32*, i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
