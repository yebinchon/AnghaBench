; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16400.c_adis16400_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16400.c_adis16400_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32, i32 }
%struct.adis16400_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 (%struct.adis16400_state*)* }

@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@adis16400_addresses = common dso_local global i32* null, align 8
@IIO_VAL_INT = common dso_local global i32 0, align 4
@ADIS16400_SENS_AVG = common dso_local global i32 0, align 4
@adis16400_3db_divisors = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @adis16400_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16400_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.adis16400_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.adis16400_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.adis16400_state* %16, %struct.adis16400_state** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %192 [
    i64 134, label %18
    i64 132, label %23
    i64 137, label %86
    i64 135, label %112
    i64 136, label %120
    i64 133, label %171
  ]

18:                                               ; preds = %5
  %19 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %20 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @adis_single_conversion(%struct.iio_dev* %19, %struct.iio_chan_spec* %20, i32 0, i32* %21)
  store i32 %22, i32* %6, align 4
  br label %195

23:                                               ; preds = %5
  %24 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %25 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %83 [
    i32 138, label %27
    i32 128, label %36
    i32 139, label %50
    i32 131, label %59
    i32 129, label %63
    i32 130, label %79
  ]

27:                                               ; preds = %23
  %28 = load i32*, i32** %9, align 8
  store i32 0, i32* %28, align 4
  %29 = load %struct.adis16400_state*, %struct.adis16400_state** %12, align 8
  %30 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %10, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %35, i32* %6, align 4
  br label %195

36:                                               ; preds = %23
  %37 = load i32*, i32** %9, align 8
  store i32 0, i32* %37, align 4
  %38 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %39 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32*, i32** %9, align 8
  store i32 2, i32* %43, align 4
  %44 = load i32*, i32** %10, align 8
  store i32 418000, i32* %44, align 4
  br label %48

45:                                               ; preds = %36
  %46 = load i32*, i32** %9, align 8
  store i32 0, i32* %46, align 4
  %47 = load i32*, i32** %10, align 8
  store i32 805800, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %49, i32* %6, align 4
  br label %195

50:                                               ; preds = %23
  %51 = load i32*, i32** %9, align 8
  store i32 0, i32* %51, align 4
  %52 = load %struct.adis16400_state*, %struct.adis16400_state** %12, align 8
  %53 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %10, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %58, i32* %6, align 4
  br label %195

59:                                               ; preds = %23
  %60 = load i32*, i32** %9, align 8
  store i32 0, i32* %60, align 4
  %61 = load i32*, i32** %10, align 8
  store i32 500, i32* %61, align 4
  %62 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %62, i32* %6, align 4
  br label %195

63:                                               ; preds = %23
  %64 = load %struct.adis16400_state*, %struct.adis16400_state** %12, align 8
  %65 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = sdiv i32 %68, 1000000
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  %71 = load %struct.adis16400_state*, %struct.adis16400_state** %12, align 8
  %72 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = srem i32 %75, 1000000
  %77 = load i32*, i32** %10, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %78, i32* %6, align 4
  br label %195

79:                                               ; preds = %23
  %80 = load i32*, i32** %9, align 8
  store i32 0, i32* %80, align 4
  %81 = load i32*, i32** %10, align 8
  store i32 2000, i32* %81, align 4
  %82 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %82, i32* %6, align 4
  br label %195

83:                                               ; preds = %23
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %195

86:                                               ; preds = %5
  %87 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %88 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %87, i32 0, i32 0
  %89 = call i32 @mutex_lock(i32* %88)
  %90 = load %struct.adis16400_state*, %struct.adis16400_state** %12, align 8
  %91 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %90, i32 0, i32 1
  %92 = load i32*, i32** @adis16400_addresses, align 8
  %93 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %94 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @adis_read_reg_16(i32* %91, i32 %97, i32* %13)
  store i32 %98, i32* %14, align 4
  %99 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %100 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %99, i32 0, i32 0
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %86
  %105 = load i32, i32* %14, align 4
  store i32 %105, i32* %6, align 4
  br label %195

106:                                              ; preds = %86
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @sign_extend32(i32 %107, i32 11)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32*, i32** %9, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %111, i32* %6, align 4
  br label %195

