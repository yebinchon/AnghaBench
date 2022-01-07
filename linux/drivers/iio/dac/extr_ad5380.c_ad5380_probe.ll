; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5380.c_ad5380_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5380.c_ad5380_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.iio_dev = type { i8*, i32, i32, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.ad5380_state = type { i32, i32, %struct.regmap*, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate iio device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ad5380_chip_info_tbl = common dso_local global %struct.TYPE_4__* null, align 8
@ad5380_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to allocate channel spec: %d\0A\00", align 1
@AD5380_CTRL_INT_VREF_2V5 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to enable vref regulators: %d\0A\00", align 1
@AD5380_CTRL_INT_VREF_EN = common dso_local global i32 0, align 4
@AD5380_REG_SF_CTRL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to write to device: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Failed to register iio device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.regmap*, i32, i8*)* @ad5380_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5380_probe(%struct.device* %0, %struct.regmap* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.ad5380_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.regmap* %1, %struct.regmap** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %14, i32 24)
  store %struct.iio_dev* %15, %struct.iio_dev** %10, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %17 = icmp eq %struct.iio_dev* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %163

23:                                               ; preds = %4
  %24 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %25 = call %struct.ad5380_state* @iio_priv(%struct.iio_dev* %24)
  store %struct.ad5380_state* %25, %struct.ad5380_state** %11, align 8
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %28 = call i32 @dev_set_drvdata(%struct.device* %26, %struct.iio_dev* %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ad5380_chip_info_tbl, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = load %struct.ad5380_state*, %struct.ad5380_state** %11, align 8
  %34 = getelementptr inbounds %struct.ad5380_state, %struct.ad5380_state* %33, i32 0, i32 3
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %34, align 8
  %35 = load %struct.regmap*, %struct.regmap** %7, align 8
  %36 = load %struct.ad5380_state*, %struct.ad5380_state** %11, align 8
  %37 = getelementptr inbounds %struct.ad5380_state, %struct.ad5380_state* %36, i32 0, i32 2
  store %struct.regmap* %35, %struct.regmap** %37, align 8
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %40 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store %struct.device* %38, %struct.device** %41, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %46 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %45, i32 0, i32 4
  store i32* @ad5380_info, i32** %46, align 8
  %47 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %48 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %49 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ad5380_state*, %struct.ad5380_state** %11, align 8
  %51 = getelementptr inbounds %struct.ad5380_state, %struct.ad5380_state* %50, i32 0, i32 3
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %58 = call i32 @ad5380_alloc_channels(%struct.iio_dev* %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %23
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %5, align 4
  br label %163

66:                                               ; preds = %23
  %67 = load %struct.ad5380_state*, %struct.ad5380_state** %11, align 8
  %68 = getelementptr inbounds %struct.ad5380_state, %struct.ad5380_state* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 2500
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* @AD5380_CTRL_INT_VREF_2V5, align 4
  %75 = load i32, i32* %12, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %73, %66
  %78 = load %struct.device*, %struct.device** %6, align 8
  %79 = call i32 @devm_regulator_get(%struct.device* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.ad5380_state*, %struct.ad5380_state** %11, align 8
  %81 = getelementptr inbounds %struct.ad5380_state, %struct.ad5380_state* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.ad5380_state*, %struct.ad5380_state** %11, align 8
  %83 = getelementptr inbounds %struct.ad5380_state, %struct.ad5380_state* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @IS_ERR(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %111, label %87

87:                                               ; preds = %77
  %88 = load %struct.ad5380_state*, %struct.ad5380_state** %11, align 8
  %89 = getelementptr inbounds %struct.ad5380_state, %struct.ad5380_state* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @regulator_enable(i32 %90)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load %struct.device*, %struct.device** %6, align 8
  %96 = load i32, i32* %13, align 4
  %97 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %95, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  br label %157

98:                                               ; preds = %87
  %99 = load %struct.ad5380_state*, %struct.ad5380_state** %11, align 8
  %100 = getelementptr inbounds %struct.ad5380_state, %struct.ad5380_state* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @regulator_get_voltage(i32 %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %145

106:                                              ; preds = %98
  %107 = load i32, i32* %13, align 4
  %108 = sdiv i32 %107, 1000
  %109 = load %struct.ad5380_state*, %struct.ad5380_state** %11, align 8
  %110 = getelementptr inbounds %struct.ad5380_state, %struct.ad5380_state* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  br label %122

111:                                              ; preds = %77
  %112 = load %struct.ad5380_state*, %struct.ad5380_state** %11, align 8
  %113 = getelementptr inbounds %struct.ad5380_state, %struct.ad5380_state* %112, i32 0, i32 3
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ad5380_state*, %struct.ad5380_state** %11, align 8
  %118 = getelementptr inbounds %struct.ad5380_state, %struct.ad5380_state* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @AD5380_CTRL_INT_VREF_EN, align 4
  %120 = load i32, i32* %12, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %111, %106
  %123 = load %struct.ad5380_state*, %struct.ad5380_state** %11, align 8
  %124 = getelementptr inbounds %struct.ad5380_state, %struct.ad5380_state* %123, i32 0, i32 2
  %125 = load %struct.regmap*, %struct.regmap** %124, align 8
  %126 = load i32, i32* @AD5380_REG_SF_CTRL, align 4
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @regmap_write(%struct.regmap* %125, i32 %126, i32 %127)
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %13, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %122
  %132 = load %struct.device*, %struct.device** %6, align 8
  %133 = load i32, i32* %13, align 4
  %134 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %132, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %133)
  br label %145

135:                                              ; preds = %122
  %136 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %137 = call i32 @iio_device_register(%struct.iio_dev* %136)
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load %struct.device*, %struct.device** %6, align 8
  %142 = load i32, i32* %13, align 4
  %143 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %141, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %142)
  br label %145

144:                                              ; preds = %135
  store i32 0, i32* %5, align 4
  br label %163

145:                                              ; preds = %140, %131, %105
  %146 = load %struct.ad5380_state*, %struct.ad5380_state** %11, align 8
  %147 = getelementptr inbounds %struct.ad5380_state, %struct.ad5380_state* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @IS_ERR(i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %145
  %152 = load %struct.ad5380_state*, %struct.ad5380_state** %11, align 8
  %153 = getelementptr inbounds %struct.ad5380_state, %struct.ad5380_state* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @regulator_disable(i32 %154)
  br label %156

156:                                              ; preds = %151, %145
  br label %157

157:                                              ; preds = %156, %94
  %158 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %159 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @kfree(i32 %160)
  %162 = load i32, i32* %13, align 4
  store i32 %162, i32* %5, align 4
  br label %163

163:                                              ; preds = %157, %144, %61, %18
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.ad5380_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.iio_dev*) #1

declare dso_local i32 @ad5380_alloc_channels(%struct.iio_dev*) #1

declare dso_local i32 @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
