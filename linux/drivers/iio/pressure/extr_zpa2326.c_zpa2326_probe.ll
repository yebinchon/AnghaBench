; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.iio_dev = type { i32 }
%struct.zpa2326_private = type { %struct.regmap*, i32, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@zpa2326_trigger_handler = common dso_local global i32 0, align 4
@zpa2326_buffer_setup_ops = common dso_local global i32 0, align 4
@ZPA2326_DEVICE_ID_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"found device with unexpected id %02x\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpa2326_probe(%struct.device* %0, i8* %1, i32 %2, i32 %3, %struct.regmap* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.regmap*, align 8
  %12 = alloca %struct.iio_dev*, align 8
  %13 = alloca %struct.zpa2326_private*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.regmap* %4, %struct.regmap** %11, align 8
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load %struct.regmap*, %struct.regmap** %11, align 8
  %19 = call %struct.iio_dev* @zpa2326_create_managed_iiodev(%struct.device* %16, i8* %17, %struct.regmap* %18)
  store %struct.iio_dev* %19, %struct.iio_dev** %12, align 8
  %20 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  %21 = icmp ne %struct.iio_dev* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %152

25:                                               ; preds = %5
  %26 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  %27 = call %struct.zpa2326_private* @iio_priv(%struct.iio_dev* %26)
  store %struct.zpa2326_private* %27, %struct.zpa2326_private** %13, align 8
  %28 = load %struct.device*, %struct.device** %7, align 8
  %29 = call i8* @devm_regulator_get(%struct.device* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.zpa2326_private*, %struct.zpa2326_private** %13, align 8
  %31 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load %struct.zpa2326_private*, %struct.zpa2326_private** %13, align 8
  %33 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %32, i32 0, i32 3
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @IS_ERR(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %25
  %38 = load %struct.zpa2326_private*, %struct.zpa2326_private** %13, align 8
  %39 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @PTR_ERR(i8* %40)
  store i32 %41, i32* %6, align 4
  br label %152

42:                                               ; preds = %25
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = call i8* @devm_regulator_get(%struct.device* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.zpa2326_private*, %struct.zpa2326_private** %13, align 8
  %46 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load %struct.zpa2326_private*, %struct.zpa2326_private** %13, align 8
  %48 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @IS_ERR(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = load %struct.zpa2326_private*, %struct.zpa2326_private** %13, align 8
  %54 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @PTR_ERR(i8* %55)
  store i32 %56, i32* %6, align 4
  br label %152

57:                                               ; preds = %42
  %58 = call i32 (...) @zpa2326_highest_frequency()
  %59 = load %struct.zpa2326_private*, %struct.zpa2326_private** %13, align 8
  %60 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.regmap*, %struct.regmap** %11, align 8
  %62 = load %struct.zpa2326_private*, %struct.zpa2326_private** %13, align 8
  %63 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %62, i32 0, i32 0
  store %struct.regmap* %61, %struct.regmap** %63, align 8
  %64 = load %struct.device*, %struct.device** %7, align 8
  %65 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  %66 = load i32, i32* @zpa2326_trigger_handler, align 4
  %67 = call i32 @devm_iio_triggered_buffer_setup(%struct.device* %64, %struct.iio_dev* %65, i32* null, i32 %66, i32* @zpa2326_buffer_setup_ops)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %57
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %6, align 4
  br label %152

72:                                               ; preds = %57
  %73 = load %struct.device*, %struct.device** %7, align 8
  %74 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  %75 = load %struct.zpa2326_private*, %struct.zpa2326_private** %13, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @zpa2326_init_managed_trigger(%struct.device* %73, %struct.iio_dev* %74, %struct.zpa2326_private* %75, i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %6, align 4
  br label %152

82:                                               ; preds = %72
  %83 = load %struct.device*, %struct.device** %7, align 8
  %84 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  %85 = load %struct.zpa2326_private*, %struct.zpa2326_private** %13, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @zpa2326_init_managed_irq(%struct.device* %83, %struct.iio_dev* %84, %struct.zpa2326_private* %85, i32 %86)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %6, align 4
  br label %152

92:                                               ; preds = %82
  %93 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  %94 = load %struct.zpa2326_private*, %struct.zpa2326_private** %13, align 8
  %95 = call i32 @zpa2326_power_on(%struct.iio_dev* %93, %struct.zpa2326_private* %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %6, align 4
  br label %152

100:                                              ; preds = %92
  %101 = load %struct.regmap*, %struct.regmap** %11, align 8
  %102 = load i32, i32* @ZPA2326_DEVICE_ID_REG, align 4
  %103 = call i32 @regmap_read(%struct.regmap* %101, i32 %102, i32* %15)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %144

107:                                              ; preds = %100
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load %struct.device*, %struct.device** %7, align 8
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @dev_err(%struct.device* %112, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @ENODEV, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %14, align 4
  br label %144

117:                                              ; preds = %107
  %118 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @zpa2326_config_oneshot(%struct.iio_dev* %118, i32 %119)
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %144

124:                                              ; preds = %117
  %125 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  %126 = call i32 @zpa2326_sleep(%struct.iio_dev* %125)
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %147

130:                                              ; preds = %124
  %131 = load %struct.device*, %struct.device** %7, align 8
  %132 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  %133 = call i32 @dev_set_drvdata(%struct.device* %131, %struct.iio_dev* %132)
  %134 = load %struct.device*, %struct.device** %7, align 8
  %135 = call i32 @zpa2326_init_runtime(%struct.device* %134)
  %136 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  %137 = call i32 @iio_device_register(%struct.iio_dev* %136)
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %14, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %130
  %141 = load %struct.device*, %struct.device** %7, align 8
  %142 = call i32 @zpa2326_fini_runtime(%struct.device* %141)
  br label %147

143:                                              ; preds = %130
  store i32 0, i32* %6, align 4
  br label %152

144:                                              ; preds = %123, %111, %106
  %145 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  %146 = call i32 @zpa2326_sleep(%struct.iio_dev* %145)
  br label %147

147:                                              ; preds = %144, %140, %129
  %148 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  %149 = load %struct.zpa2326_private*, %struct.zpa2326_private** %13, align 8
  %150 = call i32 @zpa2326_power_off(%struct.iio_dev* %148, %struct.zpa2326_private* %149)
  %151 = load i32, i32* %14, align 4
  store i32 %151, i32* %6, align 4
  br label %152

152:                                              ; preds = %147, %143, %98, %90, %80, %70, %52, %37, %22
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

declare dso_local %struct.iio_dev* @zpa2326_create_managed_iiodev(%struct.device*, i8*, %struct.regmap*) #1

declare dso_local %struct.zpa2326_private* @iio_priv(%struct.iio_dev*) #1

declare dso_local i8* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @zpa2326_highest_frequency(...) #1

declare dso_local i32 @devm_iio_triggered_buffer_setup(%struct.device*, %struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @zpa2326_init_managed_trigger(%struct.device*, %struct.iio_dev*, %struct.zpa2326_private*, i32) #1

declare dso_local i32 @zpa2326_init_managed_irq(%struct.device*, %struct.iio_dev*, %struct.zpa2326_private*, i32) #1

declare dso_local i32 @zpa2326_power_on(%struct.iio_dev*, %struct.zpa2326_private*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @zpa2326_config_oneshot(%struct.iio_dev*, i32) #1

declare dso_local i32 @zpa2326_sleep(%struct.iio_dev*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.iio_dev*) #1

declare dso_local i32 @zpa2326_init_runtime(%struct.device*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @zpa2326_fini_runtime(%struct.device*) #1

declare dso_local i32 @zpa2326_power_off(%struct.iio_dev*, %struct.zpa2326_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
