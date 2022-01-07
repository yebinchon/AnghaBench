; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.mma9553_data = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MMA9553_REG_CONF_HEIGHT_WEIGHT = common dso_local global i32 0, align 4
@MMA9553_MASK_CONF_HEIGHT = common dso_local global i32 0, align 4
@MMA9553_MASK_CONF_WEIGHT = common dso_local global i32 0, align 4
@MMA9553_REG_CONF_FILTER = common dso_local global i32 0, align 4
@MMA9553_MASK_CONF_FILTSTEP = common dso_local global i32 0, align 4
@MMA9553_MASK_CONF_FILTTIME = common dso_local global i32 0, align 4
@IIO_MOD_ROOT_SUM_SQUARED_X_Y_Z = common dso_local global i32 0, align 4
@MMA9553_REG_CONF_SPEED_STEP = common dso_local global i32 0, align 4
@MMA9553_MASK_CONF_SPDPRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @mma9553_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma9553_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.mma9553_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.mma9553_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.mma9553_data* %16, %struct.mma9553_data** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %214 [
    i64 131, label %18
    i64 135, label %52
    i64 134, label %82
    i64 133, label %107
    i64 132, label %140
    i64 130, label %172
  ]

18:                                               ; preds = %5
  %19 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %20 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = icmp eq i32 %21, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %217

