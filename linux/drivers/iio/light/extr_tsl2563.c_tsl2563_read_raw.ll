; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2563.c_tsl2563_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2563.c_tsl2563_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.tsl2563_chip = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_MOD_LIGHT_BOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @tsl2563_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2563_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tsl2563_chip*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %11, align 4
  %17 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %18 = call %struct.tsl2563_chip* @iio_priv(%struct.iio_dev* %17)
  store %struct.tsl2563_chip* %18, %struct.tsl2563_chip** %14, align 8
  %19 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %14, align 8
  %20 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %19, i32 0, i32 3
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i64, i64* %10, align 8
  switch i64 %22, label %107 [
    i64 130, label %23
    i64 131, label %23
    i64 132, label %87
  ]

23:                                               ; preds = %5, %5
  %24 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %25 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %85 [
    i32 128, label %27
    i32 129, label %61
  ]

27:                                               ; preds = %23
  %28 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %14, align 8
  %29 = call i32 @tsl2563_get_adc(%struct.tsl2563_chip* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %111

33:                                               ; preds = %27
  %34 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %14, align 8
  %35 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %14, align 8
  %38 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @tsl2563_calib_adc(i32 %36, i32 %39)
  %41 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %14, align 8
  %42 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  store i32 %44, i32* %12, align 4
  %45 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %14, align 8
  %46 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %14, align 8
  %49 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @tsl2563_calib_adc(i32 %47, i32 %50)
  %52 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %14, align 8
  %53 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %51, %54
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @tsl2563_adc_to_lux(i32 %56, i32 %57)
  %59 = load i32*, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %60, i32* %11, align 4
  br label %86

61:                                               ; preds = %23
  %62 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %14, align 8
  %63 = call i32 @tsl2563_get_adc(%struct.tsl2563_chip* %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %111

67:                                               ; preds = %61
  %68 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %69 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @IIO_MOD_LIGHT_BOTH, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %14, align 8
  %75 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %8, align 8
  store i32 %76, i32* %77, align 4
  br label %83

78:                                               ; preds = %67
  %79 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %14, align 8
  %80 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %8, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %78, %73
  %84 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %84, i32* %11, align 4
  br label %86

85:                                               ; preds = %23
  br label %86

86:                                               ; preds = %85, %83, %33
  br label %110

87:                                               ; preds = %5
  %88 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %89 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @IIO_MOD_LIGHT_BOTH, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %14, align 8
  %95 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @tsl2563_calib_to_sysfs(i32 %96)
  %98 = load i32*, i32** %8, align 8
  store i32 %97, i32* %98, align 4
  br label %105

99:                                               ; preds = %87
  %100 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %14, align 8
  %101 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @tsl2563_calib_to_sysfs(i32 %102)
  %104 = load i32*, i32** %8, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %99, %93
  %106 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %106, i32* %11, align 4
  br label %110

107:                                              ; preds = %5
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %11, align 4
  br label %111

110:                                              ; preds = %105, %86
  br label %111

111:                                              ; preds = %110, %107, %66, %32
  %112 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %14, align 8
  %113 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %112, i32 0, i32 3
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load i32, i32* %11, align 4
  ret i32 %115
}

declare dso_local %struct.tsl2563_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tsl2563_get_adc(%struct.tsl2563_chip*) #1

declare dso_local i32 @tsl2563_calib_adc(i32, i32) #1

declare dso_local i32 @tsl2563_adc_to_lux(i32, i32) #1

declare dso_local i32 @tsl2563_calib_to_sysfs(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
