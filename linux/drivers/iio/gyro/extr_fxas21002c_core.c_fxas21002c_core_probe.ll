; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_core_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_core_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.fxas21002c_data = type { i32, i32, %struct.regmap_field**, %struct.regmap* }
%struct.regmap_field = type { i32 }
%struct.iio_dev = type { i8*, i32*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }

@ENOMEM = common dso_local global i32 0, align 4
@F_MAX_FIELDS = common dso_local global i32 0, align 4
@fxas21002c_reg_fields = common dso_local global i32* null, align 8
@fxas21002c_power_disable_action = common dso_local global i32 0, align 4
@fxas21002c_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@fxas21002c_info = common dso_local global i32 0, align 4
@fxas21002c_trigger_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fxas21002c_core_probe(%struct.device* %0, %struct.regmap* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fxas21002c_data*, align 8
  %11 = alloca %struct.iio_dev*, align 8
  %12 = alloca %struct.regmap_field*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.regmap* %1, %struct.regmap** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %15, i32 24)
  store %struct.iio_dev* %16, %struct.iio_dev** %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %18 = icmp ne %struct.iio_dev* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %162

22:                                               ; preds = %4
  %23 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %24 = call %struct.fxas21002c_data* @iio_priv(%struct.iio_dev* %23)
  store %struct.fxas21002c_data* %24, %struct.fxas21002c_data** %10, align 8
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %27 = call i32 @dev_set_drvdata(%struct.device* %25, %struct.iio_dev* %26)
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %10, align 8
  %30 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.regmap*, %struct.regmap** %7, align 8
  %32 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %10, align 8
  %33 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %32, i32 0, i32 3
  store %struct.regmap* %31, %struct.regmap** %33, align 8
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %63, %22
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @F_MAX_FIELDS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %34
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %10, align 8
  %41 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %40, i32 0, i32 3
  %42 = load %struct.regmap*, %struct.regmap** %41, align 8
  %43 = load i32*, i32** @fxas21002c_reg_fields, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.regmap_field* @devm_regmap_field_alloc(%struct.device* %39, %struct.regmap* %42, i32 %47)
  store %struct.regmap_field* %48, %struct.regmap_field** %12, align 8
  %49 = load %struct.regmap_field*, %struct.regmap_field** %12, align 8
  %50 = call i64 @IS_ERR(%struct.regmap_field* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %38
  %53 = load %struct.regmap_field*, %struct.regmap_field** %12, align 8
  %54 = call i32 @PTR_ERR(%struct.regmap_field* %53)
  store i32 %54, i32* %5, align 4
  br label %162

55:                                               ; preds = %38
  %56 = load %struct.regmap_field*, %struct.regmap_field** %12, align 8
  %57 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %10, align 8
  %58 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %57, i32 0, i32 2
  %59 = load %struct.regmap_field**, %struct.regmap_field*** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.regmap_field*, %struct.regmap_field** %59, i64 %61
  store %struct.regmap_field* %56, %struct.regmap_field** %62, align 8
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %34

66:                                               ; preds = %34
  %67 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %10, align 8
  %68 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %67, i32 0, i32 1
  %69 = call i32 @mutex_init(i32* %68)
  %70 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %10, align 8
  %71 = call i32 @fxas21002c_regulators_get(%struct.fxas21002c_data* %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %5, align 4
  br label %162

76:                                               ; preds = %66
  %77 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %10, align 8
  %78 = call i32 @fxas21002c_power_enable(%struct.fxas21002c_data* %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %5, align 4
  br label %162

83:                                               ; preds = %76
  %84 = load %struct.device*, %struct.device** %6, align 8
  %85 = load i32, i32* @fxas21002c_power_disable_action, align 4
  %86 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %10, align 8
  %87 = call i32 @devm_add_action_or_reset(%struct.device* %84, i32 %85, %struct.fxas21002c_data* %86)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %5, align 4
  br label %162

92:                                               ; preds = %83
  %93 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %10, align 8
  %94 = call i32 @fxas21002c_chip_init(%struct.fxas21002c_data* %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %5, align 4
  br label %162

99:                                               ; preds = %92
  %100 = load %struct.device*, %struct.device** %6, align 8
  %101 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %102 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store %struct.device* %100, %struct.device** %103, align 8
  %104 = load i32, i32* @fxas21002c_channels, align 4
  %105 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %106 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* @fxas21002c_channels, align 4
  %108 = call i32 @ARRAY_SIZE(i32 %107)
  %109 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %110 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load i8*, i8** %9, align 8
  %112 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %113 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %112, i32 0, i32 0
  store i8* %111, i8** %113, align 8
  %114 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %115 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %116 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %118 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %117, i32 0, i32 1
  store i32* @fxas21002c_info, i32** %118, align 8
  %119 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %10, align 8
  %120 = call i32 @fxas21002c_trigger_probe(%struct.fxas21002c_data* %119)
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %99
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %5, align 4
  br label %162

125:                                              ; preds = %99
  %126 = load %struct.device*, %struct.device** %6, align 8
  %127 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %128 = load i32, i32* @fxas21002c_trigger_handler, align 4
  %129 = call i32 @devm_iio_triggered_buffer_setup(%struct.device* %126, %struct.iio_dev* %127, i32* null, i32 %128, i32* null)
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = load i32, i32* %14, align 4
  store i32 %133, i32* %5, align 4
  br label %162

134:                                              ; preds = %125
  %135 = load %struct.device*, %struct.device** %6, align 8
  %136 = call i32 @pm_runtime_set_active(%struct.device* %135)
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i32, i32* %14, align 4
  store i32 %140, i32* %5, align 4
  br label %162

141:                                              ; preds = %134
  %142 = load %struct.device*, %struct.device** %6, align 8
  %143 = call i32 @pm_runtime_enable(%struct.device* %142)
  %144 = load %struct.device*, %struct.device** %6, align 8
  %145 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %144, i32 2000)
  %146 = load %struct.device*, %struct.device** %6, align 8
  %147 = call i32 @pm_runtime_use_autosuspend(%struct.device* %146)
  %148 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %149 = call i32 @iio_device_register(%struct.iio_dev* %148)
  store i32 %149, i32* %14, align 4
  %150 = load i32, i32* %14, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %141
  br label %154

153:                                              ; preds = %141
  store i32 0, i32* %5, align 4
  br label %162

154:                                              ; preds = %152
  %155 = load %struct.device*, %struct.device** %6, align 8
  %156 = call i32 @pm_runtime_disable(%struct.device* %155)
  %157 = load %struct.device*, %struct.device** %6, align 8
  %158 = call i32 @pm_runtime_set_suspended(%struct.device* %157)
  %159 = load %struct.device*, %struct.device** %6, align 8
  %160 = call i32 @pm_runtime_put_noidle(%struct.device* %159)
  %161 = load i32, i32* %14, align 4
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %154, %153, %139, %132, %123, %97, %90, %81, %74, %52, %19
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.fxas21002c_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.iio_dev*) #1

declare dso_local %struct.regmap_field* @devm_regmap_field_alloc(%struct.device*, %struct.regmap*, i32) #1

declare dso_local i64 @IS_ERR(%struct.regmap_field*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap_field*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @fxas21002c_regulators_get(%struct.fxas21002c_data*) #1

declare dso_local i32 @fxas21002c_power_enable(%struct.fxas21002c_data*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.fxas21002c_data*) #1

declare dso_local i32 @fxas21002c_chip_init(%struct.fxas21002c_data*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @fxas21002c_trigger_probe(%struct.fxas21002c_data*) #1

declare dso_local i32 @devm_iio_triggered_buffer_setup(%struct.device*, %struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
