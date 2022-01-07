; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16260.c_adis16260_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16260.c_adis16260_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.adis16260 = type { %struct.adis }
%struct.adis = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@adis16260_addresses = common dso_local global i32** null, align 8
@ADIS16260_SMPL_PRD_DIV_MASK = common dso_local global i32 0, align 4
@ADIS16260_SPI_SLOW = common dso_local global i32 0, align 4
@ADIS16260_SPI_FAST = common dso_local global i32 0, align 4
@ADIS16260_SMPL_PRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @adis16260_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16260_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.adis16260*, align 8
  %13 = alloca %struct.adis*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = call %struct.adis16260* @iio_priv(%struct.iio_dev* %17)
  store %struct.adis16260* %18, %struct.adis16260** %12, align 8
  %19 = load %struct.adis16260*, %struct.adis16260** %12, align 8
  %20 = getelementptr inbounds %struct.adis16260, %struct.adis16260* %19, i32 0, i32 0
  store %struct.adis* %20, %struct.adis** %13, align 8
  %21 = load i64, i64* %11, align 8
  switch i64 %21, label %120 [
    i64 130, label %22
    i64 129, label %44
    i64 128, label %66
  ]

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, -2048
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = icmp sge i32 %26, 2048
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %123

31:                                               ; preds = %25
  %32 = load i32**, i32*** @adis16260_addresses, align 8
  %33 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %34 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32*, i32** %32, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %15, align 4
  %40 = load %struct.adis*, %struct.adis** %13, align 8
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @adis_write_reg_16(%struct.adis* %40, i32 %41, i32 %42)
  store i32 %43, i32* %6, align 4
  br label %123

44:                                               ; preds = %5
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = icmp sge i32 %48, 4096
  br i1 %49, label %50, label %53

50:                                               ; preds = %47, %44
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %123

53:                                               ; preds = %47
  %54 = load i32**, i32*** @adis16260_addresses, align 8
  %55 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %56 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32*, i32** %54, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %15, align 4
  %62 = load %struct.adis*, %struct.adis** %13, align 8
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @adis_write_reg_16(%struct.adis* %62, i32 %63, i32 %64)
  store i32 %65, i32* %6, align 4
  br label %123

66:                                               ; preds = %5
  %67 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 0
  %69 = call i32 @mutex_lock(i32* %68)
  %70 = load %struct.adis*, %struct.adis** %13, align 8
  %71 = getelementptr inbounds %struct.adis, %struct.adis* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = call %struct.TYPE_3__* @spi_get_device_id(%struct.TYPE_4__* %72)
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = load i32, i32* %9, align 4
  %79 = sdiv i32 256, %78
  store i32 %79, i32* %16, align 4
  br label %83

80:                                               ; preds = %66
  %81 = load i32, i32* %9, align 4
  %82 = sdiv i32 2048, %81
  store i32 %82, i32* %16, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* @ADIS16260_SMPL_PRD_DIV_MASK, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @ADIS16260_SMPL_PRD_DIV_MASK, align 4
  store i32 %88, i32* %16, align 4
  br label %96

89:                                               ; preds = %83
  %90 = load i32, i32* %16, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %16, align 4
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95, %87
  %97 = load i32, i32* %16, align 4
  %98 = icmp sge i32 %97, 10
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32, i32* @ADIS16260_SPI_SLOW, align 4
  %101 = load %struct.adis*, %struct.adis** %13, align 8
  %102 = getelementptr inbounds %struct.adis, %struct.adis* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i32 %100, i32* %104, align 4
  br label %111

105:                                              ; preds = %96
  %106 = load i32, i32* @ADIS16260_SPI_FAST, align 4
  %107 = load %struct.adis*, %struct.adis** %13, align 8
  %108 = getelementptr inbounds %struct.adis, %struct.adis* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i32 %106, i32* %110, align 4
  br label %111

111:                                              ; preds = %105, %99
  %112 = load %struct.adis*, %struct.adis** %13, align 8
  %113 = load i32, i32* @ADIS16260_SMPL_PRD, align 4
  %114 = load i32, i32* %16, align 4
  %115 = call i32 @adis_write_reg_8(%struct.adis* %112, i32 %113, i32 %114)
  store i32 %115, i32* %14, align 4
  %116 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %117 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %116, i32 0, i32 0
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load i32, i32* %14, align 4
  store i32 %119, i32* %6, align 4
  br label %123

120:                                              ; preds = %5
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %120, %111, %53, %50, %31, %28
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local %struct.adis16260* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @adis_write_reg_16(%struct.adis*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_3__* @spi_get_device_id(%struct.TYPE_4__*) #1

declare dso_local i32 @adis_write_reg_8(%struct.adis*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
