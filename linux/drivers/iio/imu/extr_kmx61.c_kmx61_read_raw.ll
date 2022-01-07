; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.kmx61_data = type { i64, i32 }

@KMX61_ACC_XOUT_L = common dso_local global i32 0, align 4
@KMX61_MAG_XOUT_L = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@kmx61_uscale_table = common dso_local global i32* null, align 8
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @kmx61_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmx61_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.kmx61_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.kmx61_data* @kmx61_get_data(%struct.iio_dev* %15)
  store %struct.kmx61_data* %16, %struct.kmx61_data** %14, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %147 [
    i64 131, label %18
    i64 129, label %92
    i64 130, label %113
  ]

18:                                               ; preds = %5
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %20 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %26 [
    i32 132, label %22
    i32 128, label %24
  ]

22:                                               ; preds = %18
  %23 = load i32, i32* @KMX61_ACC_XOUT_L, align 4
  store i32 %23, i32* %13, align 4
  br label %29

24:                                               ; preds = %18
  %25 = load i32, i32* @KMX61_MAG_XOUT_L, align 4
  store i32 %25, i32* %13, align 4
  br label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %150

29:                                               ; preds = %24, %22
  %30 = load %struct.kmx61_data*, %struct.kmx61_data** %14, align 8
  %31 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %30, i32 0, i32 1
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.kmx61_data*, %struct.kmx61_data** %14, align 8
  %34 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %35 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @kmx61_set_power_state(%struct.kmx61_data* %33, i32 1, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %29
  %41 = load %struct.kmx61_data*, %struct.kmx61_data** %14, align 8
  %42 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %6, align 4
  br label %150

45:                                               ; preds = %29
  %46 = load %struct.kmx61_data*, %struct.kmx61_data** %14, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %49 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @kmx61_read_measurement(%struct.kmx61_data* %46, i32 %47, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %45
  %55 = load %struct.kmx61_data*, %struct.kmx61_data** %14, align 8
  %56 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %57 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @kmx61_set_power_state(%struct.kmx61_data* %55, i32 0, i32 %58)
  %60 = load %struct.kmx61_data*, %struct.kmx61_data** %14, align 8
  %61 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %6, align 4
  br label %150

64:                                               ; preds = %45
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %67 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %65, %69
  %71 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %72 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 1
  %76 = call i32 @sign_extend32(i32 %70, i32 %75)
  %77 = load i32*, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  %78 = load %struct.kmx61_data*, %struct.kmx61_data** %14, align 8
  %79 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %80 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @kmx61_set_power_state(%struct.kmx61_data* %78, i32 0, i32 %81)
  store i32 %82, i32* %12, align 4
  %83 = load %struct.kmx61_data*, %struct.kmx61_data** %14, align 8
  %84 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %83, i32 0, i32 1
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %64
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %6, align 4
  br label %150

90:                                               ; preds = %64
  %91 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %91, i32* %6, align 4
  br label %150

92:                                               ; preds = %5
  %93 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %94 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  switch i32 %95, label %110 [
    i32 132, label %96
    i32 128, label %106
  ]

96:                                               ; preds = %92
  %97 = load i32*, i32** %9, align 8
  store i32 0, i32* %97, align 4
  %98 = load i32*, i32** @kmx61_uscale_table, align 8
  %99 = load %struct.kmx61_data*, %struct.kmx61_data** %14, align 8
  %100 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %10, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %105, i32* %6, align 4
  br label %150

106:                                              ; preds = %92
  %107 = load i32*, i32** %9, align 8
  store i32 0, i32* %107, align 4
  %108 = load i32*, i32** %10, align 8
  store i32 1465, i32* %108, align 4
  %109 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %109, i32* %6, align 4
  br label %150

110:                                              ; preds = %92
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %6, align 4
  br label %150

113:                                              ; preds = %5
  %114 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %115 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 132
  br i1 %117, label %118, label %126

118:                                              ; preds = %113
  %119 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %120 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 128
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %6, align 4
  br label %150

126:                                              ; preds = %118, %113
  %127 = load %struct.kmx61_data*, %struct.kmx61_data** %14, align 8
  %128 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %127, i32 0, i32 1
  %129 = call i32 @mutex_lock(i32* %128)
  %130 = load %struct.kmx61_data*, %struct.kmx61_data** %14, align 8
  %131 = load i32*, i32** %9, align 8
  %132 = load i32*, i32** %10, align 8
  %133 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %134 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @kmx61_get_odr(%struct.kmx61_data* %130, i32* %131, i32* %132, i32 %135)
  store i32 %136, i32* %12, align 4
  %137 = load %struct.kmx61_data*, %struct.kmx61_data** %14, align 8
  %138 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %137, i32 0, i32 1
  %139 = call i32 @mutex_unlock(i32* %138)
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %126
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %6, align 4
  br label %150

145:                                              ; preds = %126
  %146 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %146, i32* %6, align 4
  br label %150

147:                                              ; preds = %5
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %6, align 4
  br label %150

150:                                              ; preds = %147, %145, %142, %123, %110, %106, %96, %90, %88, %54, %40, %26
  %151 = load i32, i32* %6, align 4
  ret i32 %151
}

declare dso_local %struct.kmx61_data* @kmx61_get_data(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kmx61_set_power_state(%struct.kmx61_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kmx61_read_measurement(%struct.kmx61_data*, i32, i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @kmx61_get_odr(%struct.kmx61_data*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