29:                                               ; preds = %18
  %30 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %31 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %30, i32 0, i32 1
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %34 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @mma9551_set_power_state(i32 %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %29
  %41 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %42 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %6, align 4
  br label %217

45:                                               ; preds = %29
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %48 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %50 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  store i32 0, i32* %6, align 4
  br label %217

52:                                               ; preds = %5
  %53 = load i32, i32* %9, align 4
  %54 = mul nsw i32 %53, 100
  %55 = load i32, i32* %10, align 4
  %56 = sdiv i32 %55, 10000
  %57 = add nsw i32 %54, %56
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %52
  %61 = load i32, i32* %14, align 4
  %62 = icmp sgt i32 %61, 255
  br i1 %62, label %63, label %66

63:                                               ; preds = %60, %52
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %217

66:                                               ; preds = %60
  %67 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %68 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %67, i32 0, i32 1
  %69 = call i32 @mutex_lock(i32* %68)
  %70 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %71 = load i32, i32* @MMA9553_REG_CONF_HEIGHT_WEIGHT, align 4
  %72 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %73 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* @MMA9553_MASK_CONF_HEIGHT, align 4
  %77 = call i32 @mma9553_set_config(%struct.mma9553_data* %70, i32 %71, i32* %74, i32 %75, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %79 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %78, i32 0, i32 1
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %6, align 4
  br label %217

82:                                               ; preds = %5
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = icmp sgt i32 %86, 255
  br i1 %87, label %88, label %91

88:                                               ; preds = %85, %82
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %217

91:                                               ; preds = %85
  %92 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %93 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %92, i32 0, i32 1
  %94 = call i32 @mutex_lock(i32* %93)
  %95 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %96 = load i32, i32* @MMA9553_REG_CONF_HEIGHT_WEIGHT, align 4
  %97 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %98 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @MMA9553_MASK_CONF_WEIGHT, align 4
  %102 = call i32 @mma9553_set_config(%struct.mma9553_data* %95, i32 %96, i32* %99, i32 %100, i32 %101)
  store i32 %102, i32* %13, align 4
  %103 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %104 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %103, i32 0, i32 1
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %6, align 4
  br label %217

107:                                              ; preds = %5
  %108 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %109 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  switch i32 %110, label %137 [
    i32 129, label %111
  ]

111:                                              ; preds = %107
  %112 = load i32, i32* %9, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %6, align 4
  br label %217

117:                                              ; preds = %111
  %118 = load i32, i32* %9, align 4
  %119 = icmp sgt i32 %118, 6
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 6, i32* %9, align 4
  br label %121

121:                                              ; preds = %120, %117
  %122 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %123 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %122, i32 0, i32 1
  %124 = call i32 @mutex_lock(i32* %123)
  %125 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %126 = load i32, i32* @MMA9553_REG_CONF_FILTER, align 4
  %127 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %128 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @MMA9553_MASK_CONF_FILTSTEP, align 4
  %132 = call i32 @mma9553_set_config(%struct.mma9553_data* %125, i32 %126, i32* %129, i32 %130, i32 %131)
  store i32 %132, i32* %13, align 4
  %133 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %134 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %133, i32 0, i32 1
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load i32, i32* %13, align 4
  store i32 %136, i32* %6, align 4
  br label %217

137:                                              ; preds = %107
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %6, align 4
  br label %217

140:                                              ; preds = %5
  %141 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %142 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  switch i32 %143, label %169 [
    i32 129, label %144
  ]

144:                                              ; preds = %140
  %145 = load i32, i32* %9, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* %9, align 4
  %149 = icmp sgt i32 %148, 127
  br i1 %149, label %150, label %153

150:                                              ; preds = %147, %144
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %6, align 4
  br label %217

153:                                              ; preds = %147
  %154 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %155 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %154, i32 0, i32 1
  %156 = call i32 @mutex_lock(i32* %155)
  %157 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %158 = load i32, i32* @MMA9553_REG_CONF_FILTER, align 4
  %159 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %160 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 1
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* @MMA9553_MASK_CONF_FILTTIME, align 4
  %164 = call i32 @mma9553_set_config(%struct.mma9553_data* %157, i32 %158, i32* %161, i32 %162, i32 %163)
  store i32 %164, i32* %13, align 4
  %165 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %166 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %165, i32 0, i32 1
  %167 = call i32 @mutex_unlock(i32* %166)
  %168 = load i32, i32* %13, align 4
  store i32 %168, i32* %6, align 4
  br label %217

169:                                              ; preds = %140
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %6, align 4
  br label %217

172:                                              ; preds = %5
  %173 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %174 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  switch i32 %175, label %211 [
    i32 128, label %176
  ]

176:                                              ; preds = %172
  %177 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %178 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @IIO_MOD_ROOT_SUM_SQUARED_X_Y_Z, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = load i32, i32* @EINVAL, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %6, align 4
  br label %217

185:                                              ; preds = %176
  %186 = load i32, i32* %9, align 4
  %187 = icmp slt i32 %186, 2
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load i32, i32* @EINVAL, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %6, align 4
  br label %217

191:                                              ; preds = %185
  %192 = load i32, i32* %9, align 4
  %193 = icmp sgt i32 %192, 5
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  store i32 5, i32* %9, align 4
  br label %195

195:                                              ; preds = %194, %191
  %196 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %197 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %196, i32 0, i32 1
  %198 = call i32 @mutex_lock(i32* %197)
  %199 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %200 = load i32, i32* @MMA9553_REG_CONF_SPEED_STEP, align 4
  %201 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %202 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* @MMA9553_MASK_CONF_SPDPRD, align 4
  %206 = call i32 @mma9553_set_config(%struct.mma9553_data* %199, i32 %200, i32* %203, i32 %204, i32 %205)
  store i32 %206, i32* %13, align 4
  %207 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %208 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %207, i32 0, i32 1
  %209 = call i32 @mutex_unlock(i32* %208)
  %210 = load i32, i32* %13, align 4
  store i32 %210, i32* %6, align 4
  br label %217

211:                                              ; preds = %172
  %212 = load i32, i32* @EINVAL, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %6, align 4
  br label %217

214:                                              ; preds = %5
  %215 = load i32, i32* @EINVAL, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %6, align 4
  br label %217

217:                                              ; preds = %214, %211, %195, %188, %182, %169, %153, %150, %137, %121, %114, %91, %88, %66, %63, %45, %40, %28
  %218 = load i32, i32* %6, align 4
  ret i32 %218
}

declare dso_local %struct.mma9553_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mma9551_set_power_state(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mma9553_set_config(%struct.mma9553_data*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
