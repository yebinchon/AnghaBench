; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2583.c_tsl2583_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2583.c_tsl2583_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.tsl2583_chip = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IIO_LIGHT = common dso_local global i32 0, align 4
@gainadj = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @tsl2583_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2583_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.tsl2583_chip*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.tsl2583_chip* @iio_priv(%struct.iio_dev* %15)
  store %struct.tsl2583_chip* %16, %struct.tsl2583_chip** %12, align 8
  %17 = load %struct.tsl2583_chip*, %struct.tsl2583_chip** %12, align 8
  %18 = call i32 @tsl2583_set_pm_runtime_busy(%struct.tsl2583_chip* %17, i32 1)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %6, align 4
  br label %121

23:                                               ; preds = %5
  %24 = load %struct.tsl2583_chip*, %struct.tsl2583_chip** %12, align 8
  %25 = getelementptr inbounds %struct.tsl2583_chip, %struct.tsl2583_chip* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %13, align 4
  %29 = load i64, i64* %11, align 8
  switch i64 %29, label %103 [
    i64 130, label %30
    i64 129, label %42
    i64 128, label %76
  ]

30:                                               ; preds = %23
  %31 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %32 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IIO_LIGHT, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.tsl2583_chip*, %struct.tsl2583_chip** %12, align 8
  %39 = getelementptr inbounds %struct.tsl2583_chip, %struct.tsl2583_chip* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %36, %30
  br label %104

42:                                               ; preds = %23
  %43 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %44 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IIO_LIGHT, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %42
  store i32 0, i32* %14, align 4
  br label %49

49:                                               ; preds = %71, %48
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gainadj, align 8
  %52 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %51)
  %53 = icmp ult i32 %50, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %49
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gainadj, align 8
  %56 = load i32, i32* %14, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %54
  %64 = load i32, i32* %14, align 4
  %65 = load %struct.tsl2583_chip*, %struct.tsl2583_chip** %12, align 8
  %66 = getelementptr inbounds %struct.tsl2583_chip, %struct.tsl2583_chip* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load %struct.tsl2583_chip*, %struct.tsl2583_chip** %12, align 8
  %69 = call i32 @tsl2583_set_als_gain(%struct.tsl2583_chip* %68)
  store i32 %69, i32* %13, align 4
  br label %74

70:                                               ; preds = %54
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %14, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %14, align 4
  br label %49

74:                                               ; preds = %63, %49
  br label %75

75:                                               ; preds = %74, %42
  br label %104

76:                                               ; preds = %23
  %77 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %78 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IIO_LIGHT, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %76
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %102, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %10, align 4
  %87 = icmp sge i32 %86, 50
  br i1 %87, label %88, label %102

88:                                               ; preds = %85
  %89 = load i32, i32* %10, align 4
  %90 = icmp sle i32 %89, 650
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load i32, i32* %10, align 4
  %93 = srem i32 %92, 50
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.tsl2583_chip*, %struct.tsl2583_chip** %12, align 8
  %98 = getelementptr inbounds %struct.tsl2583_chip, %struct.tsl2583_chip* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 4
  %100 = load %struct.tsl2583_chip*, %struct.tsl2583_chip** %12, align 8
  %101 = call i32 @tsl2583_set_als_time(%struct.tsl2583_chip* %100)
  store i32 %101, i32* %13, align 4
  br label %102

102:                                              ; preds = %95, %91, %88, %85, %82, %76
  br label %104

103:                                              ; preds = %23
  br label %104

104:                                              ; preds = %103, %102, %75, %41
  %105 = load %struct.tsl2583_chip*, %struct.tsl2583_chip** %12, align 8
  %106 = getelementptr inbounds %struct.tsl2583_chip, %struct.tsl2583_chip* %105, i32 0, i32 0
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i32, i32* %13, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* %13, align 4
  store i32 %111, i32* %6, align 4
  br label %121

112:                                              ; preds = %104
  %113 = load %struct.tsl2583_chip*, %struct.tsl2583_chip** %12, align 8
  %114 = call i32 @tsl2583_set_pm_runtime_busy(%struct.tsl2583_chip* %113, i32 0)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %6, align 4
  br label %121

119:                                              ; preds = %112
  %120 = load i32, i32* %13, align 4
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %119, %117, %110, %21
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local %struct.tsl2583_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @tsl2583_set_pm_runtime_busy(%struct.tsl2583_chip*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @tsl2583_set_als_gain(%struct.tsl2583_chip*) #1

declare dso_local i32 @tsl2583_set_als_time(%struct.tsl2583_chip*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
