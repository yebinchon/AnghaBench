; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32 }
%struct.sca3000_state = type { i32*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@IIO_ACCEL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@sca3000_addresses = common dso_local global i32** null, align 8
@SCA3000_REG_TEMP_MSB_ADDR = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @sca3000_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sca3000_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.sca3000_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.sca3000_state* %16, %struct.sca3000_state** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %154 [
    i64 130, label %18
    i64 128, label %103
    i64 131, label %121
    i64 129, label %125
    i64 132, label %143
  ]

18:                                               ; preds = %5
  %19 = load %struct.sca3000_state*, %struct.sca3000_state** %12, align 8
  %20 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IIO_ACCEL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %70

27:                                               ; preds = %18
  %28 = load %struct.sca3000_state*, %struct.sca3000_state** %12, align 8
  %29 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.sca3000_state*, %struct.sca3000_state** %12, align 8
  %34 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %33, i32 0, i32 1
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %157

38:                                               ; preds = %27
  %39 = load i32**, i32*** @sca3000_addresses, align 8
  %40 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %41 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32*, i32** %39, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %14, align 4
  %47 = load %struct.sca3000_state*, %struct.sca3000_state** %12, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @sca3000_read_data_short(%struct.sca3000_state* %47, i32 %48, i32 2)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %38
  %53 = load %struct.sca3000_state*, %struct.sca3000_state** %12, align 8
  %54 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %6, align 4
  br label %157

57:                                               ; preds = %38
  %58 = load %struct.sca3000_state*, %struct.sca3000_state** %12, align 8
  %59 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @be16_to_cpup(i32* %60)
  %62 = ashr i32 %61, 3
  %63 = and i32 %62, 8191
  %64 = load i32*, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 19
  %68 = ashr i32 %67, 19
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  br label %98

70:                                               ; preds = %18
  %71 = load %struct.sca3000_state*, %struct.sca3000_state** %12, align 8
  %72 = load i32, i32* @SCA3000_REG_TEMP_MSB_ADDR, align 4
  %73 = call i32 @sca3000_read_data_short(%struct.sca3000_state* %71, i32 %72, i32 2)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load %struct.sca3000_state*, %struct.sca3000_state** %12, align 8
  %78 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %77, i32 0, i32 1
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %6, align 4
  br label %157

81:                                               ; preds = %70
  %82 = load %struct.sca3000_state*, %struct.sca3000_state** %12, align 8
  %83 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 63
  %88 = shl i32 %87, 3
  %89 = load %struct.sca3000_state*, %struct.sca3000_state** %12, align 8
  %90 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 224
  %95 = ashr i32 %94, 5
  %96 = or i32 %88, %95
  %97 = load i32*, i32** %9, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %81, %57
  %99 = load %struct.sca3000_state*, %struct.sca3000_state** %12, align 8
  %100 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %99, i32 0, i32 1
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %102, i32* %6, align 4
  br label %157

103:                                              ; preds = %5
  %104 = load i32*, i32** %9, align 8
  store i32 0, i32* %104, align 4
  %105 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %106 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @IIO_ACCEL, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %103
  %111 = load %struct.sca3000_state*, %struct.sca3000_state** %12, align 8
  %112 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %111, i32 0, i32 2
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %10, align 8
  store i32 %115, i32* %116, align 4
  br label %119

117:                                              ; preds = %103
  %118 = load i32*, i32** %10, align 8
  store i32 555556, i32* %118, align 4
  br label %119

119:                                              ; preds = %117, %110
  %120 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %120, i32* %6, align 4
  br label %157

121:                                              ; preds = %5
  %122 = load i32*, i32** %9, align 8
  store i32 -214, i32* %122, align 4
  %123 = load i32*, i32** %10, align 8
  store i32 600000, i32* %123, align 4
  %124 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %124, i32* %6, align 4
  br label %157

125:                                              ; preds = %5
  %126 = load %struct.sca3000_state*, %struct.sca3000_state** %12, align 8
  %127 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %126, i32 0, i32 1
  %128 = call i32 @mutex_lock(i32* %127)
  %129 = load %struct.sca3000_state*, %struct.sca3000_state** %12, align 8
  %130 = load i32*, i32** %9, align 8
  %131 = call i32 @sca3000_read_raw_samp_freq(%struct.sca3000_state* %129, i32* %130)
  store i32 %131, i32* %13, align 4
  %132 = load %struct.sca3000_state*, %struct.sca3000_state** %12, align 8
  %133 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %132, i32 0, i32 1
  %134 = call i32 @mutex_unlock(i32* %133)
  %135 = load i32, i32* %13, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %125
  %138 = load i32, i32* %13, align 4
  br label %141

139:                                              ; preds = %125
  %140 = load i32, i32* @IIO_VAL_INT, align 4
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi i32 [ %138, %137 ], [ %140, %139 ]
  store i32 %142, i32* %6, align 4
  br label %157

143:                                              ; preds = %5
  %144 = load %struct.sca3000_state*, %struct.sca3000_state** %12, align 8
  %145 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %144, i32 0, i32 1
  %146 = call i32 @mutex_lock(i32* %145)
  %147 = load %struct.sca3000_state*, %struct.sca3000_state** %12, align 8
  %148 = load i32*, i32** %9, align 8
  %149 = call i32 @sca3000_read_3db_freq(%struct.sca3000_state* %147, i32* %148)
  store i32 %149, i32* %13, align 4
  %150 = load %struct.sca3000_state*, %struct.sca3000_state** %12, align 8
  %151 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %150, i32 0, i32 1
  %152 = call i32 @mutex_unlock(i32* %151)
  %153 = load i32, i32* %13, align 4
  store i32 %153, i32* %6, align 4
  br label %157

154:                                              ; preds = %5
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %6, align 4
  br label %157

157:                                              ; preds = %154, %143, %141, %121, %119, %98, %76, %52, %32
  %158 = load i32, i32* %6, align 4
  ret i32 %158
}

declare dso_local %struct.sca3000_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sca3000_read_data_short(%struct.sca3000_state*, i32, i32) #1

declare dso_local i32 @be16_to_cpup(i32*) #1

declare dso_local i32 @sca3000_read_raw_samp_freq(%struct.sca3000_state*, i32*) #1

declare dso_local i32 @sca3000_read_3db_freq(%struct.sca3000_state*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
