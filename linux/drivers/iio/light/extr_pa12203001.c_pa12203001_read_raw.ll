; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_pa12203001.c_pa12203001_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_pa12203001.c_pa12203001_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.pa12203001_data = type { i32 }

@PA12203001_ALS_EN_MASK = common dso_local global i32 0, align 4
@PA12203001_REG_ADL = common dso_local global i32 0, align 4
@PA12203001_PX_EN_MASK = common dso_local global i32 0, align 4
@PA12203001_REG_PDH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@PA12203001_REG_CFG0 = common dso_local global i32 0, align 4
@PA12203001_AFSR_MASK = common dso_local global i32 0, align 4
@pa12203001_scales = common dso_local global i32* null, align 8
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @pa12203001_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pa12203001_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pa12203001_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = call %struct.pa12203001_data* @iio_priv(%struct.iio_dev* %17)
  store %struct.pa12203001_data* %18, %struct.pa12203001_data** %12, align 8
  %19 = load i64, i64* %11, align 8
  switch i64 %19, label %111 [
    i64 131, label %20
    i64 130, label %88
  ]

20:                                               ; preds = %5
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %83 [
    i32 129, label %24
    i32 128, label %54
  ]

24:                                               ; preds = %20
  %25 = load i32, i32* @PA12203001_ALS_EN_MASK, align 4
  store i32 %25, i32* %14, align 4
  %26 = load %struct.pa12203001_data*, %struct.pa12203001_data** %12, align 8
  %27 = load i32, i32* %14, align 4
  %28 = call i32 @pa12203001_set_power_state(%struct.pa12203001_data* %26, i32 1, i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %6, align 4
  br label %119

33:                                               ; preds = %24
  %34 = load %struct.pa12203001_data*, %struct.pa12203001_data** %12, align 8
  %35 = getelementptr inbounds %struct.pa12203001_data, %struct.pa12203001_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PA12203001_REG_ADL, align 4
  %38 = call i32 @regmap_bulk_read(i32 %36, i32 %37, i32* %16, i32 2)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %114

42:                                               ; preds = %33
  %43 = load i32, i32* %16, align 4
  %44 = call i32 @le16_to_cpu(i32 %43)
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %struct.pa12203001_data*, %struct.pa12203001_data** %12, align 8
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @pa12203001_set_power_state(%struct.pa12203001_data* %46, i32 0, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %6, align 4
  br label %119

53:                                               ; preds = %42
  br label %86

54:                                               ; preds = %20
  %55 = load i32, i32* @PA12203001_PX_EN_MASK, align 4
  store i32 %55, i32* %14, align 4
  %56 = load %struct.pa12203001_data*, %struct.pa12203001_data** %12, align 8
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @pa12203001_set_power_state(%struct.pa12203001_data* %56, i32 1, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %6, align 4
  br label %119

63:                                               ; preds = %54
  %64 = load %struct.pa12203001_data*, %struct.pa12203001_data** %12, align 8
  %65 = getelementptr inbounds %struct.pa12203001_data, %struct.pa12203001_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @PA12203001_REG_PDH, align 4
  %68 = call i32 @regmap_read(i32 %66, i32 %67, i32* %15)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %114

72:                                               ; preds = %63
  %73 = load i32, i32* %15, align 4
  %74 = load i32*, i32** %9, align 8
  store i32 %73, i32* %74, align 4
  %75 = load %struct.pa12203001_data*, %struct.pa12203001_data** %12, align 8
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @pa12203001_set_power_state(%struct.pa12203001_data* %75, i32 0, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %6, align 4
  br label %119

82:                                               ; preds = %72
  br label %86

83:                                               ; preds = %20
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %119

86:                                               ; preds = %82, %53
  %87 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %87, i32* %6, align 4
  br label %119

88:                                               ; preds = %5
  %89 = load %struct.pa12203001_data*, %struct.pa12203001_data** %12, align 8
  %90 = getelementptr inbounds %struct.pa12203001_data, %struct.pa12203001_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @PA12203001_REG_CFG0, align 4
  %93 = call i32 @regmap_read(i32 %91, i32 %92, i32* %15)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %6, align 4
  br label %119

98:                                               ; preds = %88
  %99 = load i32*, i32** %9, align 8
  store i32 0, i32* %99, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* @PA12203001_AFSR_MASK, align 4
  %102 = and i32 %100, %101
  store i32 %102, i32* %15, align 4
  %103 = load i32*, i32** @pa12203001_scales, align 8
  %104 = load i32, i32* %15, align 4
  %105 = lshr i32 %104, 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %10, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %110, i32* %6, align 4
  br label %119

111:                                              ; preds = %5
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %6, align 4
  br label %119

114:                                              ; preds = %71, %41
  %115 = load %struct.pa12203001_data*, %struct.pa12203001_data** %12, align 8
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @pa12203001_set_power_state(%struct.pa12203001_data* %115, i32 0, i32 %116)
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %114, %111, %98, %96, %86, %83, %80, %61, %51, %31
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local %struct.pa12203001_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @pa12203001_set_power_state(%struct.pa12203001_data*, i32, i32) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
