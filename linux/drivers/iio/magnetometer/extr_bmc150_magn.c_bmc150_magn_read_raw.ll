; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_bmc150_magn.c_bmc150_magn_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_bmc150_magn.c_bmc150_magn_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32 }
%struct.bmc150_magn_data = type { i32, i32 }

@AXIS_XYZ_MAX = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@BMC150_MAGN_REG_REP_XY = common dso_local global i32 0, align 4
@BMC150_MAGN_REG_REP_Z = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @bmc150_magn_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc150_magn_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.bmc150_magn_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.bmc150_magn_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.bmc150_magn_data* %19, %struct.bmc150_magn_data** %12, align 8
  %20 = load i32, i32* @AXIS_XYZ_MAX, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %15, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %16, align 8
  %24 = load i64, i64* %11, align 8
  switch i64 %24, label %129 [
    i64 133, label %25
    i64 131, label %78
    i64 132, label %82
    i64 134, label %92
  ]

25:                                               ; preds = %5
  %26 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %27 = call i32 @iio_buffer_enabled(%struct.iio_dev* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %132

32:                                               ; preds = %25
  %33 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %12, align 8
  %34 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %12, align 8
  %37 = call i32 @bmc150_magn_set_power_state(%struct.bmc150_magn_data* %36, i32 1)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %12, align 8
  %42 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %132

45:                                               ; preds = %32
  %46 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %12, align 8
  %47 = call i32 @bmc150_magn_read_xyz(%struct.bmc150_magn_data* %46, i32* %23)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %12, align 8
  %52 = call i32 @bmc150_magn_set_power_state(%struct.bmc150_magn_data* %51, i32 0)
  %53 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %12, align 8
  %54 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %132

57:                                               ; preds = %45
  %58 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %59 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %23, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  %64 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %12, align 8
  %65 = call i32 @bmc150_magn_set_power_state(%struct.bmc150_magn_data* %64, i32 0)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %57
  %69 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %12, align 8
  %70 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %132

73:                                               ; preds = %57
  %74 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %12, align 8
  %75 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %77, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %132

78:                                               ; preds = %5
  %79 = load i32*, i32** %9, align 8
  store i32 0, i32* %79, align 4
  %80 = load i32*, i32** %10, align 8
  store i32 625, i32* %80, align 4
  %81 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %81, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %132

82:                                               ; preds = %5
  %83 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %12, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = call i32 @bmc150_magn_get_odr(%struct.bmc150_magn_data* %83, i32* %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %132

90:                                               ; preds = %82
  %91 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %91, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %132

92:                                               ; preds = %5
  %93 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %94 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  switch i32 %95, label %126 [
    i32 130, label %96
    i32 129, label %96
    i32 128, label %111
  ]

96:                                               ; preds = %92, %92
  %97 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %12, align 8
  %98 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @BMC150_MAGN_REG_REP_XY, align 4
  %101 = call i32 @regmap_read(i32 %99, i32 %100, i32* %14)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i32, i32* %13, align 4
  store i32 %105, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %132

106:                                              ; preds = %96
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @BMC150_MAGN_REGVAL_TO_REPXY(i32 %107)
  %109 = load i32*, i32** %9, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %110, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %132

111:                                              ; preds = %92
  %112 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %12, align 8
  %113 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @BMC150_MAGN_REG_REP_Z, align 4
  %116 = call i32 @regmap_read(i32 %114, i32 %115, i32* %14)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %111
  %120 = load i32, i32* %13, align 4
  store i32 %120, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %132

121:                                              ; preds = %111
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @BMC150_MAGN_REGVAL_TO_REPZ(i32 %122)
  %124 = load i32*, i32** %9, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %125, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %132

126:                                              ; preds = %92
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %132

129:                                              ; preds = %5
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %132

132:                                              ; preds = %129, %126, %121, %119, %106, %104, %90, %88, %78, %73, %68, %50, %40, %29
  %133 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %133)
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

declare dso_local %struct.bmc150_magn_data* @iio_priv(%struct.iio_dev*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @iio_buffer_enabled(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bmc150_magn_set_power_state(%struct.bmc150_magn_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bmc150_magn_read_xyz(%struct.bmc150_magn_data*, i32*) #1

declare dso_local i32 @bmc150_magn_get_odr(%struct.bmc150_magn_data*, i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BMC150_MAGN_REGVAL_TO_REPXY(i32) #1

declare dso_local i32 @BMC150_MAGN_REGVAL_TO_REPZ(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
