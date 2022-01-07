; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads8688.c_ads8688_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads8688.c_ads8688_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i32 }
%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.ads8688_state = type { i64*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ads8688_range_def = common dso_local global %struct.TYPE_3__* null, align 8
@ADS8688_PLUSMINUS25VREF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @ads8688_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads8688_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ads8688_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = call %struct.ads8688_state* @iio_priv(%struct.iio_dev* %17)
  store %struct.ads8688_state* %18, %struct.ads8688_state** %12, align 8
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %21 = load %struct.ads8688_state*, %struct.ads8688_state** %12, align 8
  %22 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %21, i32 0, i32 2
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load i64, i64* %11, align 8
  switch i64 %24, label %191 [
    i64 128, label %25
    i64 129, label %100
  ]

25:                                               ; preds = %5
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ads8688_range_def, align 8
  %27 = load %struct.ads8688_state*, %struct.ads8688_state** %12, align 8
  %28 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %31 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %25
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ads8688_range_def, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ads8688_state*, %struct.ads8688_state** %12, align 8
  %47 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 %45, %48
  %50 = icmp eq i32 %41, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %40
  %52 = load %struct.ads8688_state*, %struct.ads8688_state** %12, align 8
  %53 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %52, i32 0, i32 2
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %213

57:                                               ; preds = %40, %25
  store i32 0, i32* %15, align 4
  br label %58

58:                                               ; preds = %96, %57
  %59 = load i32, i32* %15, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ads8688_range_def, align 8
  %61 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %60)
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %99

63:                                               ; preds = %58
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ads8688_range_def, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ads8688_state*, %struct.ads8688_state** %12, align 8
  %72 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 %70, %73
  %75 = icmp eq i32 %64, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %63
  %77 = load i32, i32* %16, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ads8688_range_def, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %77, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %76
  %86 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %87 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ads8688_range_def, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @ads8688_write_reg_range(%struct.iio_dev* %86, %struct.iio_chan_spec* %87, i32 %93)
  store i32 %94, i32* %14, align 4
  br label %99

95:                                               ; preds = %76, %63
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %15, align 4
  br label %58

99:                                               ; preds = %85, %58
  br label %191

100:                                              ; preds = %5
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ads8688_range_def, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %120, label %107

107:                                              ; preds = %100
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ads8688_range_def, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 3
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %120, label %114

114:                                              ; preds = %107
  %115 = load %struct.ads8688_state*, %struct.ads8688_state** %12, align 8
  %116 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %115, i32 0, i32 2
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %6, align 4
  br label %213

120:                                              ; preds = %107, %100
  %121 = load i32, i32* %9, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %140

123:                                              ; preds = %120
  %124 = load %struct.ads8688_state*, %struct.ads8688_state** %12, align 8
  %125 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %128 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds i64, i64* %126, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @ADS8688_PLUSMINUS25VREF, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %123
  %135 = load %struct.ads8688_state*, %struct.ads8688_state** %12, align 8
  %136 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %135, i32 0, i32 2
  %137 = call i32 @mutex_unlock(i32* %136)
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %6, align 4
  br label %213

140:                                              ; preds = %123, %120
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ads8688_range_def, align 8
  %142 = load %struct.ads8688_state*, %struct.ads8688_state** %12, align 8
  %143 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %146 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds i64, i64* %144, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %153

153:                                              ; preds = %187, %140
  %154 = load i32, i32* %15, align 4
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ads8688_range_def, align 8
  %156 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %155)
  %157 = icmp slt i32 %154, %156
  br i1 %157, label %158, label %190

158:                                              ; preds = %153
  %159 = load i32, i32* %9, align 4
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ads8688_range_def, align 8
  %161 = load i32, i32* %15, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %159, %165
  br i1 %166, label %167, label %186

167:                                              ; preds = %158
  %168 = load i32, i32* %13, align 4
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ads8688_range_def, align 8
  %170 = load i32, i32* %15, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %168, %174
  br i1 %175, label %176, label %186

176:                                              ; preds = %167
  %177 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %178 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ads8688_range_def, align 8
  %180 = load i32, i32* %15, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @ads8688_write_reg_range(%struct.iio_dev* %177, %struct.iio_chan_spec* %178, i32 %184)
  store i32 %185, i32* %14, align 4
  br label %190

186:                                              ; preds = %167, %158
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %15, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %15, align 4
  br label %153

190:                                              ; preds = %176, %153
  br label %191

191:                                              ; preds = %5, %190, %99
  %192 = load i32, i32* %14, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %208, label %194

194:                                              ; preds = %191
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ads8688_range_def, align 8
  %196 = load i32, i32* %15, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.ads8688_state*, %struct.ads8688_state** %12, align 8
  %202 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %201, i32 0, i32 0
  %203 = load i64*, i64** %202, align 8
  %204 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %205 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds i64, i64* %203, i64 %206
  store i64 %200, i64* %207, align 8
  br label %208

208:                                              ; preds = %194, %191
  %209 = load %struct.ads8688_state*, %struct.ads8688_state** %12, align 8
  %210 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %209, i32 0, i32 2
  %211 = call i32 @mutex_unlock(i32* %210)
  %212 = load i32, i32* %14, align 4
  store i32 %212, i32* %6, align 4
  br label %213

213:                                              ; preds = %208, %134, %114, %51
  %214 = load i32, i32* %6, align 4
  ret i32 %214
}

declare dso_local %struct.ads8688_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @ads8688_write_reg_range(%struct.iio_dev*, %struct.iio_chan_spec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
