; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac082s085.c_ti_dac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac082s085.c_ti_dac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_dac_spec = type { i32, i32 }
%struct.spi_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.ti_dac_chip = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_7__, i32 }
%struct.TYPE_6__ = type { %struct.spi_device* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device* }
%struct.TYPE_8__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@ti_dac_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ti_dac_channels = common dso_local global i32 0, align 4
@ti_dac_spec = common dso_local global %struct.ti_dac_spec* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@WRITE_ALL_UPDATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to initialize outputs to 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ti_dac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_dac_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ti_dac_spec*, align 8
  %6 = alloca %struct.ti_dac_chip*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %11, i32 48)
  store %struct.iio_dev* %12, %struct.iio_dev** %7, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %125

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %21 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store %struct.device* %19, %struct.device** %22, align 8
  %23 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %24 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %23, i32 0, i32 4
  store i32* @ti_dac_info, i32** %24, align 8
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %29 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %31 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %32 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @ti_dac_channels, align 4
  %34 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %35 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %38 = call i32 @spi_set_drvdata(%struct.spi_device* %36, %struct.iio_dev* %37)
  %39 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %40 = call %struct.ti_dac_chip* @iio_priv(%struct.iio_dev* %39)
  store %struct.ti_dac_chip* %40, %struct.ti_dac_chip** %6, align 8
  %41 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %6, align 8
  %42 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %41, i32 0, i32 5
  %43 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %6, align 8
  %44 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  store i32* %42, i32** %45, align 8
  %46 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %6, align 8
  %47 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 4, i32* %48, align 8
  %49 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %6, align 8
  %50 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %49, i32 0, i32 3
  %51 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %6, align 8
  %52 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %51, i32 0, i32 4
  %53 = call i32 @spi_message_init_with_transfers(%struct.TYPE_6__* %50, %struct.TYPE_7__* %52, i32 1)
  %54 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %55 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %6, align 8
  %56 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store %struct.spi_device* %54, %struct.spi_device** %57, align 8
  %58 = load %struct.ti_dac_spec*, %struct.ti_dac_spec** @ti_dac_spec, align 8
  %59 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %60 = call %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device* %59)
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.ti_dac_spec, %struct.ti_dac_spec* %58, i64 %62
  store %struct.ti_dac_spec* %63, %struct.ti_dac_spec** %5, align 8
  %64 = load %struct.ti_dac_spec*, %struct.ti_dac_spec** %5, align 8
  %65 = getelementptr inbounds %struct.ti_dac_spec, %struct.ti_dac_spec* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.ti_dac_spec*, %struct.ti_dac_spec** %5, align 8
  %70 = getelementptr inbounds %struct.ti_dac_spec, %struct.ti_dac_spec* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %6, align 8
  %73 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = call i32 @devm_regulator_get(%struct.device* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %76 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %6, align 8
  %77 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %6, align 8
  %79 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @IS_ERR(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %18
  %84 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %6, align 8
  %85 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @PTR_ERR(i32 %86)
  store i32 %87, i32* %2, align 4
  br label %125

88:                                               ; preds = %18
  %89 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %6, align 8
  %90 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @regulator_enable(i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %2, align 4
  br label %125

97:                                               ; preds = %88
  %98 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %6, align 8
  %99 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %98, i32 0, i32 1
  %100 = call i32 @mutex_init(i32* %99)
  %101 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %6, align 8
  %102 = load i32, i32* @WRITE_ALL_UPDATE, align 4
  %103 = call i32 @ti_dac_cmd(%struct.ti_dac_chip* %101, i32 %102, i32 0)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = call i32 @dev_err(%struct.device* %107, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %116

109:                                              ; preds = %97
  %110 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %111 = call i32 @iio_device_register(%struct.iio_dev* %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %116

115:                                              ; preds = %109
  store i32 0, i32* %2, align 4
  br label %125

116:                                              ; preds = %114, %106
  %117 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %6, align 8
  %118 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %117, i32 0, i32 1
  %119 = call i32 @mutex_destroy(i32* %118)
  %120 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %6, align 8
  %121 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @regulator_disable(i32 %122)
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %116, %115, %95, %83, %15
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local %struct.ti_dac_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_message_init_with_transfers(%struct.TYPE_6__*, %struct.TYPE_7__*, i32) #1

declare dso_local %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ti_dac_cmd(%struct.ti_dac_chip*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
