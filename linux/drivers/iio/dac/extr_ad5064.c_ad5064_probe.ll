; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5064.c_ad5064_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5064.c_ad5064_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.device = type { i32 }
%struct.iio_dev = type { i8*, i32, %struct.TYPE_7__*, i32, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device* }
%struct.ad5064_state = type { i32*, i32, i32, i32*, %struct.TYPE_8__*, i32, %struct.device*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ad5064_chip_info_tbl = common dso_local global %struct.TYPE_8__* null, align 8
@ad5064_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@AD5064_LDAC_PWRDN_1K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i8*, i32)* @ad5064_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5064_probe(%struct.device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.ad5064_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %15, i32 56)
  store %struct.iio_dev* %16, %struct.iio_dev** %10, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %18 = icmp eq %struct.iio_dev* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %150

22:                                               ; preds = %4
  %23 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %24 = call %struct.ad5064_state* @iio_priv(%struct.iio_dev* %23)
  store %struct.ad5064_state* %24, %struct.ad5064_state** %11, align 8
  %25 = load %struct.ad5064_state*, %struct.ad5064_state** %11, align 8
  %26 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %25, i32 0, i32 7
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %30 = call i32 @dev_set_drvdata(%struct.device* %28, %struct.iio_dev* %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ad5064_chip_info_tbl, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 %33
  %35 = load %struct.ad5064_state*, %struct.ad5064_state** %11, align 8
  %36 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %35, i32 0, i32 4
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %36, align 8
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = load %struct.ad5064_state*, %struct.ad5064_state** %11, align 8
  %39 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %38, i32 0, i32 6
  store %struct.device* %37, %struct.device** %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.ad5064_state*, %struct.ad5064_state** %11, align 8
  %42 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ad5064_state*, %struct.ad5064_state** %11, align 8
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = call i32 @ad5064_request_vref(%struct.ad5064_state* %43, %struct.device* %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %22
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %5, align 4
  br label %150

50:                                               ; preds = %22
  %51 = load %struct.ad5064_state*, %struct.ad5064_state** %11, align 8
  %52 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %50
  %56 = load %struct.ad5064_state*, %struct.ad5064_state** %11, align 8
  %57 = call i32 @ad5064_num_vref(%struct.ad5064_state* %56)
  %58 = load %struct.ad5064_state*, %struct.ad5064_state** %11, align 8
  %59 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @regulator_bulk_enable(i32 %57, i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %5, align 4
  br label %150

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66, %50
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %70 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store %struct.device* %68, %struct.device** %71, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %74 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %76 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %75, i32 0, i32 4
  store i32* @ad5064_info, i32** %76, align 8
  %77 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %78 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %79 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load %struct.ad5064_state*, %struct.ad5064_state** %11, align 8
  %81 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %80, i32 0, i32 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %86 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %85, i32 0, i32 2
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %86, align 8
  %87 = load %struct.ad5064_state*, %struct.ad5064_state** %11, align 8
  %88 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %87, i32 0, i32 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %93 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %95 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %94, i32 0, i32 2
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 1, %100
  %102 = sdiv i32 %101, 2
  store i32 %102, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %103

103:                                              ; preds = %126, %67
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.ad5064_state*, %struct.ad5064_state** %11, align 8
  %106 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %105, i32 0, i32 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ult i32 %104, %109
  br i1 %110, label %111, label %129

111:                                              ; preds = %103
  %112 = load i32, i32* @AD5064_LDAC_PWRDN_1K, align 4
  %113 = load %struct.ad5064_state*, %struct.ad5064_state** %11, align 8
  %114 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %13, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %112, i32* %118, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.ad5064_state*, %struct.ad5064_state** %11, align 8
  %121 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %13, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %119, i32* %125, align 4
  br label %126

126:                                              ; preds = %111
  %127 = load i32, i32* %13, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %13, align 4
  br label %103

129:                                              ; preds = %103
  %130 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %131 = call i32 @iio_device_register(%struct.iio_dev* %130)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %136

135:                                              ; preds = %129
  store i32 0, i32* %5, align 4
  br label %150

136:                                              ; preds = %134
  %137 = load %struct.ad5064_state*, %struct.ad5064_state** %11, align 8
  %138 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %136
  %142 = load %struct.ad5064_state*, %struct.ad5064_state** %11, align 8
  %143 = call i32 @ad5064_num_vref(%struct.ad5064_state* %142)
  %144 = load %struct.ad5064_state*, %struct.ad5064_state** %11, align 8
  %145 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @regulator_bulk_disable(i32 %143, i32 %146)
  br label %148

148:                                              ; preds = %141, %136
  %149 = load i32, i32* %14, align 4
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %148, %135, %64, %48, %19
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.ad5064_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.iio_dev*) #1

declare dso_local i32 @ad5064_request_vref(%struct.ad5064_state*, %struct.device*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ad5064_num_vref(%struct.ad5064_state*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
