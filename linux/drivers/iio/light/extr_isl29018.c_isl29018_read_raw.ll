; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29018.c_isl29018_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29018.c_isl29018_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.isl29018_chip = type { i64, i64, i32, i32, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@isl29018_int_utimes = common dso_local global i32** null, align 8
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @isl29018_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29018_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.isl29018_chip*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %11, align 4
  %15 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %16 = call %struct.isl29018_chip* @iio_priv(%struct.iio_dev* %15)
  store %struct.isl29018_chip* %16, %struct.isl29018_chip** %12, align 8
  %17 = load %struct.isl29018_chip*, %struct.isl29018_chip** %12, align 8
  %18 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %17, i32 0, i32 4
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.isl29018_chip*, %struct.isl29018_chip** %12, align 8
  %21 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %11, align 4
  br label %112

27:                                               ; preds = %5
  %28 = load i64, i64* %10, align 8
  switch i64 %28, label %110 [
    i64 132, label %29
    i64 133, label %29
    i64 134, label %55
    i64 131, label %76
    i64 135, label %94
  ]

29:                                               ; preds = %27, %27
  %30 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %31 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %48 [
    i32 129, label %33
    i32 130, label %37
    i32 128, label %41
  ]

33:                                               ; preds = %29
  %34 = load %struct.isl29018_chip*, %struct.isl29018_chip** %12, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @isl29018_read_lux(%struct.isl29018_chip* %34, i32* %35)
  store i32 %36, i32* %11, align 4
  br label %49

37:                                               ; preds = %29
  %38 = load %struct.isl29018_chip*, %struct.isl29018_chip** %12, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @isl29018_read_ir(%struct.isl29018_chip* %38, i32* %39)
  store i32 %40, i32* %11, align 4
  br label %49

41:                                               ; preds = %29
  %42 = load %struct.isl29018_chip*, %struct.isl29018_chip** %12, align 8
  %43 = load %struct.isl29018_chip*, %struct.isl29018_chip** %12, align 8
  %44 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @isl29018_read_proximity_ir(%struct.isl29018_chip* %42, i32 %45, i32* %46)
  store i32 %47, i32* %11, align 4
  br label %49

48:                                               ; preds = %29
  br label %49

49:                                               ; preds = %48, %41, %37, %33
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %52, %49
  br label %111

55:                                               ; preds = %27
  %56 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %57 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 129
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load i32*, i32** %8, align 8
  store i32 0, i32* %61, align 4
  %62 = load i32**, i32*** @isl29018_int_utimes, align 8
  %63 = load %struct.isl29018_chip*, %struct.isl29018_chip** %12, align 8
  %64 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32*, i32** %62, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.isl29018_chip*, %struct.isl29018_chip** %12, align 8
  %69 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %60, %55
  br label %111

76:                                               ; preds = %27
  %77 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %78 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 129
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load %struct.isl29018_chip*, %struct.isl29018_chip** %12, align 8
  %83 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %8, align 8
  store i32 %85, i32* %86, align 4
  %87 = load %struct.isl29018_chip*, %struct.isl29018_chip** %12, align 8
  %88 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %9, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %81, %76
  br label %111

94:                                               ; preds = %27
  %95 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %96 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 129
  br i1 %98, label %99, label %109

99:                                               ; preds = %94
  %100 = load %struct.isl29018_chip*, %struct.isl29018_chip** %12, align 8
  %101 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32*, i32** %8, align 8
  store i32 %102, i32* %103, align 4
  %104 = load %struct.isl29018_chip*, %struct.isl29018_chip** %12, align 8
  %105 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %9, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %99, %94
  br label %111

110:                                              ; preds = %27
  br label %111

111:                                              ; preds = %110, %109, %93, %75, %54
  br label %112

112:                                              ; preds = %111, %24
  %113 = load %struct.isl29018_chip*, %struct.isl29018_chip** %12, align 8
  %114 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %113, i32 0, i32 4
  %115 = call i32 @mutex_unlock(i32* %114)
  %116 = load i32, i32* %11, align 4
  ret i32 %116
}

declare dso_local %struct.isl29018_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @isl29018_read_lux(%struct.isl29018_chip*, i32*) #1

declare dso_local i32 @isl29018_read_ir(%struct.isl29018_chip*, i32*) #1

declare dso_local i32 @isl29018_read_proximity_ir(%struct.isl29018_chip*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
