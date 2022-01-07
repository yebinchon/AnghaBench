; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_dps310.c_dps310_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_dps310.c_dps310_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.dps310_data = type { i32, i32, %struct.i2c_client* }
%struct.iio_dev = type { i32, i32*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@dps310_channels = common dso_local global i32 0, align 4
@dps310_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@dps310_regmap_config = common dso_local global i32 0, align 4
@dps310_reset = common dso_local global i32 0, align 4
@DPS310_PRS_CFG = common dso_local global i32 0, align 4
@DPS310_TMP_CFG = common dso_local global i32 0, align 4
@DPS310_TMP_EXT = common dso_local global i32 0, align 4
@DPS310_CFG_REG = common dso_local global i32 0, align 4
@DPS310_PRS_SHIFT_EN = common dso_local global i32 0, align 4
@DPS310_TMP_SHIFT_EN = common dso_local global i32 0, align 4
@DPS310_MEAS_CFG = common dso_local global i32 0, align 4
@DPS310_MEAS_CTRL_BITS = common dso_local global i32 0, align 4
@DPS310_PRS_EN = common dso_local global i32 0, align 4
@DPS310_TEMP_EN = common dso_local global i32 0, align 4
@DPS310_BACKGROUND = common dso_local global i32 0, align 4
@DPS310_COEF_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @dps310_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dps310_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.dps310_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %11, i32 16)
  store %struct.iio_dev* %12, %struct.iio_dev** %7, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %170

18:                                               ; preds = %2
  %19 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %20 = call %struct.dps310_data* @iio_priv(%struct.iio_dev* %19)
  store %struct.dps310_data* %20, %struct.dps310_data** %6, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.dps310_data*, %struct.dps310_data** %6, align 8
  %23 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %22, i32 0, i32 2
  store %struct.i2c_client* %21, %struct.i2c_client** %23, align 8
  %24 = load %struct.dps310_data*, %struct.dps310_data** %6, align 8
  %25 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %24, i32 0, i32 1
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %30 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32* %28, i32** %31, align 8
  %32 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %33 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %36 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @dps310_channels, align 4
  %38 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @dps310_channels, align 4
  %41 = call i32 @ARRAY_SIZE(i32 %40)
  %42 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %43 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 1
  store i32* @dps310_info, i32** %45, align 8
  %46 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %47 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %49, i32* @dps310_regmap_config)
  %51 = load %struct.dps310_data*, %struct.dps310_data** %6, align 8
  %52 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.dps310_data*, %struct.dps310_data** %6, align 8
  %54 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @IS_ERR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %18
  %59 = load %struct.dps310_data*, %struct.dps310_data** %6, align 8
  %60 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @PTR_ERR(i32 %61)
  store i32 %62, i32* %3, align 4
  br label %170

63:                                               ; preds = %18
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = load i32, i32* @dps310_reset, align 4
  %67 = load %struct.dps310_data*, %struct.dps310_data** %6, align 8
  %68 = call i32 @devm_add_action_or_reset(i32* %65, i32 %66, %struct.dps310_data* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %170

73:                                               ; preds = %63
  %74 = load %struct.dps310_data*, %struct.dps310_data** %6, align 8
  %75 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @DPS310_PRS_CFG, align 4
  %78 = call i32 @regmap_write(i32 %76, i32 %77, i32 0)
  store i32 %78, i32* %8, align 4
  %79 = load %struct.dps310_data*, %struct.dps310_data** %6, align 8
  %80 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @DPS310_TMP_CFG, align 4
  %83 = load i32, i32* @DPS310_TMP_EXT, align 4
  %84 = call i32 @regmap_write(i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %73
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %170

89:                                               ; preds = %73
  %90 = load %struct.dps310_data*, %struct.dps310_data** %6, align 8
  %91 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @DPS310_CFG_REG, align 4
  %94 = load i32, i32* @DPS310_PRS_SHIFT_EN, align 4
  %95 = load i32, i32* @DPS310_TMP_SHIFT_EN, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @regmap_write_bits(i32 %92, i32 %93, i32 %96, i32 0)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %89
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %3, align 4
  br label %170

102:                                              ; preds = %89
  %103 = load %struct.dps310_data*, %struct.dps310_data** %6, align 8
  %104 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @DPS310_MEAS_CFG, align 4
  %107 = load i32, i32* @DPS310_MEAS_CTRL_BITS, align 4
  %108 = call i32 @regmap_write_bits(i32 %105, i32 %106, i32 %107, i32 0)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %102
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %3, align 4
  br label %170

113:                                              ; preds = %102
  %114 = load %struct.dps310_data*, %struct.dps310_data** %6, align 8
  %115 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @DPS310_MEAS_CFG, align 4
  %118 = load i32, i32* @DPS310_MEAS_CTRL_BITS, align 4
  %119 = load i32, i32* @DPS310_PRS_EN, align 4
  %120 = load i32, i32* @DPS310_TEMP_EN, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @DPS310_BACKGROUND, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @regmap_write_bits(i32 %116, i32 %117, i32 %118, i32 %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %113
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %3, align 4
  br label %170

129:                                              ; preds = %113
  %130 = load %struct.dps310_data*, %struct.dps310_data** %6, align 8
  %131 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @DPS310_MEAS_CFG, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @DPS310_COEF_RDY, align 4
  %137 = and i32 %135, %136
  %138 = call i32 @regmap_read_poll_timeout(i32 %132, i32 %133, i32 %134, i32 %137, i32 10000, i32 40000)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %129
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %3, align 4
  br label %170

143:                                              ; preds = %129
  %144 = load %struct.dps310_data*, %struct.dps310_data** %6, align 8
  %145 = call i32 @dps310_get_coefs(%struct.dps310_data* %144)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i32, i32* %8, align 4
  store i32 %149, i32* %3, align 4
  br label %170

150:                                              ; preds = %143
  %151 = load %struct.dps310_data*, %struct.dps310_data** %6, align 8
  %152 = call i32 @dps310_temp_workaround(%struct.dps310_data* %151)
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = load i32, i32* %8, align 4
  store i32 %156, i32* %3, align 4
  br label %170

157:                                              ; preds = %150
  %158 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %159 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %158, i32 0, i32 0
  %160 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %161 = call i32 @devm_iio_device_register(i32* %159, %struct.iio_dev* %160)
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %157
  %165 = load i32, i32* %8, align 4
  store i32 %165, i32* %3, align 4
  br label %170

166:                                              ; preds = %157
  %167 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %168 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %169 = call i32 @i2c_set_clientdata(%struct.i2c_client* %167, %struct.iio_dev* %168)
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %166, %164, %155, %148, %141, %127, %111, %100, %87, %71, %58, %15
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.dps310_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_add_action_or_reset(i32*, i32, %struct.dps310_data*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dps310_get_coefs(%struct.dps310_data*) #1

declare dso_local i32 @dps310_temp_workaround(%struct.dps310_data*) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
