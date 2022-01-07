; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_dht11.c_dht11_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_dht11.c_dht11_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.dht11 = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@DHT11_DATA_VALID_TIME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"current timeresolution: %dns\0A\00", align 1
@DHT11_MIN_TIMERES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"timeresolution %dns too low\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@DHT11_AMBIG_LOW = common dso_local global i32 0, align 4
@DHT11_AMBIG_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"timeresolution: %dns - decoding ambiguous\0A\00", align 1
@DHT11_START_TRANSMISSION_MIN = common dso_local global i32 0, align 4
@DHT11_START_TRANSMISSION_MAX = common dso_local global i32 0, align 4
@dht11_handle_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@DHT11_EDGES_PER_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Only %d signal edges detected\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@DHT11_EDGES_PREAMBLE = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_TEMP = common dso_local global i64 0, align 8
@IIO_HUMIDITYRELATIVE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @dht11_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dht11_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dht11*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %16 = call %struct.dht11* @iio_priv(%struct.iio_dev* %15)
  store %struct.dht11* %16, %struct.dht11** %11, align 8
  %17 = load %struct.dht11*, %struct.dht11** %11, align 8
  %18 = getelementptr inbounds %struct.dht11, %struct.dht11* %17, i32 0, i32 4
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.dht11*, %struct.dht11** %11, align 8
  %21 = getelementptr inbounds %struct.dht11, %struct.dht11* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DHT11_DATA_VALID_TIME, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i64 (...) @ktime_get_boottime_ns()
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %159

