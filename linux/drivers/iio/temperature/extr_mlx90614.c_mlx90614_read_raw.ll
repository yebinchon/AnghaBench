; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90614.c_mlx90614_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90614.c_mlx90614_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.mlx90614_data = type { i32, i32 }

@MLX90614_TA = common dso_local global i32 0, align 4
@MLX90614_TOBJ1 = common dso_local global i32 0, align 4
@MLX90614_TOBJ2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@MLX90614_CONST_OFFSET_DEC = common dso_local global i32 0, align 4
@MLX90614_CONST_OFFSET_REM = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@MLX90614_CONST_SCALE = common dso_local global i32 0, align 4
@MLX90614_EMISSIVITY = common dso_local global i32 0, align 4
@MLX90614_CONST_RAW_EMISSIVITY_MAX = common dso_local global i32 0, align 4
@MLX90614_CONST_EMISSIVITY_RESOLUTION = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@MLX90614_CONFIG = common dso_local global i32 0, align 4
@mlx90614_iir_values = common dso_local global i32* null, align 8
@MLX90614_CONFIG_IIR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @mlx90614_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx90614_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mlx90614_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.mlx90614_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.mlx90614_data* %16, %struct.mlx90614_data** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %155 [
    i64 131, label %18
    i64 132, label %69
    i64 130, label %75
    i64 134, label %79
    i64 133, label %114
  ]

18:                                               ; preds = %5
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %20 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %36 [
    i32 129, label %22
    i32 128, label %24
  ]

22:                                               ; preds = %18
  %23 = load i32, i32* @MLX90614_TA, align 4
  store i32 %23, i32* %13, align 4
  br label %39

24:                                               ; preds = %18
  %25 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %26 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %32 [
    i32 0, label %28
    i32 1, label %30
  ]

28:                                               ; preds = %24
  %29 = load i32, i32* @MLX90614_TOBJ1, align 4
  store i32 %29, i32* %13, align 4
  br label %35

30:                                               ; preds = %24
  %31 = load i32, i32* @MLX90614_TOBJ2, align 4
  store i32 %31, i32* %13, align 4
  br label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %158

35:                                               ; preds = %30, %28
  br label %39

36:                                               ; preds = %18
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %158

39:                                               ; preds = %35, %22
  %40 = load %struct.mlx90614_data*, %struct.mlx90614_data** %12, align 8
  %41 = call i32 @mlx90614_power_get(%struct.mlx90614_data* %40, i32 1)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %6, align 4
  br label %158

