; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-adc5.c_adc5_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-adc5.c_adc5_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.iio_dev = type { i32, i32, i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node*, %struct.device* }
%struct.adc5_chip = type { i32, i32, i32, i32, i32, i32, %struct.device*, %struct.regmap* }
%struct.regmap = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"adc get dt data failed\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@adc5_isr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"pm-adc5\00", align 1
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@adc5_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @adc5_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc5_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.adc5_chip*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 1
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %4, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 1
  store %struct.device* %17, %struct.device** %5, align 8
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.regmap* @dev_get_regmap(i32 %20, i32* null)
  store %struct.regmap* %21, %struct.regmap** %8, align 8
  %22 = load %struct.regmap*, %struct.regmap** %8, align 8
  %23 = icmp ne %struct.regmap* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %131

27:                                               ; preds = %1
  %28 = load %struct.device_node*, %struct.device_node** %4, align 8
  %29 = call i32 @of_property_read_u32(%struct.device_node* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %11)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %2, align 4
  br label %131

34:                                               ; preds = %27
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %35, i32 40)
  store %struct.iio_dev* %36, %struct.iio_dev** %6, align 8
  %37 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %38 = icmp ne %struct.iio_dev* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %131

42:                                               ; preds = %34
  %43 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %44 = call %struct.adc5_chip* @iio_priv(%struct.iio_dev* %43)
  store %struct.adc5_chip* %44, %struct.adc5_chip** %7, align 8
  %45 = load %struct.regmap*, %struct.regmap** %8, align 8
  %46 = load %struct.adc5_chip*, %struct.adc5_chip** %7, align 8
  %47 = getelementptr inbounds %struct.adc5_chip, %struct.adc5_chip* %46, i32 0, i32 7
  store %struct.regmap* %45, %struct.regmap** %47, align 8
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = load %struct.adc5_chip*, %struct.adc5_chip** %7, align 8
  %50 = getelementptr inbounds %struct.adc5_chip, %struct.adc5_chip* %49, i32 0, i32 6
  store %struct.device* %48, %struct.device** %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.adc5_chip*, %struct.adc5_chip** %7, align 8
  %53 = getelementptr inbounds %struct.adc5_chip, %struct.adc5_chip* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  %54 = load %struct.adc5_chip*, %struct.adc5_chip** %7, align 8
  %55 = getelementptr inbounds %struct.adc5_chip, %struct.adc5_chip* %54, i32 0, i32 4
  %56 = call i32 @init_completion(i32* %55)
  %57 = load %struct.adc5_chip*, %struct.adc5_chip** %7, align 8
  %58 = getelementptr inbounds %struct.adc5_chip, %struct.adc5_chip* %57, i32 0, i32 3
  %59 = call i32 @mutex_init(i32* %58)
  %60 = load %struct.adc5_chip*, %struct.adc5_chip** %7, align 8
  %61 = load %struct.device_node*, %struct.device_node** %4, align 8
  %62 = call i32 @adc5_get_dt_data(%struct.adc5_chip* %60, %struct.device_node* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %42
  %66 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %2, align 4
  br label %131

68:                                               ; preds = %42
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = call i32 @platform_get_irq(%struct.platform_device* %69, i32 0)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @EPROBE_DEFER, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %78, %73
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %2, align 4
  br label %131

85:                                               ; preds = %78
  %86 = load %struct.adc5_chip*, %struct.adc5_chip** %7, align 8
  %87 = getelementptr inbounds %struct.adc5_chip, %struct.adc5_chip* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  br label %99

88:                                               ; preds = %68
  %89 = load %struct.device*, %struct.device** %5, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @adc5_isr, align 4
  %92 = load %struct.adc5_chip*, %struct.adc5_chip** %7, align 8
  %93 = call i32 @devm_request_irq(%struct.device* %89, i32 %90, i32 %91, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.adc5_chip* %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %2, align 4
  br label %131

98:                                               ; preds = %88
  br label %99

99:                                               ; preds = %98, %85
  %100 = load %struct.device*, %struct.device** %5, align 8
  %101 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %102 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  store %struct.device* %100, %struct.device** %103, align 8
  %104 = load %struct.device_node*, %struct.device_node** %4, align 8
  %105 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %106 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store %struct.device_node* %104, %struct.device_node** %107, align 8
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %112 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %114 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %115 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 8
  %116 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %117 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %116, i32 0, i32 2
  store i32* @adc5_info, i32** %117, align 8
  %118 = load %struct.adc5_chip*, %struct.adc5_chip** %7, align 8
  %119 = getelementptr inbounds %struct.adc5_chip, %struct.adc5_chip* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %122 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.adc5_chip*, %struct.adc5_chip** %7, align 8
  %124 = getelementptr inbounds %struct.adc5_chip, %struct.adc5_chip* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %127 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.device*, %struct.device** %5, align 8
  %129 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %130 = call i32 @devm_iio_device_register(%struct.device* %128, %struct.iio_dev* %129)
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %99, %96, %83, %65, %39, %32, %24
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local %struct.regmap* @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.adc5_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @adc5_get_dt_data(%struct.adc5_chip*, %struct.device_node*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.adc5_chip*) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
