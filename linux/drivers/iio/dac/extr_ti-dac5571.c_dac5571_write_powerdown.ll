; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac5571.c_dac5571_write_powerdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac5571.c_dac5571_write_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.dac5571_data = type { i32, i32 (%struct.dac5571_data*, i32, i32)*, i32 (%struct.dac5571_data*, i32, i32)*, i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64, %struct.iio_chan_spec*, i8*, i64)* @dac5571_write_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac5571_write_powerdown(%struct.iio_dev* %0, i64 %1, %struct.iio_chan_spec* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dac5571_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.dac5571_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.dac5571_data* %16, %struct.dac5571_data** %12, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = call i32 @strtobool(i8* %17, i32* %13)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %6, align 4
  br label %87

23:                                               ; preds = %5
  %24 = load %struct.dac5571_data*, %struct.dac5571_data** %12, align 8
  %25 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %13, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i64, i64* %11, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %6, align 4
  br label %87

32:                                               ; preds = %23
  %33 = load %struct.dac5571_data*, %struct.dac5571_data** %12, align 8
  %34 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %33, i32 0, i32 3
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load %struct.dac5571_data*, %struct.dac5571_data** %12, align 8
  %40 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %39, i32 0, i32 1
  %41 = load i32 (%struct.dac5571_data*, i32, i32)*, i32 (%struct.dac5571_data*, i32, i32)** %40, align 8
  %42 = load %struct.dac5571_data*, %struct.dac5571_data** %12, align 8
  %43 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %44 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dac5571_data*, %struct.dac5571_data** %12, align 8
  %47 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @DAC5571_POWERDOWN(i32 %48)
  %50 = call i32 %41(%struct.dac5571_data* %42, i32 %45, i32 %49)
  store i32 %50, i32* %14, align 4
  br label %65

51:                                               ; preds = %32
  %52 = load %struct.dac5571_data*, %struct.dac5571_data** %12, align 8
  %53 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %52, i32 0, i32 2
  %54 = load i32 (%struct.dac5571_data*, i32, i32)*, i32 (%struct.dac5571_data*, i32, i32)** %53, align 8
  %55 = load %struct.dac5571_data*, %struct.dac5571_data** %12, align 8
  %56 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %57 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dac5571_data*, %struct.dac5571_data** %12, align 8
  %60 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 %54(%struct.dac5571_data* %55, i32 %58, i32 %63)
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %51, %38
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %73

69:                                               ; preds = %65
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.dac5571_data*, %struct.dac5571_data** %12, align 8
  %72 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %69, %68
  %74 = load %struct.dac5571_data*, %struct.dac5571_data** %12, align 8
  %75 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %74, i32 0, i32 3
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  br label %84

82:                                               ; preds = %73
  %83 = load i64, i64* %11, align 8
  br label %84

84:                                               ; preds = %82, %79
  %85 = phi i64 [ %81, %79 ], [ %83, %82 ]
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %84, %29, %21
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local %struct.dac5571_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @strtobool(i8*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DAC5571_POWERDOWN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