46:                                               ; preds = %39
  %47 = load %struct.mlx90614_data*, %struct.mlx90614_data** %12, align 8
  %48 = getelementptr inbounds %struct.mlx90614_data, %struct.mlx90614_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @i2c_smbus_read_word_data(i32 %49, i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load %struct.mlx90614_data*, %struct.mlx90614_data** %12, align 8
  %53 = call i32 @mlx90614_power_put(%struct.mlx90614_data* %52)
  %54 = load i32, i32* %14, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %6, align 4
  br label %158

58:                                               ; preds = %46
  %59 = load i32, i32* %14, align 4
  %60 = and i32 %59, 32768
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %158

65:                                               ; preds = %58
  %66 = load i32, i32* %14, align 4
  %67 = load i32*, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %68, i32* %6, align 4
  br label %158

69:                                               ; preds = %5
  %70 = load i32, i32* @MLX90614_CONST_OFFSET_DEC, align 4
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* @MLX90614_CONST_OFFSET_REM, align 4
  %73 = load i32*, i32** %10, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %74, i32* %6, align 4
  br label %158

75:                                               ; preds = %5
  %76 = load i32, i32* @MLX90614_CONST_SCALE, align 4
  %77 = load i32*, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %78, i32* %6, align 4
  br label %158

79:                                               ; preds = %5
  %80 = load %struct.mlx90614_data*, %struct.mlx90614_data** %12, align 8
  %81 = call i32 @mlx90614_power_get(%struct.mlx90614_data* %80, i32 0)
  %82 = load %struct.mlx90614_data*, %struct.mlx90614_data** %12, align 8
  %83 = getelementptr inbounds %struct.mlx90614_data, %struct.mlx90614_data* %82, i32 0, i32 0
  %84 = call i32 @mutex_lock(i32* %83)
  %85 = load %struct.mlx90614_data*, %struct.mlx90614_data** %12, align 8
  %86 = getelementptr inbounds %struct.mlx90614_data, %struct.mlx90614_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @MLX90614_EMISSIVITY, align 4
  %89 = call i32 @i2c_smbus_read_word_data(i32 %87, i32 %88)
  store i32 %89, i32* %14, align 4
  %90 = load %struct.mlx90614_data*, %struct.mlx90614_data** %12, align 8
  %91 = getelementptr inbounds %struct.mlx90614_data, %struct.mlx90614_data* %90, i32 0, i32 0
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load %struct.mlx90614_data*, %struct.mlx90614_data** %12, align 8
  %94 = call i32 @mlx90614_power_put(%struct.mlx90614_data* %93)
  %95 = load i32, i32* %14, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %79
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %6, align 4
  br label %158

99:                                               ; preds = %79
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* @MLX90614_CONST_RAW_EMISSIVITY_MAX, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32*, i32** %9, align 8
  store i32 1, i32* %104, align 4
  %105 = load i32*, i32** %10, align 8
  store i32 0, i32* %105, align 4
  br label %112

106:                                              ; preds = %99
  %107 = load i32*, i32** %9, align 8
  store i32 0, i32* %107, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @MLX90614_CONST_EMISSIVITY_RESOLUTION, align 4
  %110 = mul nsw i32 %108, %109
  %111 = load i32*, i32** %10, align 8
  store i32 %110, i32* %111, align 4
  br label %112

112:                                              ; preds = %106, %103
  %113 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %113, i32* %6, align 4
  br label %158

114:                                              ; preds = %5
  %115 = load %struct.mlx90614_data*, %struct.mlx90614_data** %12, align 8
  %116 = call i32 @mlx90614_power_get(%struct.mlx90614_data* %115, i32 0)
  %117 = load %struct.mlx90614_data*, %struct.mlx90614_data** %12, align 8
  %118 = getelementptr inbounds %struct.mlx90614_data, %struct.mlx90614_data* %117, i32 0, i32 0
  %119 = call i32 @mutex_lock(i32* %118)
  %120 = load %struct.mlx90614_data*, %struct.mlx90614_data** %12, align 8
  %121 = getelementptr inbounds %struct.mlx90614_data, %struct.mlx90614_data* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @MLX90614_CONFIG, align 4
  %124 = call i32 @i2c_smbus_read_word_data(i32 %122, i32 %123)
  store i32 %124, i32* %14, align 4
  %125 = load %struct.mlx90614_data*, %struct.mlx90614_data** %12, align 8
  %126 = getelementptr inbounds %struct.mlx90614_data, %struct.mlx90614_data* %125, i32 0, i32 0
  %127 = call i32 @mutex_unlock(i32* %126)
  %128 = load %struct.mlx90614_data*, %struct.mlx90614_data** %12, align 8
  %129 = call i32 @mlx90614_power_put(%struct.mlx90614_data* %128)
  %130 = load i32, i32* %14, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %114
  %133 = load i32, i32* %14, align 4
  store i32 %133, i32* %6, align 4
  br label %158

134:                                              ; preds = %114
  %135 = load i32*, i32** @mlx90614_iir_values, align 8
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* @MLX90614_CONFIG_IIR_MASK, align 4
  %138 = and i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %135, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = sdiv i32 %141, 100
  %143 = load i32*, i32** %9, align 8
  store i32 %142, i32* %143, align 4
  %144 = load i32*, i32** @mlx90614_iir_values, align 8
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* @MLX90614_CONFIG_IIR_MASK, align 4
  %147 = and i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %144, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = srem i32 %150, 100
  %152 = mul nsw i32 %151, 10000
  %153 = load i32*, i32** %10, align 8
  store i32 %152, i32* %153, align 4
  %154 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %154, i32* %6, align 4
  br label %158

155:                                              ; preds = %5
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %155, %134, %132, %112, %97, %75, %69, %65, %62, %56, %44, %36, %32
  %159 = load i32, i32* %6, align 4
  ret i32 %159
}

declare dso_local %struct.mlx90614_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mlx90614_power_get(%struct.mlx90614_data*, i32) #1

declare dso_local i32 @i2c_smbus_read_word_data(i32, i32) #1

declare dso_local i32 @mlx90614_power_put(%struct.mlx90614_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
