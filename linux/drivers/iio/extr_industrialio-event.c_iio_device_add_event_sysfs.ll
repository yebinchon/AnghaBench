; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-event.c_iio_device_add_event_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-event.c_iio_device_add_event_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@IIO_SEPARATE = common dso_local global i32 0, align 4
@IIO_SHARED_BY_TYPE = common dso_local global i32 0, align 4
@IIO_SHARED_BY_DIR = common dso_local global i32 0, align 4
@IIO_SHARED_BY_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*)* @iio_device_add_event_sysfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_device_add_event_sysfs(%struct.iio_dev* %0, %struct.iio_chan_spec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.iio_chan_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %122, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %14 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %125

17:                                               ; preds = %11
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %19 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %27 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %35 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @IIO_SEPARATE, align 4
  %40 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %41 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 5
  %47 = call i32 @iio_device_add_event(%struct.iio_dev* %34, %struct.iio_chan_spec* %35, i32 %36, i32 %37, i32 %38, i32 %39, i32* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %17
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %128

52:                                               ; preds = %17
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %57 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @IIO_SHARED_BY_TYPE, align 4
  %62 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %63 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  %69 = call i32 @iio_device_add_event(%struct.iio_dev* %56, %struct.iio_chan_spec* %57, i32 %58, i32 %59, i32 %60, i32 %61, i32* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %52
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %128

74:                                               ; preds = %52
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %79 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @IIO_SHARED_BY_DIR, align 4
  %84 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %85 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  %91 = call i32 @iio_device_add_event(%struct.iio_dev* %78, %struct.iio_chan_spec* %79, i32 %80, i32 %81, i32 %82, i32 %83, i32* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %74
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %3, align 4
  br label %128

96:                                               ; preds = %74
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %8, align 4
  %100 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %101 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @IIO_SHARED_BY_ALL, align 4
  %106 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %107 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = call i32 @iio_device_add_event(%struct.iio_dev* %100, %struct.iio_chan_spec* %101, i32 %102, i32 %103, i32 %104, i32 %105, i32* %112)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %96
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* %3, align 4
  br label %128

118:                                              ; preds = %96
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %11

125:                                              ; preds = %11
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %125, %116, %94, %72, %50
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @iio_device_add_event(%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
