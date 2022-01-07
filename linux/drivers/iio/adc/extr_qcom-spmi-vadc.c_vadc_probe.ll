; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-vadc.c_vadc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-vadc.c_vadc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.iio_dev = type { i32, i32, i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node*, %struct.device* }
%struct.vadc_priv = type { i32, i32, i32, i32, i32, i32, i32, %struct.device*, %struct.regmap* }
%struct.regmap = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@vadc_isr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"spmi-vadc\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"reset failed\0A\00", align 1
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@vadc_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vadc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vadc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.vadc_priv*, align 8
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
  br label %155

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
  br label %155

34:                                               ; preds = %27
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %35, i32 48)
  store %struct.iio_dev* %36, %struct.iio_dev** %6, align 8
  %37 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %38 = icmp ne %struct.iio_dev* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %155

42:                                               ; preds = %34
  %43 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %44 = call %struct.vadc_priv* @iio_priv(%struct.iio_dev* %43)
  store %struct.vadc_priv* %44, %struct.vadc_priv** %7, align 8
  %45 = load %struct.regmap*, %struct.regmap** %8, align 8
  %46 = load %struct.vadc_priv*, %struct.vadc_priv** %7, align 8
  %47 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %46, i32 0, i32 8
  store %struct.regmap* %45, %struct.regmap** %47, align 8
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = load %struct.vadc_priv*, %struct.vadc_priv** %7, align 8
  %50 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %49, i32 0, i32 7
  store %struct.device* %48, %struct.device** %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.vadc_priv*, %struct.vadc_priv** %7, align 8
  %53 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 8
  %54 = load %struct.vadc_priv*, %struct.vadc_priv** %7, align 8
  %55 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = load %struct.vadc_priv*, %struct.vadc_priv** %7, align 8
  %57 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %56, i32 0, i32 5
  %58 = call i32 @init_completion(i32* %57)
  %59 = load %struct.vadc_priv*, %struct.vadc_priv** %7, align 8
  %60 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %59, i32 0, i32 4
  %61 = call i32 @mutex_init(i32* %60)
  %62 = load %struct.vadc_priv*, %struct.vadc_priv** %7, align 8
  %63 = call i32 @vadc_check_revision(%struct.vadc_priv* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %42
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %2, align 4
  br label %155

68:                                               ; preds = %42
  %69 = load %struct.vadc_priv*, %struct.vadc_priv** %7, align 8
  %70 = load %struct.device_node*, %struct.device_node** %4, align 8
  %71 = call i32 @vadc_get_dt_data(%struct.vadc_priv* %69, %struct.device_node* %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %2, align 4
  br label %155

76:                                               ; preds = %68
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = call i32 @platform_get_irq(%struct.platform_device* %77, i32 0)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %76
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @EPROBE_DEFER, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %86, %81
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %2, align 4
  br label %155

93:                                               ; preds = %86
  %94 = load %struct.vadc_priv*, %struct.vadc_priv** %7, align 8
  %95 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %94, i32 0, i32 1
  store i32 1, i32* %95, align 4
  br label %107

96:                                               ; preds = %76
  %97 = load %struct.device*, %struct.device** %5, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @vadc_isr, align 4
  %100 = load %struct.vadc_priv*, %struct.vadc_priv** %7, align 8
  %101 = call i32 @devm_request_irq(%struct.device* %97, i32 %98, i32 %99, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.vadc_priv* %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %2, align 4
  br label %155

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106, %93
  %108 = load %struct.vadc_priv*, %struct.vadc_priv** %7, align 8
  %109 = call i32 @vadc_reset(%struct.vadc_priv* %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load %struct.device*, %struct.device** %5, align 8
  %114 = call i32 @dev_err(%struct.device* %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %2, align 4
  br label %155

116:                                              ; preds = %107
  %117 = load %struct.vadc_priv*, %struct.vadc_priv** %7, align 8
  %118 = call i32 @vadc_measure_ref_points(%struct.vadc_priv* %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %2, align 4
  br label %155

123:                                              ; preds = %116
  %124 = load %struct.device*, %struct.device** %5, align 8
  %125 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %126 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  store %struct.device* %124, %struct.device** %127, align 8
  %128 = load %struct.device_node*, %struct.device_node** %4, align 8
  %129 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %130 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  store %struct.device_node* %128, %struct.device_node** %131, align 8
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %136 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %138 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %139 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 8
  %140 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %141 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %140, i32 0, i32 2
  store i32* @vadc_info, i32** %141, align 8
  %142 = load %struct.vadc_priv*, %struct.vadc_priv** %7, align 8
  %143 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %146 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load %struct.vadc_priv*, %struct.vadc_priv** %7, align 8
  %148 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %151 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.device*, %struct.device** %5, align 8
  %153 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %154 = call i32 @devm_iio_device_register(%struct.device* %152, %struct.iio_dev* %153)
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %123, %121, %112, %104, %91, %74, %66, %39, %32, %24
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local %struct.regmap* @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.vadc_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @vadc_check_revision(%struct.vadc_priv*) #1

declare dso_local i32 @vadc_get_dt_data(%struct.vadc_priv*, %struct.device_node*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.vadc_priv*) #1

declare dso_local i32 @vadc_reset(%struct.vadc_priv*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @vadc_measure_ref_points(%struct.vadc_priv*) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
