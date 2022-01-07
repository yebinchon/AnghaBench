; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.mma8452_data = type { i32, i32, i32 }

@MMA8452_CTRL_DR_MASK = common dso_local global i32 0, align 4
@MMA8452_CTRL_DR_SHIFT = common dso_local global i32 0, align 4
@MMA8452_CTRL_REG1 = common dso_local global i64 0, align 8
@MMA8452_DATA_CFG_FS_MASK = common dso_local global i32 0, align 4
@MMA8452_DATA_CFG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MMA8452_OFF_X = common dso_local global i64 0, align 8
@MMA8452_DATA_CFG_HPF_MASK = common dso_local global i32 0, align 4
@mma8452_os_ratio = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @mma8452_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma8452_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.mma8452_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.mma8452_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.mma8452_data* %16, %struct.mma8452_data** %12, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %17)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %6, align 4
  br label %173

23:                                               ; preds = %5
  %24 = load i64, i64* %11, align 8
  switch i64 %24, label %166 [
    i64 129, label %25
    i64 128, label %58
    i64 132, label %85
    i64 131, label %103
    i64 130, label %137
  ]

25:                                               ; preds = %23
  %26 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @mma8452_get_samp_freq_index(%struct.mma8452_data* %26, i32 %27, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %14, align 4
  br label %169

34:                                               ; preds = %25
  %35 = load i32, i32* @MMA8452_CTRL_DR_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %38 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @MMA8452_CTRL_DR_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %45 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %49 = call i32 @mma8452_calculate_sleep(%struct.mma8452_data* %48)
  %50 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %51 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %53 = load i64, i64* @MMA8452_CTRL_REG1, align 8
  %54 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %55 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mma8452_change_config(%struct.mma8452_data* %52, i64 %53, i32 %56)
  store i32 %57, i32* %14, align 4
  br label %169

58:                                               ; preds = %23
  %59 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @mma8452_get_scale_index(%struct.mma8452_data* %59, i32 %60, i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %14, align 4
  br label %169

67:                                               ; preds = %58
  %68 = load i32, i32* @MMA8452_DATA_CFG_FS_MASK, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %71 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %76 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %80 = load i64, i64* @MMA8452_DATA_CFG, align 8
  %81 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %82 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @mma8452_change_config(%struct.mma8452_data* %79, i64 %80, i32 %83)
  store i32 %84, i32* %14, align 4
  br label %169

85:                                               ; preds = %23
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, -128
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = icmp sgt i32 %89, 127
  br i1 %90, label %91, label %94

91:                                               ; preds = %88, %85
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %14, align 4
  br label %169

94:                                               ; preds = %88
  %95 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %96 = load i64, i64* @MMA8452_OFF_X, align 8
  %97 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %98 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %96, %99
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @mma8452_change_config(%struct.mma8452_data* %95, i64 %100, i32 %101)
  store i32 %102, i32* %14, align 4
  br label %169

103:                                              ; preds = %23
  %104 = load i32, i32* %9, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %103
  %107 = load i32, i32* %10, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load i32, i32* @MMA8452_DATA_CFG_HPF_MASK, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %113 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %130

116:                                              ; preds = %106, %103
  %117 = load i32, i32* @MMA8452_DATA_CFG_HPF_MASK, align 4
  %118 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %119 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @mma8452_set_hp_filter_frequency(%struct.mma8452_data* %122, i32 %123, i32 %124)
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %116
  br label %169

129:                                              ; preds = %116
  br label %130

130:                                              ; preds = %129, %109
  %131 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %132 = load i64, i64* @MMA8452_DATA_CFG, align 8
  %133 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %134 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @mma8452_change_config(%struct.mma8452_data* %131, i64 %132, i32 %135)
  store i32 %136, i32* %14, align 4
  br label %169

137:                                              ; preds = %23
  %138 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %139 = call i32 @mma8452_get_odr_index(%struct.mma8452_data* %138)
  store i32 %139, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %140

140:                                              ; preds = %162, %137
  %141 = load i32, i32* %13, align 4
  %142 = load i32**, i32*** @mma8452_os_ratio, align 8
  %143 = call i32 @ARRAY_SIZE(i32** %142)
  %144 = icmp slt i32 %141, %143
  br i1 %144, label %145, label %165

145:                                              ; preds = %140
  %146 = load i32**, i32*** @mma8452_os_ratio, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %145
  %158 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @mma8452_set_power_mode(%struct.mma8452_data* %158, i32 %159)
  store i32 %160, i32* %14, align 4
  br label %165

161:                                              ; preds = %145
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %13, align 4
  br label %140

165:                                              ; preds = %157, %140
  br label %169

166:                                              ; preds = %23
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %14, align 4
  br label %169

169:                                              ; preds = %166, %165, %130, %128, %94, %91, %67, %65, %34, %32
  %170 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %171 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %170)
  %172 = load i32, i32* %14, align 4
  store i32 %172, i32* %6, align 4
  br label %173

173:                                              ; preds = %169, %21
  %174 = load i32, i32* %6, align 4
  ret i32 %174
}

declare dso_local %struct.mma8452_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @mma8452_get_samp_freq_index(%struct.mma8452_data*, i32, i32) #1

declare dso_local i32 @mma8452_calculate_sleep(%struct.mma8452_data*) #1

declare dso_local i32 @mma8452_change_config(%struct.mma8452_data*, i64, i32) #1

declare dso_local i32 @mma8452_get_scale_index(%struct.mma8452_data*, i32, i32) #1

declare dso_local i32 @mma8452_set_hp_filter_frequency(%struct.mma8452_data*, i32, i32) #1

declare dso_local i32 @mma8452_get_odr_index(%struct.mma8452_data*) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @mma8452_set_power_mode(%struct.mma8452_data*, i32) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
