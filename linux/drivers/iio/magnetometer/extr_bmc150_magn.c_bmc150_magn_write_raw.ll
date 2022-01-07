; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_bmc150_magn.c_bmc150_magn_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_bmc150_magn.c_bmc150_magn_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.bmc150_magn_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@BMC150_MAGN_REG_REP_XY = common dso_local global i32 0, align 4
@BMC150_MAGN_REG_REP_DATAMASK = common dso_local global i32 0, align 4
@BMC150_MAGN_REG_REP_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @bmc150_magn_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc150_magn_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.bmc150_magn_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.bmc150_magn_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.bmc150_magn_data* %15, %struct.bmc150_magn_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %116 [
    i64 131, label %17
    i64 132, label %37
  ]

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %12, align 8
  %20 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %119

26:                                               ; preds = %17
  %27 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %12, align 8
  %28 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %12, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @bmc150_magn_set_odr(%struct.bmc150_magn_data* %30, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %12, align 8
  %34 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %33, i32 0, i32 1
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %6, align 4
  br label %119

37:                                               ; preds = %5
  %38 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %39 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %113 [
    i32 130, label %41
    i32 129, label %41
    i32 128, label %77
  ]

41:                                               ; preds = %37, %37
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = icmp sgt i32 %45, 511
  br i1 %46, label %47, label %50

47:                                               ; preds = %44, %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %119

50:                                               ; preds = %44
  %51 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %12, align 8
  %52 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %51, i32 0, i32 1
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %12, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @bmc150_magn_set_max_odr(%struct.bmc150_magn_data* %54, i32 %55, i32 0, i32 0)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %12, align 8
  %61 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %6, align 4
  br label %119

64:                                               ; preds = %50
  %65 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %12, align 8
  %66 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @BMC150_MAGN_REG_REP_XY, align 4
  %69 = load i32, i32* @BMC150_MAGN_REG_REP_DATAMASK, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @BMC150_MAGN_REPXY_TO_REGVAL(i32 %70)
  %72 = call i32 @regmap_update_bits(i32 %67, i32 %68, i32 %69, i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %12, align 8
  %74 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %73, i32 0, i32 1
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %6, align 4
  br label %119

77:                                               ; preds = %37
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 1
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %9, align 4
  %82 = icmp sgt i32 %81, 256
  br i1 %82, label %83, label %86

83:                                               ; preds = %80, %77
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %119

86:                                               ; preds = %80
  %87 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %12, align 8
  %88 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %87, i32 0, i32 1
  %89 = call i32 @mutex_lock(i32* %88)
  %90 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %12, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @bmc150_magn_set_max_odr(%struct.bmc150_magn_data* %90, i32 0, i32 %91, i32 0)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %86
  %96 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %12, align 8
  %97 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %96, i32 0, i32 1
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* %6, align 4
  br label %119

100:                                              ; preds = %86
  %101 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %12, align 8
  %102 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @BMC150_MAGN_REG_REP_Z, align 4
  %105 = load i32, i32* @BMC150_MAGN_REG_REP_DATAMASK, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @BMC150_MAGN_REPZ_TO_REGVAL(i32 %106)
  %108 = call i32 @regmap_update_bits(i32 %103, i32 %104, i32 %105, i32 %107)
  store i32 %108, i32* %13, align 4
  %109 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %12, align 8
  %110 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %109, i32 0, i32 1
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %6, align 4
  br label %119

113:                                              ; preds = %37
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %6, align 4
  br label %119

116:                                              ; preds = %5
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %116, %113, %100, %95, %83, %64, %59, %47, %26, %23
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local %struct.bmc150_magn_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bmc150_magn_set_odr(%struct.bmc150_magn_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bmc150_magn_set_max_odr(%struct.bmc150_magn_data*, i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BMC150_MAGN_REPXY_TO_REGVAL(i32) #1

declare dso_local i32 @BMC150_MAGN_REPZ_TO_REGVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
