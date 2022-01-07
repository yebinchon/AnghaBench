; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_ltr501.c_ltr501_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_ltr501.c_ltr501_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ltr501_data = type { i32, i32, i32, i32, i32, i32, %struct.ltr501_chip_info* }
%struct.ltr501_chip_info = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@LTR501_ALS_CONTR = common dso_local global i32 0, align 4
@LTR501_CONTR_PS_GAIN_MASK = common dso_local global i32 0, align 4
@LTR501_CONTR_PS_GAIN_SHIFT = common dso_local global i32 0, align 4
@LTR501_PS_CONTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @ltr501_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltr501_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ltr501_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ltr501_chip_info*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.ltr501_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.ltr501_data* %19, %struct.ltr501_data** %12, align 8
  %20 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %21 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %20, i32 0, i32 6
  %22 = load %struct.ltr501_chip_info*, %struct.ltr501_chip_info** %21, align 8
  store %struct.ltr501_chip_info* %22, %struct.ltr501_chip_info** %17, align 8
  %23 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %24 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %6, align 4
  br label %218

29:                                               ; preds = %5
  %30 = load i64, i64* %11, align 8
  switch i64 %30, label %211 [
    i64 130, label %31
    i64 132, label %117
    i64 131, label %141
  ]

31:                                               ; preds = %29
  %32 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %33 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %113 [
    i32 129, label %35
    i32 128, label %76
  ]

