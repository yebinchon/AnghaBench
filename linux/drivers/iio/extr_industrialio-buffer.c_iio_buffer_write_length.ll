; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-buffer.c_iio_buffer_write_length.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-buffer.c_iio_buffer_write_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32, %struct.iio_buffer* }
%struct.iio_buffer = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.iio_buffer*, i32)* }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @iio_buffer_write_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_buffer_write_length(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.iio_buffer*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %14)
  store %struct.iio_dev* %15, %struct.iio_dev** %10, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %17 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %16, i32 0, i32 1
  %18 = load %struct.iio_buffer*, %struct.iio_buffer** %17, align 8
  store %struct.iio_buffer* %18, %struct.iio_buffer** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @kstrtouint(i8* %19, i32 10, i32* %12)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %5, align 4
  br label %93

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.iio_buffer*, %struct.iio_buffer** %11, align 8
  %28 = getelementptr inbounds %struct.iio_buffer, %struct.iio_buffer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i64, i64* %9, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %5, align 4
  br label %93

34:                                               ; preds = %25
  %35 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %36 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 1
  %40 = load %struct.iio_buffer*, %struct.iio_buffer** %39, align 8
  %41 = call i64 @iio_buffer_is_active(%struct.iio_buffer* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %13, align 4
  br label %55

46:                                               ; preds = %34
  %47 = load %struct.iio_buffer*, %struct.iio_buffer** %11, align 8
  %48 = getelementptr inbounds %struct.iio_buffer, %struct.iio_buffer* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (%struct.iio_buffer*, i32)*, i32 (%struct.iio_buffer*, i32)** %50, align 8
  %52 = load %struct.iio_buffer*, %struct.iio_buffer** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 %51(%struct.iio_buffer* %52, i32 %53)
  store i32 0, i32* %13, align 4
  br label %55

55:                                               ; preds = %46, %43
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %79

59:                                               ; preds = %55
  %60 = load %struct.iio_buffer*, %struct.iio_buffer** %11, align 8
  %61 = getelementptr inbounds %struct.iio_buffer, %struct.iio_buffer* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %59
  %65 = load %struct.iio_buffer*, %struct.iio_buffer** %11, align 8
  %66 = getelementptr inbounds %struct.iio_buffer, %struct.iio_buffer* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.iio_buffer*, %struct.iio_buffer** %11, align 8
  %69 = getelementptr inbounds %struct.iio_buffer, %struct.iio_buffer* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ult i32 %67, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load %struct.iio_buffer*, %struct.iio_buffer** %11, align 8
  %74 = getelementptr inbounds %struct.iio_buffer, %struct.iio_buffer* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.iio_buffer*, %struct.iio_buffer** %11, align 8
  %77 = getelementptr inbounds %struct.iio_buffer, %struct.iio_buffer* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %72, %64, %59
  br label %79

79:                                               ; preds = %78, %58
  %80 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %81 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  br label %90

88:                                               ; preds = %79
  %89 = load i64, i64* %9, align 8
  br label %90

90:                                               ; preds = %88, %85
  %91 = phi i64 [ %87, %85 ], [ %89, %88 ]
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %90, %31, %23
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @iio_buffer_is_active(%struct.iio_buffer*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
