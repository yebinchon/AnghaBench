; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ina2xx-adc.c_ina2xx_capture_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ina2xx-adc.c_ina2xx_capture_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ina2xx_chip_info = type { i32 }
%struct.timespec64 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ina2xx_capture_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina2xx_capture_thread(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.ina2xx_chip_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timespec64, align 4
  %9 = alloca %struct.timespec64, align 4
  %10 = alloca %struct.timespec64, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.timespec64, align 4
  store i8* %0, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.iio_dev*
  store %struct.iio_dev* %14, %struct.iio_dev** %4, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %16 = call %struct.ina2xx_chip_info* @iio_priv(%struct.iio_dev* %15)
  store %struct.ina2xx_chip_info* %16, %struct.ina2xx_chip_info** %5, align 8
  %17 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %5, align 8
  %18 = call i32 @SAMPLING_PERIOD(%struct.ina2xx_chip_info* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %5, align 8
  %20 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %24, 200
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %23, %1
  %27 = call i32 @ktime_get_ts64(%struct.timespec64* %8)
  br label %28

28:                                               ; preds = %81, %26
  br label %29

29:                                               ; preds = %48, %28
  %30 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %5, align 8
  %31 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %37 = call i32 @ina2xx_conversion_ready(%struct.iio_dev* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %86

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 @ktime_get_ts64(%struct.timespec64* %8)
  br label %48

47:                                               ; preds = %42
  br label %49

48:                                               ; preds = %45
  br label %29

49:                                               ; preds = %47, %29
  %50 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %51 = call i32 @ina2xx_work_buffer(%struct.iio_dev* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %86

56:                                               ; preds = %49
  %57 = call i32 @ktime_get_ts64(%struct.timespec64* %9)
  br label %58

58:                                               ; preds = %72, %56
  %59 = load i32, i32* %6, align 4
  %60 = mul nsw i32 1000, %59
  %61 = call i32 @timespec64_add_ns(%struct.timespec64* %8, i32 %60)
  %62 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %8, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %9, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @timespec64_sub(i32 %63, i32 %65)
  %67 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %12, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = bitcast %struct.timespec64* %10 to i8*
  %69 = bitcast %struct.timespec64* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 %69, i64 4, i1 false)
  %70 = call i32 @timespec64_to_ns(%struct.timespec64* %10)
  %71 = call i32 @div_s64(i32 %70, i32 1000)
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %58
  %73 = load i32, i32* %11, align 4
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %58, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = mul nsw i32 %77, 3
  %79 = ashr i32 %78, 1
  %80 = call i32 @usleep_range(i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %75
  %82 = call i32 (...) @kthread_should_stop()
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  br i1 %84, label %28, label %85

85:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %54, %40
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.ina2xx_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @SAMPLING_PERIOD(%struct.ina2xx_chip_info*) #1

declare dso_local i32 @ktime_get_ts64(%struct.timespec64*) #1

declare dso_local i32 @ina2xx_conversion_ready(%struct.iio_dev*) #1

declare dso_local i32 @ina2xx_work_buffer(%struct.iio_dev*) #1

declare dso_local i32 @timespec64_add_ns(%struct.timespec64*, i32) #1

declare dso_local i32 @timespec64_sub(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @div_s64(i32, i32) #1

declare dso_local i32 @timespec64_to_ns(%struct.timespec64*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @kthread_should_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
