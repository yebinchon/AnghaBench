; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_lm3533-als.c_lm3533_als_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_lm3533-als.c_lm3533_als_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.lm3533_als_platform_data* }
%struct.lm3533_als_platform_data = type { i32 }
%struct.lm3533 = type { i64 }
%struct.lm3533_als = type { i64, i32, i32, %struct.platform_device*, %struct.lm3533* }
%struct.iio_dev = type { i32, %struct.TYPE_5__, i32, i32, i32, i32* }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"no platform data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@lm3533_als_info = common dso_local global i32 0, align 4
@lm3533_als_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to register ALS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lm3533_als_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3533_als_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lm3533*, align 8
  %5 = alloca %struct.lm3533_als_platform_data*, align 8
  %6 = alloca %struct.lm3533_als*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.lm3533* @dev_get_drvdata(i32 %12)
  store %struct.lm3533* %13, %struct.lm3533** %4, align 8
  %14 = load %struct.lm3533*, %struct.lm3533** %4, align 8
  %15 = icmp ne %struct.lm3533* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %140

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.lm3533_als_platform_data*, %struct.lm3533_als_platform_data** %22, align 8
  store %struct.lm3533_als_platform_data* %23, %struct.lm3533_als_platform_data** %5, align 8
  %24 = load %struct.lm3533_als_platform_data*, %struct.lm3533_als_platform_data** %5, align 8
  %25 = icmp ne %struct.lm3533_als_platform_data* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @dev_err(%struct.TYPE_6__* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %140

32:                                               ; preds = %19
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_6__* %34, i32 32)
  store %struct.iio_dev* %35, %struct.iio_dev** %7, align 8
  %36 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %37 = icmp ne %struct.iio_dev* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %140

41:                                               ; preds = %32
  %42 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %43 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %42, i32 0, i32 5
  store i32* @lm3533_als_info, i32** %43, align 8
  %44 = load i32, i32* @lm3533_als_channels, align 4
  %45 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %46 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @lm3533_als_channels, align 4
  %48 = call i32 @ARRAY_SIZE(i32 %47)
  %49 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 @dev_name(%struct.TYPE_6__* %52)
  %54 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %55 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %64 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %65 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %67 = call %struct.lm3533_als* @iio_priv(%struct.iio_dev* %66)
  store %struct.lm3533_als* %67, %struct.lm3533_als** %6, align 8
  %68 = load %struct.lm3533*, %struct.lm3533** %4, align 8
  %69 = load %struct.lm3533_als*, %struct.lm3533_als** %6, align 8
  %70 = getelementptr inbounds %struct.lm3533_als, %struct.lm3533_als* %69, i32 0, i32 4
  store %struct.lm3533* %68, %struct.lm3533** %70, align 8
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = load %struct.lm3533_als*, %struct.lm3533_als** %6, align 8
  %73 = getelementptr inbounds %struct.lm3533_als, %struct.lm3533_als* %72, i32 0, i32 3
  store %struct.platform_device* %71, %struct.platform_device** %73, align 8
  %74 = load %struct.lm3533*, %struct.lm3533** %4, align 8
  %75 = getelementptr inbounds %struct.lm3533, %struct.lm3533* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.lm3533_als*, %struct.lm3533_als** %6, align 8
  %78 = getelementptr inbounds %struct.lm3533_als, %struct.lm3533_als* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.lm3533_als*, %struct.lm3533_als** %6, align 8
  %80 = getelementptr inbounds %struct.lm3533_als, %struct.lm3533_als* %79, i32 0, i32 2
  %81 = call i32 @atomic_set(i32* %80, i32 0)
  %82 = load %struct.lm3533_als*, %struct.lm3533_als** %6, align 8
  %83 = getelementptr inbounds %struct.lm3533_als, %struct.lm3533_als* %82, i32 0, i32 1
  %84 = call i32 @mutex_init(i32* %83)
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %87 = call i32 @platform_set_drvdata(%struct.platform_device* %85, %struct.iio_dev* %86)
  %88 = load %struct.lm3533_als*, %struct.lm3533_als** %6, align 8
  %89 = getelementptr inbounds %struct.lm3533_als, %struct.lm3533_als* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %41
  %93 = load %struct.lm3533_als*, %struct.lm3533_als** %6, align 8
  %94 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %95 = call i32 @lm3533_als_setup_irq(%struct.lm3533_als* %93, %struct.iio_dev* %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %2, align 4
  br label %140

100:                                              ; preds = %92
  br label %101

101:                                              ; preds = %100, %41
  %102 = load %struct.lm3533_als*, %struct.lm3533_als** %6, align 8
  %103 = load %struct.lm3533_als_platform_data*, %struct.lm3533_als_platform_data** %5, align 8
  %104 = call i32 @lm3533_als_setup(%struct.lm3533_als* %102, %struct.lm3533_als_platform_data* %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %127

108:                                              ; preds = %101
  %109 = load %struct.lm3533_als*, %struct.lm3533_als** %6, align 8
  %110 = call i32 @lm3533_als_enable(%struct.lm3533_als* %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %127

114:                                              ; preds = %108
  %115 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %116 = call i32 @iio_device_register(%struct.iio_dev* %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = call i32 @dev_err(%struct.TYPE_6__* %121, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %124

123:                                              ; preds = %114
  store i32 0, i32* %2, align 4
  br label %140

124:                                              ; preds = %119
  %125 = load %struct.lm3533_als*, %struct.lm3533_als** %6, align 8
  %126 = call i32 @lm3533_als_disable(%struct.lm3533_als* %125)
  br label %127

127:                                              ; preds = %124, %113, %107
  %128 = load %struct.lm3533_als*, %struct.lm3533_als** %6, align 8
  %129 = getelementptr inbounds %struct.lm3533_als, %struct.lm3533_als* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.lm3533_als*, %struct.lm3533_als** %6, align 8
  %134 = getelementptr inbounds %struct.lm3533_als, %struct.lm3533_als* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %137 = call i32 @free_irq(i64 %135, %struct.iio_dev* %136)
  br label %138

138:                                              ; preds = %132, %127
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %138, %123, %98, %38, %26, %16
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.lm3533* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_6__*) #1

declare dso_local %struct.lm3533_als* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @lm3533_als_setup_irq(%struct.lm3533_als*, %struct.iio_dev*) #1

declare dso_local i32 @lm3533_als_setup(%struct.lm3533_als*, %struct.lm3533_als_platform_data*) #1

declare dso_local i32 @lm3533_als_enable(%struct.lm3533_als*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @lm3533_als_disable(%struct.lm3533_als*) #1

declare dso_local i32 @free_irq(i64, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
