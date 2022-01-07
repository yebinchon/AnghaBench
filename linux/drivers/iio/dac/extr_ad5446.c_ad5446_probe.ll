; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5446.c_ad5446_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5446.c_ad5446_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ad5446_chip_info = type { i32, i32 }
%struct.ad5446_state = type { i32, %struct.ad5446_chip_info*, i32, %struct.device*, %struct.regulator* }
%struct.regulator = type { i32 }
%struct.iio_dev = type { i8*, i32, i32*, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }

@.str = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ad5446_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@MODE_PWRDWN_1k = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"reference voltage unspecified\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, %struct.ad5446_chip_info*)* @ad5446_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5446_probe(%struct.device* %0, i8* %1, %struct.ad5446_chip_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ad5446_chip_info*, align 8
  %8 = alloca %struct.ad5446_state*, align 8
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.regulator*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ad5446_chip_info* %2, %struct.ad5446_chip_info** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.regulator* @devm_regulator_get(%struct.device* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.regulator* %14, %struct.regulator** %10, align 8
  %15 = load %struct.regulator*, %struct.regulator** %10, align 8
  %16 = call i32 @IS_ERR(%struct.regulator* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %3
  %19 = load %struct.regulator*, %struct.regulator** %10, align 8
  %20 = call i32 @regulator_enable(%struct.regulator* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %4, align 4
  br label %121

25:                                               ; preds = %18
  %26 = load %struct.regulator*, %struct.regulator** %10, align 8
  %27 = call i32 @regulator_get_voltage(%struct.regulator* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %112

31:                                               ; preds = %25
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %31, %3
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %34, i32 40)
  store %struct.iio_dev* %35, %struct.iio_dev** %9, align 8
  %36 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %37 = icmp eq %struct.iio_dev* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %11, align 4
  br label %112

41:                                               ; preds = %33
  %42 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %43 = call %struct.ad5446_state* @iio_priv(%struct.iio_dev* %42)
  store %struct.ad5446_state* %43, %struct.ad5446_state** %8, align 8
  %44 = load %struct.ad5446_chip_info*, %struct.ad5446_chip_info** %7, align 8
  %45 = load %struct.ad5446_state*, %struct.ad5446_state** %8, align 8
  %46 = getelementptr inbounds %struct.ad5446_state, %struct.ad5446_state* %45, i32 0, i32 1
  store %struct.ad5446_chip_info* %44, %struct.ad5446_chip_info** %46, align 8
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %49 = call i32 @dev_set_drvdata(%struct.device* %47, %struct.iio_dev* %48)
  %50 = load %struct.regulator*, %struct.regulator** %10, align 8
  %51 = load %struct.ad5446_state*, %struct.ad5446_state** %8, align 8
  %52 = getelementptr inbounds %struct.ad5446_state, %struct.ad5446_state* %51, i32 0, i32 4
  store %struct.regulator* %50, %struct.regulator** %52, align 8
  %53 = load %struct.device*, %struct.device** %5, align 8
  %54 = load %struct.ad5446_state*, %struct.ad5446_state** %8, align 8
  %55 = getelementptr inbounds %struct.ad5446_state, %struct.ad5446_state* %54, i32 0, i32 3
  store %struct.device* %53, %struct.device** %55, align 8
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store %struct.device* %56, %struct.device** %59, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %62 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 4
  store i32* @ad5446_info, i32** %64, align 8
  %65 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %66 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %67 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load %struct.ad5446_state*, %struct.ad5446_state** %8, align 8
  %69 = getelementptr inbounds %struct.ad5446_state, %struct.ad5446_state* %68, i32 0, i32 1
  %70 = load %struct.ad5446_chip_info*, %struct.ad5446_chip_info** %69, align 8
  %71 = getelementptr inbounds %struct.ad5446_chip_info, %struct.ad5446_chip_info* %70, i32 0, i32 1
  %72 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %73 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %72, i32 0, i32 2
  store i32* %71, i32** %73, align 8
  %74 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %75 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %74, i32 0, i32 1
  store i32 1, i32* %75, align 8
  %76 = load i32, i32* @MODE_PWRDWN_1k, align 4
  %77 = load %struct.ad5446_state*, %struct.ad5446_state** %8, align 8
  %78 = getelementptr inbounds %struct.ad5446_state, %struct.ad5446_state* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.ad5446_state*, %struct.ad5446_state** %8, align 8
  %80 = getelementptr inbounds %struct.ad5446_state, %struct.ad5446_state* %79, i32 0, i32 1
  %81 = load %struct.ad5446_chip_info*, %struct.ad5446_chip_info** %80, align 8
  %82 = getelementptr inbounds %struct.ad5446_chip_info, %struct.ad5446_chip_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %41
  %86 = load %struct.ad5446_state*, %struct.ad5446_state** %8, align 8
  %87 = getelementptr inbounds %struct.ad5446_state, %struct.ad5446_state* %86, i32 0, i32 1
  %88 = load %struct.ad5446_chip_info*, %struct.ad5446_chip_info** %87, align 8
  %89 = getelementptr inbounds %struct.ad5446_chip_info, %struct.ad5446_chip_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ad5446_state*, %struct.ad5446_state** %8, align 8
  %92 = getelementptr inbounds %struct.ad5446_state, %struct.ad5446_state* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %105

93:                                               ; preds = %41
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i32, i32* %12, align 4
  %98 = sdiv i32 %97, 1000
  %99 = load %struct.ad5446_state*, %struct.ad5446_state** %8, align 8
  %100 = getelementptr inbounds %struct.ad5446_state, %struct.ad5446_state* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  br label %104

101:                                              ; preds = %93
  %102 = load %struct.device*, %struct.device** %5, align 8
  %103 = call i32 @dev_warn(%struct.device* %102, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %96
  br label %105

105:                                              ; preds = %104, %85
  %106 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %107 = call i32 @iio_device_register(%struct.iio_dev* %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %112

111:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  br label %121

112:                                              ; preds = %110, %38, %30
  %113 = load %struct.regulator*, %struct.regulator** %10, align 8
  %114 = call i32 @IS_ERR(%struct.regulator* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = load %struct.regulator*, %struct.regulator** %10, align 8
  %118 = call i32 @regulator_disable(%struct.regulator* %117)
  br label %119

119:                                              ; preds = %116, %112
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %119, %111, %23
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local %struct.regulator* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i32 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @regulator_enable(%struct.regulator*) #1

declare dso_local i32 @regulator_get_voltage(%struct.regulator*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.ad5446_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.iio_dev*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(%struct.regulator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
