; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_set_filter_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_set_filter_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.adis16480 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@ad16480_filter_data = common dso_local global i32** null, align 8
@adis16480_def_filter_freqs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32)* @adis16480_set_filter_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16480_set_filter_freq(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.adis16480*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %19 = call %struct.adis16480* @iio_priv(%struct.iio_dev* %18)
  store %struct.adis16480* %19, %struct.adis16480** %8, align 8
  %20 = load i32**, i32*** @ad16480_filter_data, align 8
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32*, i32** %20, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32**, i32*** @ad16480_filter_data, align 8
  %29 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %30 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32*, i32** %28, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = add i32 %36, 2
  %38 = call i32 @BIT(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.adis16480*, %struct.adis16480** %8, align 8
  %40 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %39, i32 0, i32 0
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @adis_read_reg_16(i32* %40, i32 %41, i32* %16)
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %3
  %46 = load i32, i32* %17, align 4
  store i32 %46, i32* %4, align 4
  br label %123

47:                                               ; preds = %3
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %16, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %16, align 4
  br label %117

55:                                               ; preds = %47
  store i32 0, i32* %15, align 4
  %56 = load %struct.adis16480*, %struct.adis16480** %8, align 8
  %57 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %63

63:                                               ; preds = %100, %55
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @adis16480_def_filter_freqs, align 4
  %66 = call i32 @ARRAY_SIZE(i32 %65)
  %67 = icmp ult i32 %64, %66
  br i1 %67, label %68, label %103

68:                                               ; preds = %63
  %69 = load %struct.adis16480*, %struct.adis16480** %8, align 8
  %70 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp uge i32 %77, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %68
  %81 = load %struct.adis16480*, %struct.adis16480** %8, align 8
  %82 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %7, align 4
  %91 = sub i32 %89, %90
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %80
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %15, align 4
  br label %98

98:                                               ; preds = %95, %80
  br label %99

99:                                               ; preds = %98, %68
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %14, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %14, align 4
  br label %63

103:                                              ; preds = %63
  %104 = load i32, i32* %10, align 4
  %105 = shl i32 3, %104
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %16, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %10, align 4
  %111 = shl i32 %109, %110
  %112 = load i32, i32* %16, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %16, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %16, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %16, align 4
  br label %117

117:                                              ; preds = %103, %50
  %118 = load %struct.adis16480*, %struct.adis16480** %8, align 8
  %119 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %118, i32 0, i32 0
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %16, align 4
  %122 = call i32 @adis_write_reg_16(i32* %119, i32 %120, i32 %121)
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %117, %45
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local %struct.adis16480* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @adis_read_reg_16(i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @adis_write_reg_16(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