27:                                               ; preds = %5
  %28 = call i32 (...) @ktime_get_resolution_ns()
  store i32 %28, i32* %13, align 4
  %29 = load %struct.dht11*, %struct.dht11** %11, align 8
  %30 = getelementptr inbounds %struct.dht11, %struct.dht11* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @dev_dbg(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @DHT11_MIN_TIMERES, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %27
  %38 = load %struct.dht11*, %struct.dht11** %11, align 8
  %39 = getelementptr inbounds %struct.dht11, %struct.dht11* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %12, align 4
  br label %187

45:                                               ; preds = %27
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @DHT11_AMBIG_LOW, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @DHT11_AMBIG_HIGH, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load %struct.dht11*, %struct.dht11** %11, align 8
  %55 = getelementptr inbounds %struct.dht11, %struct.dht11* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @dev_warn(i32 %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %53, %49, %45
  %60 = load %struct.dht11*, %struct.dht11** %11, align 8
  %61 = getelementptr inbounds %struct.dht11, %struct.dht11* %60, i32 0, i32 7
  %62 = call i32 @reinit_completion(i32* %61)
  %63 = load %struct.dht11*, %struct.dht11** %11, align 8
  %64 = getelementptr inbounds %struct.dht11, %struct.dht11* %63, i32 0, i32 1
  store i32 0, i32* %64, align 8
  %65 = load %struct.dht11*, %struct.dht11** %11, align 8
  %66 = getelementptr inbounds %struct.dht11, %struct.dht11* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @gpiod_direction_output(i32 %67, i32 0)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  br label %187

72:                                               ; preds = %59
  %73 = load i32, i32* @DHT11_START_TRANSMISSION_MIN, align 4
  %74 = load i32, i32* @DHT11_START_TRANSMISSION_MAX, align 4
  %75 = call i32 @usleep_range(i32 %73, i32 %74)
  %76 = load %struct.dht11*, %struct.dht11** %11, align 8
  %77 = getelementptr inbounds %struct.dht11, %struct.dht11* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @gpiod_direction_input(i32 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  br label %187

83:                                               ; preds = %72
  %84 = load %struct.dht11*, %struct.dht11** %11, align 8
  %85 = getelementptr inbounds %struct.dht11, %struct.dht11* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @dht11_handle_irq, align 4
  %88 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %89 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %92 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %95 = call i32 @request_irq(i32 %86, i32 %87, i32 %90, i32 %93, %struct.iio_dev* %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %83
  br label %187

99:                                               ; preds = %83
  %100 = load %struct.dht11*, %struct.dht11** %11, align 8
  %101 = getelementptr inbounds %struct.dht11, %struct.dht11* %100, i32 0, i32 7
  %102 = load i32, i32* @HZ, align 4
  %103 = call i32 @wait_for_completion_killable_timeout(i32* %101, i32 %102)
  store i32 %103, i32* %12, align 4
  %104 = load %struct.dht11*, %struct.dht11** %11, align 8
  %105 = getelementptr inbounds %struct.dht11, %struct.dht11* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %108 = call i32 @free_irq(i32 %106, %struct.iio_dev* %107)
  %109 = load i32, i32* %12, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %99
  %112 = load %struct.dht11*, %struct.dht11** %11, align 8
  %113 = getelementptr inbounds %struct.dht11, %struct.dht11* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @DHT11_EDGES_PER_READ, align 4
  %116 = sub nsw i32 %115, 1
  %117 = icmp slt i32 %114, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %111
  %119 = load %struct.dht11*, %struct.dht11** %11, align 8
  %120 = getelementptr inbounds %struct.dht11, %struct.dht11* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.dht11*, %struct.dht11** %11, align 8
  %123 = getelementptr inbounds %struct.dht11, %struct.dht11* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @dev_err(i32 %121, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @ETIMEDOUT, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %12, align 4
  br label %128

128:                                              ; preds = %118, %111, %99
  %129 = load i32, i32* %12, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %187

132:                                              ; preds = %128
  %133 = load i32, i32* @DHT11_EDGES_PREAMBLE, align 4
  %134 = load %struct.dht11*, %struct.dht11** %11, align 8
  %135 = getelementptr inbounds %struct.dht11, %struct.dht11* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %133, %136
  %138 = load i32, i32* @DHT11_EDGES_PER_READ, align 4
  %139 = sub nsw i32 %137, %138
  store i32 %139, i32* %14, align 4
  br label %140

140:                                              ; preds = %151, %132
  %141 = load i32, i32* %14, align 4
  %142 = icmp sge i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %140
  %144 = load %struct.dht11*, %struct.dht11** %11, align 8
  %145 = load i32, i32* %14, align 4
  %146 = call i32 @dht11_decode(%struct.dht11* %144, i32 %145)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %143
  br label %154

150:                                              ; preds = %143
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %14, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %14, align 4
  br label %140

154:                                              ; preds = %149, %140
  %155 = load i32, i32* %12, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  br label %187

158:                                              ; preds = %154
  br label %159

159:                                              ; preds = %158, %5
  %160 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %160, i32* %12, align 4
  %161 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %162 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @IIO_TEMP, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %159
  %167 = load %struct.dht11*, %struct.dht11** %11, align 8
  %168 = getelementptr inbounds %struct.dht11, %struct.dht11* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load i32*, i32** %8, align 8
  store i32 %169, i32* %170, align 4
  br label %186

171:                                              ; preds = %159
  %172 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %173 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @IIO_HUMIDITYRELATIVE, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %171
  %178 = load %struct.dht11*, %struct.dht11** %11, align 8
  %179 = getelementptr inbounds %struct.dht11, %struct.dht11* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = load i32*, i32** %8, align 8
  store i32 %180, i32* %181, align 4
  br label %185

182:                                              ; preds = %171
  %183 = load i32, i32* @EINVAL, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %12, align 4
  br label %185

185:                                              ; preds = %182, %177
  br label %186

186:                                              ; preds = %185, %166
  br label %187

187:                                              ; preds = %186, %157, %131, %98, %82, %71, %37
  %188 = load %struct.dht11*, %struct.dht11** %11, align 8
  %189 = getelementptr inbounds %struct.dht11, %struct.dht11* %188, i32 0, i32 1
  store i32 -1, i32* %189, align 8
  %190 = load %struct.dht11*, %struct.dht11** %11, align 8
  %191 = getelementptr inbounds %struct.dht11, %struct.dht11* %190, i32 0, i32 4
  %192 = call i32 @mutex_unlock(i32* %191)
  %193 = load i32, i32* %12, align 4
  ret i32 %193
}

declare dso_local %struct.dht11* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ktime_get_boottime_ns(...) #1

declare dso_local i32 @ktime_get_resolution_ns(...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @gpiod_direction_output(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @gpiod_direction_input(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.iio_dev*) #1

declare dso_local i32 @wait_for_completion_killable_timeout(i32*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.iio_dev*) #1

declare dso_local i32 @dht11_decode(%struct.dht11*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
