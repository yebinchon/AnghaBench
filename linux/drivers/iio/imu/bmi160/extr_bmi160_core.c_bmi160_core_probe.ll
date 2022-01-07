; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/bmi160/extr_bmi160_core.c_bmi160_core_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/bmi160/extr_bmi160_core.c_bmi160_core_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.iio_dev = type { i8*, %struct.TYPE_3__, i32*, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.device* }
%struct.bmi160_data = type { %struct.regmap* }

@ENOMEM = common dso_local global i32 0, align 4
@bmi160_chip_uninit = common dso_local global i32 0, align 4
@bmi160_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@bmi160_info = common dso_local global i32 0, align 4
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@bmi160_trigger_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to setup IRQ %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Not setting up IRQ trigger\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bmi160_core_probe(%struct.device* %0, %struct.regmap* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.bmi160_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.regmap* %1, %struct.regmap** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %15, i32 8)
  store %struct.iio_dev* %16, %struct.iio_dev** %10, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %18 = icmp ne %struct.iio_dev* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %114

22:                                               ; preds = %4
  %23 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %24 = call %struct.bmi160_data* @iio_priv(%struct.iio_dev* %23)
  store %struct.bmi160_data* %24, %struct.bmi160_data** %11, align 8
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %27 = call i32 @dev_set_drvdata(%struct.device* %25, %struct.iio_dev* %26)
  %28 = load %struct.regmap*, %struct.regmap** %7, align 8
  %29 = load %struct.bmi160_data*, %struct.bmi160_data** %11, align 8
  %30 = getelementptr inbounds %struct.bmi160_data, %struct.bmi160_data* %29, i32 0, i32 0
  store %struct.regmap* %28, %struct.regmap** %30, align 8
  %31 = load %struct.bmi160_data*, %struct.bmi160_data** %11, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @bmi160_chip_init(%struct.bmi160_data* %31, i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %5, align 4
  br label %114

38:                                               ; preds = %22
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = load i32, i32* @bmi160_chip_uninit, align 4
  %41 = load %struct.bmi160_data*, %struct.bmi160_data** %11, align 8
  %42 = call i32 @devm_add_action_or_reset(%struct.device* %39, i32 %40, %struct.bmi160_data* %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %5, align 4
  br label %114

47:                                               ; preds = %38
  %48 = load i8*, i8** %8, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = call i64 @ACPI_HANDLE(%struct.device* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = call i8* @bmi160_match_acpi_device(%struct.device* %55)
  store i8* %56, i8** %8, align 8
  br label %57

57:                                               ; preds = %54, %50, %47
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store %struct.device* %58, %struct.device** %61, align 8
  %62 = load i32, i32* @bmi160_channels, align 4
  %63 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @bmi160_channels, align 4
  %66 = call i32 @ARRAY_SIZE(i32 %65)
  %67 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load i8*, i8** %8, align 8
  %70 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %71 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %73 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %74 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  %75 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %76 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %75, i32 0, i32 2
  store i32* @bmi160_info, i32** %76, align 8
  %77 = load %struct.device*, %struct.device** %6, align 8
  %78 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %79 = load i32, i32* @iio_pollfunc_store_time, align 4
  %80 = load i32, i32* @bmi160_trigger_handler, align 4
  %81 = call i32 @devm_iio_triggered_buffer_setup(%struct.device* %77, %struct.iio_dev* %78, i32 %79, i32 %80, i32* null)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %57
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %5, align 4
  br label %114

86:                                               ; preds = %57
  %87 = load %struct.device*, %struct.device** %6, align 8
  %88 = getelementptr inbounds %struct.device, %struct.device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @bmi160_get_irq(i32 %89, i32* %13)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %86
  %94 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @bmi160_setup_irq(%struct.iio_dev* %94, i32 %95, i32 %96)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %102 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %101, i32 0, i32 1
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @dev_err(%struct.TYPE_3__* %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %100, %93
  br label %110

106:                                              ; preds = %86
  %107 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %108 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %107, i32 0, i32 1
  %109 = call i32 @dev_info(%struct.TYPE_3__* %108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %110

110:                                              ; preds = %106, %105
  %111 = load %struct.device*, %struct.device** %6, align 8
  %112 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %113 = call i32 @devm_iio_device_register(%struct.device* %111, %struct.iio_dev* %112)
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %110, %84, %45, %36, %19
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.bmi160_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.iio_dev*) #1

declare dso_local i32 @bmi160_chip_init(%struct.bmi160_data*, i32) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.bmi160_data*) #1

declare dso_local i64 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i8* @bmi160_match_acpi_device(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_iio_triggered_buffer_setup(%struct.device*, %struct.iio_dev*, i32, i32, i32*) #1

declare dso_local i32 @bmi160_get_irq(i32, i32*) #1

declare dso_local i32 @bmi160_setup_irq(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
