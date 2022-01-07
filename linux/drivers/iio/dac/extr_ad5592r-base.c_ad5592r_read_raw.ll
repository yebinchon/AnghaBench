; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5592r-base.c_ad5592r_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5592r-base.c_ad5592r_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ad5592r_state = type { i32*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ad5592r_state*, i32, i32*)* }

@.str = private unnamed_addr constant [32 x i8] c"Error while reading channel %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Channel %u read: 0x%04hX\0A\00", align 1
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_TEMP = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@AD5592R_REG_CTRL_DAC_RANGE = common dso_local global i32 0, align 4
@AD5592R_REG_CTRL_ADC_RANGE = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad5592r_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5592r_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ad5592r_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %17 = call %struct.ad5592r_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.ad5592r_state* %17, %struct.ad5592r_state** %11, align 8
  %18 = load i64, i64* %10, align 8
  switch i64 %18, label %170 [
    i64 129, label %19
    i64 128, label %87
    i64 130, label %148
  ]

19:                                               ; preds = %5
  %20 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %21 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %24 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %64, label %27

27:                                               ; preds = %19
  %28 = load %struct.ad5592r_state*, %struct.ad5592r_state** %11, align 8
  %29 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %28, i32 0, i32 3
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.ad5592r_state*, i32, i32*)*, i32 (%struct.ad5592r_state*, i32, i32*)** %31, align 8
  %33 = load %struct.ad5592r_state*, %struct.ad5592r_state** %11, align 8
  %34 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %35 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 %32(%struct.ad5592r_state* %33, i32 %36, i32* %12)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %174

41:                                               ; preds = %27
  %42 = load i32, i32* %12, align 4
  %43 = ashr i32 %42, 12
  %44 = and i32 %43, 7
  %45 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %46 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 7
  %49 = icmp ne i32 %44, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %41
  %51 = load %struct.ad5592r_state*, %struct.ad5592r_state** %11, align 8
  %52 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %55 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %13, align 4
  br label %174

60:                                               ; preds = %41
  %61 = call i32 @GENMASK(i32 11, i32 0)
  %62 = load i32, i32* %12, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %12, align 4
  br label %74

64:                                               ; preds = %19
  %65 = load %struct.ad5592r_state*, %struct.ad5592r_state** %11, align 8
  %66 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %69 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %64, %60
  %75 = load %struct.ad5592r_state*, %struct.ad5592r_state** %11, align 8
  %76 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %79 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @dev_dbg(i32 %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %81, i32 %82)
  %84 = load i32, i32* %12, align 4
  %85 = load i32*, i32** %8, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %86, i32* %13, align 4
  br label %173

87:                                               ; preds = %5
  %88 = load %struct.ad5592r_state*, %struct.ad5592r_state** %11, align 8
  %89 = call i32 @ad5592r_get_vref(%struct.ad5592r_state* %88)
  %90 = load i32*, i32** %8, align 8
  store i32 %89, i32* %90, align 4
  %91 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %92 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IIO_TEMP, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %87
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = mul nsw i64 %99, 150715900
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32*, i32** %9, align 8
  %104 = call i32 @div_s64_rem(i32 %102, i64 1000000000, i32* %103)
  %105 = load i32*, i32** %8, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %106, i32* %13, align 4
  br label %147

107:                                              ; preds = %87
  %108 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %109 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %108, i32 0, i32 0
  %110 = call i32 @mutex_lock(i32* %109)
  %111 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %112 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %107
  %116 = load %struct.ad5592r_state*, %struct.ad5592r_state** %11, align 8
  %117 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @AD5592R_REG_CTRL_DAC_RANGE, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %15, align 4
  br label %135

125:                                              ; preds = %107
  %126 = load %struct.ad5592r_state*, %struct.ad5592r_state** %11, align 8
  %127 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @AD5592R_REG_CTRL_ADC_RANGE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %15, align 4
  br label %135

135:                                              ; preds = %125, %115
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %15, align 4
  %138 = load i32*, i32** %8, align 8
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %139, %137
  store i32 %140, i32* %138, align 4
  %141 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %142 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %9, align 8
  store i32 %144, i32* %145, align 4
  %146 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %146, i32* %13, align 4
  br label %147

147:                                              ; preds = %135, %96
  br label %173

148:                                              ; preds = %5
  %149 = load %struct.ad5592r_state*, %struct.ad5592r_state** %11, align 8
  %150 = call i32 @ad5592r_get_vref(%struct.ad5592r_state* %149)
  store i32 %150, i32* %13, align 4
  %151 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %152 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %151, i32 0, i32 0
  %153 = call i32 @mutex_lock(i32* %152)
  %154 = load %struct.ad5592r_state*, %struct.ad5592r_state** %11, align 8
  %155 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @AD5592R_REG_CTRL_ADC_RANGE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %148
  %161 = load i32, i32* %13, align 4
  %162 = sdiv i32 -859125, %161
  %163 = load i32*, i32** %8, align 8
  store i32 %162, i32* %163, align 4
  br label %168

164:                                              ; preds = %148
  %165 = load i32, i32* %13, align 4
  %166 = sdiv i32 -1884125, %165
  %167 = load i32*, i32** %8, align 8
  store i32 %166, i32* %167, align 4
  br label %168

168:                                              ; preds = %164, %160
  %169 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %169, i32* %13, align 4
  br label %173

170:                                              ; preds = %5
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %13, align 4
  br label %173

173:                                              ; preds = %170, %168, %147, %74
  br label %174

174:                                              ; preds = %173, %50, %40
  %175 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %176 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %175, i32 0, i32 0
  %177 = call i32 @mutex_unlock(i32* %176)
  %178 = load i32, i32* %13, align 4
  ret i32 %178
}

declare dso_local %struct.ad5592r_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32) #1

declare dso_local i32 @ad5592r_get_vref(%struct.ad5592r_state*) #1

declare dso_local i32 @div_s64_rem(i32, i64, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