112:                                              ; preds = %5
  %113 = load %struct.adis16400_state*, %struct.adis16400_state** %12, align 8
  %114 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %9, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %119, i32* %6, align 4
  br label %195

120:                                              ; preds = %5
  %121 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %122 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %121, i32 0, i32 0
  %123 = call i32 @mutex_lock(i32* %122)
  %124 = load %struct.adis16400_state*, %struct.adis16400_state** %12, align 8
  %125 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %124, i32 0, i32 1
  %126 = load i32, i32* @ADIS16400_SENS_AVG, align 4
  %127 = call i32 @adis_read_reg_16(i32* %125, i32 %126, i32* %13)
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %14, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %120
  %131 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %132 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %131, i32 0, i32 0
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = load i32, i32* %14, align 4
  store i32 %134, i32* %6, align 4
  br label %195

135:                                              ; preds = %120
  %136 = load %struct.adis16400_state*, %struct.adis16400_state** %12, align 8
  %137 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %136, i32 0, i32 0
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 4
  %140 = load i32 (%struct.adis16400_state*)*, i32 (%struct.adis16400_state*)** %139, align 8
  %141 = load %struct.adis16400_state*, %struct.adis16400_state** %12, align 8
  %142 = call i32 %140(%struct.adis16400_state* %141)
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %14, align 4
  %144 = icmp sge i32 %143, 0
  br i1 %144, label %145, label %161

145:                                              ; preds = %135
  %146 = load i32*, i32** @adis16400_3db_divisors, align 8
  %147 = load i32, i32* %13, align 4
  %148 = and i32 %147, 7
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %14, align 4
  %153 = sdiv i32 %152, %151
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* %14, align 4
  %155 = sdiv i32 %154, 1000
  %156 = load i32*, i32** %9, align 8
  store i32 %155, i32* %156, align 4
  %157 = load i32, i32* %14, align 4
  %158 = srem i32 %157, 1000
  %159 = mul nsw i32 %158, 1000
  %160 = load i32*, i32** %10, align 8
  store i32 %159, i32* %160, align 4
  br label %161

161:                                              ; preds = %145, %135
  %162 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %163 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %162, i32 0, i32 0
  %164 = call i32 @mutex_unlock(i32* %163)
  %165 = load i32, i32* %14, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %161
  %168 = load i32, i32* %14, align 4
  store i32 %168, i32* %6, align 4
  br label %195

169:                                              ; preds = %161
  %170 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %170, i32* %6, align 4
  br label %195

171:                                              ; preds = %5
  %172 = load %struct.adis16400_state*, %struct.adis16400_state** %12, align 8
  %173 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %172, i32 0, i32 0
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 4
  %176 = load i32 (%struct.adis16400_state*)*, i32 (%struct.adis16400_state*)** %175, align 8
  %177 = load %struct.adis16400_state*, %struct.adis16400_state** %12, align 8
  %178 = call i32 %176(%struct.adis16400_state* %177)
  store i32 %178, i32* %14, align 4
  %179 = load i32, i32* %14, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %171
  %182 = load i32, i32* %14, align 4
  store i32 %182, i32* %6, align 4
  br label %195

183:                                              ; preds = %171
  %184 = load i32, i32* %14, align 4
  %185 = sdiv i32 %184, 1000
  %186 = load i32*, i32** %9, align 8
  store i32 %185, i32* %186, align 4
  %187 = load i32, i32* %14, align 4
  %188 = srem i32 %187, 1000
  %189 = mul nsw i32 %188, 1000
  %190 = load i32*, i32** %10, align 8
  store i32 %189, i32* %190, align 4
  %191 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %191, i32* %6, align 4
  br label %195

192:                                              ; preds = %5
  %193 = load i32, i32* @EINVAL, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %6, align 4
  br label %195

195:                                              ; preds = %192, %183, %181, %169, %167, %130, %112, %106, %104, %83, %79, %63, %59, %50, %48, %27, %18
  %196 = load i32, i32* %6, align 4
  ret i32 %196
}

declare dso_local %struct.adis16400_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @adis_single_conversion(%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adis_read_reg_16(i32*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
