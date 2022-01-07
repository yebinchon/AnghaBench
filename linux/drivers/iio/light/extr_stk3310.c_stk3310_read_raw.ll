; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_stk3310.c_stk3310_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_stk3310.c_stk3310_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.stk3310_data = type { i32, i32, i32, i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@IIO_LIGHT = common dso_local global i64 0, align 8
@IIO_PROXIMITY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@STK3310_REG_ALS_DATA_MSB = common dso_local global i32 0, align 4
@STK3310_REG_PS_DATA_MSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"register read failed\0A\00", align 1
@IIO_VAL_INT = common dso_local global i32 0, align 4
@stk3310_it_table = common dso_local global i32** null, align 8
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@stk3310_scale_table = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @stk3310_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk3310_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.stk3310_data*, align 8
  %17 = alloca %struct.i2c_client*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.stk3310_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.stk3310_data* %19, %struct.stk3310_data** %16, align 8
  %20 = load %struct.stk3310_data*, %struct.stk3310_data** %16, align 8
  %21 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %20, i32 0, i32 6
  %22 = load %struct.i2c_client*, %struct.i2c_client** %21, align 8
  store %struct.i2c_client* %22, %struct.i2c_client** %17, align 8
  %23 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %24 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IIO_LIGHT, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %5
  %29 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %30 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IIO_PROXIMITY, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %157

37:                                               ; preds = %28, %5
  %38 = load i64, i64* %11, align 8
  switch i64 %38, label %154 [
    i64 129, label %39
    i64 130, label %76
    i64 128, label %115
  ]

39:                                               ; preds = %37
  %40 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %41 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IIO_LIGHT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @STK3310_REG_ALS_DATA_MSB, align 4
  store i32 %46, i32* %12, align 4
  br label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @STK3310_REG_PS_DATA_MSB, align 4
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = load %struct.stk3310_data*, %struct.stk3310_data** %16, align 8
  %51 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %50, i32 0, i32 4
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.stk3310_data*, %struct.stk3310_data** %16, align 8
  %54 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @regmap_bulk_read(i32 %55, i32 %56, i32* %13, i32 2)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %49
  %61 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.stk3310_data*, %struct.stk3310_data** %16, align 8
  %65 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %64, i32 0, i32 4
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %6, align 4
  br label %157

68:                                               ; preds = %49
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @be16_to_cpu(i32 %69)
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  %72 = load %struct.stk3310_data*, %struct.stk3310_data** %16, align 8
  %73 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %72, i32 0, i32 4
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %75, i32* %6, align 4
  br label %157

76:                                               ; preds = %37
  %77 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %78 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @IIO_LIGHT, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load %struct.stk3310_data*, %struct.stk3310_data** %16, align 8
  %84 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @regmap_field_read(i32 %85, i32* %15)
  store i32 %86, i32* %14, align 4
  br label %92

87:                                               ; preds = %76
  %88 = load %struct.stk3310_data*, %struct.stk3310_data** %16, align 8
  %89 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @regmap_field_read(i32 %90, i32* %15)
  store i32 %91, i32* %14, align 4
  br label %92

92:                                               ; preds = %87, %82
  %93 = load i32, i32* %14, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %6, align 4
  br label %157

97:                                               ; preds = %92
  %98 = load i32**, i32*** @stk3310_it_table, align 8
  %99 = load i32, i32* %15, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %9, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32**, i32*** @stk3310_it_table, align 8
  %107 = load i32, i32* %15, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %10, align 8
  store i32 %112, i32* %113, align 4
  %114 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %114, i32* %6, align 4
  br label %157

115:                                              ; preds = %37
  %116 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %117 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @IIO_LIGHT, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load %struct.stk3310_data*, %struct.stk3310_data** %16, align 8
  %123 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @regmap_field_read(i32 %124, i32* %15)
  store i32 %125, i32* %14, align 4
  br label %131

126:                                              ; preds = %115
  %127 = load %struct.stk3310_data*, %struct.stk3310_data** %16, align 8
  %128 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @regmap_field_read(i32 %129, i32* %15)
  store i32 %130, i32* %14, align 4
  br label %131

131:                                              ; preds = %126, %121
  %132 = load i32, i32* %14, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i32, i32* %14, align 4
  store i32 %135, i32* %6, align 4
  br label %157

136:                                              ; preds = %131
  %137 = load i32**, i32*** @stk3310_scale_table, align 8
  %138 = load i32, i32* %15, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %137, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %9, align 8
  store i32 %143, i32* %144, align 4
  %145 = load i32**, i32*** @stk3310_scale_table, align 8
  %146 = load i32, i32* %15, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %145, i64 %147
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %10, align 8
  store i32 %151, i32* %152, align 4
  %153 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %153, i32* %6, align 4
  br label %157

154:                                              ; preds = %37
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %6, align 4
  br label %157

157:                                              ; preds = %154, %136, %134, %97, %95, %68, %60, %34
  %158 = load i32, i32* %6, align 4
  ret i32 %158
}

declare dso_local %struct.stk3310_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @regmap_field_read(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