35:                                               ; preds = %31
  %36 = load %struct.ltr501_chip_info*, %struct.ltr501_chip_info** %17, align 8
  %37 = getelementptr inbounds %struct.ltr501_chip_info, %struct.ltr501_chip_info* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ltr501_chip_info*, %struct.ltr501_chip_info** %17, align 8
  %40 = getelementptr inbounds %struct.ltr501_chip_info, %struct.ltr501_chip_info* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @ltr501_get_gain_index(i32 %38, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %14, align 4
  br label %116

50:                                               ; preds = %35
  %51 = load %struct.ltr501_chip_info*, %struct.ltr501_chip_info** %17, align 8
  %52 = getelementptr inbounds %struct.ltr501_chip_info, %struct.ltr501_chip_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %56 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.ltr501_chip_info*, %struct.ltr501_chip_info** %17, align 8
  %61 = getelementptr inbounds %struct.ltr501_chip_info, %struct.ltr501_chip_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %59, %62
  %64 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %65 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %69 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @LTR501_ALS_CONTR, align 4
  %72 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %73 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @regmap_write(i32 %70, i32 %71, i32 %74)
  store i32 %75, i32* %14, align 4
  br label %116

76:                                               ; preds = %31
  %77 = load %struct.ltr501_chip_info*, %struct.ltr501_chip_info** %17, align 8
  %78 = getelementptr inbounds %struct.ltr501_chip_info, %struct.ltr501_chip_info* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ltr501_chip_info*, %struct.ltr501_chip_info** %17, align 8
  %81 = getelementptr inbounds %struct.ltr501_chip_info, %struct.ltr501_chip_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @ltr501_get_gain_index(i32 %79, i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %76
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %14, align 4
  br label %116

91:                                               ; preds = %76
  %92 = load i32, i32* @LTR501_CONTR_PS_GAIN_MASK, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %95 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* @LTR501_CONTR_PS_GAIN_SHIFT, align 4
  %100 = shl i32 %98, %99
  %101 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %102 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %106 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @LTR501_PS_CONTR, align 4
  %109 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %110 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @regmap_write(i32 %107, i32 %108, i32 %111)
  store i32 %112, i32* %14, align 4
  br label %116

113:                                              ; preds = %31
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %113, %91, %88, %50, %47
  br label %214

117:                                              ; preds = %29
  %118 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %119 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  switch i32 %120, label %137 [
    i32 129, label %121
  ]

121:                                              ; preds = %117
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %14, align 4
  br label %140

127:                                              ; preds = %121
  %128 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %129 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %128, i32 0, i32 4
  %130 = call i32 @mutex_lock(i32* %129)
  %131 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @ltr501_set_it_time(%struct.ltr501_data* %131, i32 %132)
  store i32 %133, i32* %14, align 4
  %134 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %135 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %134, i32 0, i32 4
  %136 = call i32 @mutex_unlock(i32* %135)
  br label %140

137:                                              ; preds = %117
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %14, align 4
  br label %140

140:                                              ; preds = %137, %127, %124
  br label %214

141:                                              ; preds = %29
  %142 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %143 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  switch i32 %144, label %207 [
    i32 129, label %145
    i32 128, label %176
  ]

145:                                              ; preds = %141
  %146 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %147 = call i32 @ltr501_als_read_samp_freq(%struct.ltr501_data* %146, i32* %15, i32* %16)
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %14, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %210

151:                                              ; preds = %145
  %152 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @ltr501_als_write_samp_freq(%struct.ltr501_data* %152, i32 %153, i32 %154)
  store i32 %155, i32* %14, align 4
  %156 = load i32, i32* %14, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %210

159:                                              ; preds = %151
  %160 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %161 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %162 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %165 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @ltr501_write_intr_prst(%struct.ltr501_data* %160, i32 %163, i32 0, i32 %166)
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %14, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %159
  %171 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* %16, align 4
  %174 = call i32 @ltr501_als_write_samp_freq(%struct.ltr501_data* %171, i32 %172, i32 %173)
  store i32 %174, i32* %14, align 4
  br label %175

175:                                              ; preds = %170, %159
  br label %210

176:                                              ; preds = %141
  %177 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %178 = call i32 @ltr501_ps_read_samp_freq(%struct.ltr501_data* %177, i32* %15, i32* %16)
  store i32 %178, i32* %14, align 4
  %179 = load i32, i32* %14, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  br label %210

182:                                              ; preds = %176
  %183 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %10, align 4
  %186 = call i32 @ltr501_ps_write_samp_freq(%struct.ltr501_data* %183, i32 %184, i32 %185)
  store i32 %186, i32* %14, align 4
  %187 = load i32, i32* %14, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %182
  br label %210

190:                                              ; preds = %182
  %191 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %192 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %193 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %196 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @ltr501_write_intr_prst(%struct.ltr501_data* %191, i32 %194, i32 0, i32 %197)
  store i32 %198, i32* %14, align 4
  %199 = load i32, i32* %14, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %190
  %202 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* %16, align 4
  %205 = call i32 @ltr501_ps_write_samp_freq(%struct.ltr501_data* %202, i32 %203, i32 %204)
  store i32 %205, i32* %14, align 4
  br label %206

206:                                              ; preds = %201, %190
  br label %210

207:                                              ; preds = %141
  %208 = load i32, i32* @EINVAL, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %14, align 4
  br label %210

210:                                              ; preds = %207, %206, %189, %181, %175, %158, %150
  br label %214

211:                                              ; preds = %29
  %212 = load i32, i32* @EINVAL, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %14, align 4
  br label %214

214:                                              ; preds = %211, %210, %140, %116
  %215 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %216 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %215)
  %217 = load i32, i32* %14, align 4
  store i32 %217, i32* %6, align 4
  br label %218

218:                                              ; preds = %214, %27
  %219 = load i32, i32* %6, align 4
  ret i32 %219
}

declare dso_local %struct.ltr501_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @ltr501_get_gain_index(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ltr501_set_it_time(%struct.ltr501_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ltr501_als_read_samp_freq(%struct.ltr501_data*, i32*, i32*) #1

declare dso_local i32 @ltr501_als_write_samp_freq(%struct.ltr501_data*, i32, i32) #1

declare dso_local i32 @ltr501_write_intr_prst(%struct.ltr501_data*, i32, i32, i32) #1

declare dso_local i32 @ltr501_ps_read_samp_freq(%struct.ltr501_data*, i32*, i32*) #1

declare dso_local i32 @ltr501_ps_write_samp_freq(%struct.ltr501_data*, i32, i32) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
