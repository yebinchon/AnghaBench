; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2583.c_tsl2583_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2583.c_tsl2583_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.tsl2583_chip = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IIO_LIGHT = common dso_local global i32 0, align 4
@IIO_MOD_LIGHT_BOTH = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@gainadj = common dso_local global %struct.TYPE_6__* null, align 8
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @tsl2583_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2583_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tsl2583_chip*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
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
  br label %146

23:                                               ; preds = %5
  %24 = load %struct.tsl2583_chip*, %struct.tsl2583_chip** %12, align 8
  %25 = getelementptr inbounds %struct.tsl2583_chip, %struct.tsl2583_chip* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %13, align 4
  %29 = load i64, i64* %11, align 8
  switch i64 %29, label %127 [
    i64 128, label %30
    i64 129, label %63
    i64 132, label %80
    i64 131, label %94
    i64 130, label %112
  ]

30:                                               ; preds = %23
  %31 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %32 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IIO_LIGHT, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %30
  %37 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %38 = call i32 @tsl2583_get_lux(%struct.iio_dev* %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %129

42:                                               ; preds = %36
  %43 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %44 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IIO_MOD_LIGHT_BOTH, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.tsl2583_chip*, %struct.tsl2583_chip** %12, align 8
  %50 = getelementptr inbounds %struct.tsl2583_chip, %struct.tsl2583_chip* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  br label %60

54:                                               ; preds = %42
  %55 = load %struct.tsl2583_chip*, %struct.tsl2583_chip** %12, align 8
  %56 = getelementptr inbounds %struct.tsl2583_chip, %struct.tsl2583_chip* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %48
  %61 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %60, %30
  br label %128

63:                                               ; preds = %23
  %64 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %65 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IIO_LIGHT, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %71 = call i32 @tsl2583_get_lux(%struct.iio_dev* %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %129

75:                                               ; preds = %69
  %76 = load i32, i32* %13, align 4
  %77 = load i32*, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %75, %63
  br label %128

80:                                               ; preds = %23
  %81 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %82 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IIO_LIGHT, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load %struct.tsl2583_chip*, %struct.tsl2583_chip** %12, align 8
  %88 = getelementptr inbounds %struct.tsl2583_chip, %struct.tsl2583_chip* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32*, i32** %9, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %86, %80
  br label %128

94:                                               ; preds = %23
  %95 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %96 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @IIO_LIGHT, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %94
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gainadj, align 8
  %102 = load %struct.tsl2583_chip*, %struct.tsl2583_chip** %12, align 8
  %103 = getelementptr inbounds %struct.tsl2583_chip, %struct.tsl2583_chip* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %9, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %100, %94
  br label %128

112:                                              ; preds = %23
  %113 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %114 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @IIO_LIGHT, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %112
  %119 = load i32*, i32** %9, align 8
  store i32 0, i32* %119, align 4
  %120 = load %struct.tsl2583_chip*, %struct.tsl2583_chip** %12, align 8
  %121 = getelementptr inbounds %struct.tsl2583_chip, %struct.tsl2583_chip* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32*, i32** %10, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %125, i32* %13, align 4
  br label %126

126:                                              ; preds = %118, %112
  br label %128

127:                                              ; preds = %23
  br label %128

128:                                              ; preds = %127, %126, %111, %93, %79, %62
  br label %129

129:                                              ; preds = %128, %74, %41
  %130 = load %struct.tsl2583_chip*, %struct.tsl2583_chip** %12, align 8
  %131 = getelementptr inbounds %struct.tsl2583_chip, %struct.tsl2583_chip* %130, i32 0, i32 0
  %132 = call i32 @mutex_unlock(i32* %131)
  %133 = load i32, i32* %13, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i32, i32* %13, align 4
  store i32 %136, i32* %6, align 4
  br label %146

137:                                              ; preds = %129
  %138 = load %struct.tsl2583_chip*, %struct.tsl2583_chip** %12, align 8
  %139 = call i32 @tsl2583_set_pm_runtime_busy(%struct.tsl2583_chip* %138, i32 0)
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = load i32, i32* %14, align 4
  store i32 %143, i32* %6, align 4
  br label %146

144:                                              ; preds = %137
  %145 = load i32, i32* %13, align 4
  store i32 %145, i32* %6, align 4
  br label %146

146:                                              ; preds = %144, %142, %135, %21
  %147 = load i32, i32* %6, align 4
  ret i32 %147
}

declare dso_local %struct.tsl2583_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @tsl2583_set_pm_runtime_busy(%struct.tsl2583_chip*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tsl2583_get_lux(%struct.iio_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
