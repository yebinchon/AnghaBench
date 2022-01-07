; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_ad9523.c_ad9523_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_ad9523.c_ad9523_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.ad9523_platform_data* }
%struct.ad9523_platform_data = type { i64*, i32 }
%struct.iio_dev = type { i64*, i32, i32, i32, i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.ad9523_state = type { i8*, i32, %struct.ad9523_platform_data*, %struct.spi_device*, i8*, i8*, i8*, i32 }
%struct.TYPE_9__ = type { i64* }

@.str = private unnamed_addr constant [19 x i8] c"no platform data?\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"powerdown\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@ad9523_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"probed %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad9523_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad9523_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ad9523_platform_data*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.ad9523_state*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.ad9523_platform_data*, %struct.ad9523_platform_data** %10, align 8
  store %struct.ad9523_platform_data* %11, %struct.ad9523_platform_data** %4, align 8
  %12 = load %struct.ad9523_platform_data*, %struct.ad9523_platform_data** %4, align 8
  %13 = icmp ne %struct.ad9523_platform_data* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 0
  %17 = call i32 @dev_err(%struct.TYPE_10__* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %197

20:                                               ; preds = %1
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 0
  %23 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_10__* %22, i32 64)
  store %struct.iio_dev* %23, %struct.iio_dev** %5, align 8
  %24 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %25 = icmp eq %struct.iio_dev* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %197

29:                                               ; preds = %20
  %30 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %31 = call %struct.ad9523_state* @iio_priv(%struct.iio_dev* %30)
  store %struct.ad9523_state* %31, %struct.ad9523_state** %6, align 8
  %32 = load %struct.ad9523_state*, %struct.ad9523_state** %6, align 8
  %33 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %32, i32 0, i32 7
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %36 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %35, i32 0, i32 0
  %37 = call i8* @devm_regulator_get(%struct.TYPE_10__* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.ad9523_state*, %struct.ad9523_state** %6, align 8
  %39 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load %struct.ad9523_state*, %struct.ad9523_state** %6, align 8
  %41 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @IS_ERR(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %29
  %46 = load %struct.ad9523_state*, %struct.ad9523_state** %6, align 8
  %47 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @regulator_enable(i8* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %197

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %29
  %56 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %57 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %56, i32 0, i32 0
  %58 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %59 = call i8* @devm_gpiod_get_optional(%struct.TYPE_10__* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load %struct.ad9523_state*, %struct.ad9523_state** %6, align 8
  %61 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %60, i32 0, i32 6
  store i8* %59, i8** %61, align 8
  %62 = load %struct.ad9523_state*, %struct.ad9523_state** %6, align 8
  %63 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %62, i32 0, i32 6
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @IS_ERR(i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %55
  %68 = load %struct.ad9523_state*, %struct.ad9523_state** %6, align 8
  %69 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %68, i32 0, i32 6
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @PTR_ERR(i8* %70)
  store i32 %71, i32* %7, align 4
  br label %184

72:                                               ; preds = %55
  %73 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %74 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %73, i32 0, i32 0
  %75 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %76 = call i8* @devm_gpiod_get_optional(%struct.TYPE_10__* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load %struct.ad9523_state*, %struct.ad9523_state** %6, align 8
  %78 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %77, i32 0, i32 5
  store i8* %76, i8** %78, align 8
  %79 = load %struct.ad9523_state*, %struct.ad9523_state** %6, align 8
  %80 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %79, i32 0, i32 5
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @IS_ERR(i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %72
  %85 = load %struct.ad9523_state*, %struct.ad9523_state** %6, align 8
  %86 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %85, i32 0, i32 5
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @PTR_ERR(i8* %87)
  store i32 %88, i32* %7, align 4
  br label %184

89:                                               ; preds = %72
  %90 = load %struct.ad9523_state*, %struct.ad9523_state** %6, align 8
  %91 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %90, i32 0, i32 5
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = call i32 @udelay(i32 1)
  %96 = load %struct.ad9523_state*, %struct.ad9523_state** %6, align 8
  %97 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %96, i32 0, i32 5
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @gpiod_direction_output(i8* %98, i32 1)
  br label %100

100:                                              ; preds = %94, %89
  %101 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %102 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %101, i32 0, i32 0
  %103 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %104 = call i8* @devm_gpiod_get_optional(%struct.TYPE_10__* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  %105 = load %struct.ad9523_state*, %struct.ad9523_state** %6, align 8
  %106 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %105, i32 0, i32 4
  store i8* %104, i8** %106, align 8
  %107 = load %struct.ad9523_state*, %struct.ad9523_state** %6, align 8
  %108 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %107, i32 0, i32 4
  %109 = load i8*, i8** %108, align 8
  %110 = call i64 @IS_ERR(i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %100
  %113 = load %struct.ad9523_state*, %struct.ad9523_state** %6, align 8
  %114 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %113, i32 0, i32 4
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @PTR_ERR(i8* %115)
  store i32 %116, i32* %7, align 4
  br label %184

117:                                              ; preds = %100
  %118 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %119 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %120 = call i32 @spi_set_drvdata(%struct.spi_device* %118, %struct.iio_dev* %119)
  %121 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %122 = load %struct.ad9523_state*, %struct.ad9523_state** %6, align 8
  %123 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %122, i32 0, i32 3
  store %struct.spi_device* %121, %struct.spi_device** %123, align 8
  %124 = load %struct.ad9523_platform_data*, %struct.ad9523_platform_data** %4, align 8
  %125 = load %struct.ad9523_state*, %struct.ad9523_state** %6, align 8
  %126 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %125, i32 0, i32 2
  store %struct.ad9523_platform_data* %124, %struct.ad9523_platform_data** %126, align 8
  %127 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %128 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %127, i32 0, i32 0
  %129 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %130 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  store %struct.TYPE_10__* %128, %struct.TYPE_10__** %131, align 8
  %132 = load %struct.ad9523_platform_data*, %struct.ad9523_platform_data** %4, align 8
  %133 = getelementptr inbounds %struct.ad9523_platform_data, %struct.ad9523_platform_data* %132, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %117
  %139 = load %struct.ad9523_platform_data*, %struct.ad9523_platform_data** %4, align 8
  %140 = getelementptr inbounds %struct.ad9523_platform_data, %struct.ad9523_platform_data* %139, i32 0, i32 0
  %141 = load i64*, i64** %140, align 8
  br label %147

142:                                              ; preds = %117
  %143 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %144 = call %struct.TYPE_9__* @spi_get_device_id(%struct.spi_device* %143)
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i64*, i64** %145, align 8
  br label %147

147:                                              ; preds = %142, %138
  %148 = phi i64* [ %141, %138 ], [ %146, %142 ]
  %149 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %150 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %149, i32 0, i32 0
  store i64* %148, i64** %150, align 8
  %151 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %152 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %151, i32 0, i32 4
  store i32* @ad9523_info, i32** %152, align 8
  %153 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %154 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %155 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 8
  %156 = load %struct.ad9523_state*, %struct.ad9523_state** %6, align 8
  %157 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %160 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 4
  %161 = load %struct.ad9523_platform_data*, %struct.ad9523_platform_data** %4, align 8
  %162 = getelementptr inbounds %struct.ad9523_platform_data, %struct.ad9523_platform_data* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %165 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 8
  %166 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %167 = call i32 @ad9523_setup(%struct.iio_dev* %166)
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* %7, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %147
  br label %184

171:                                              ; preds = %147
  %172 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %173 = call i32 @iio_device_register(%struct.iio_dev* %172)
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  br label %184

177:                                              ; preds = %171
  %178 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %179 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %178, i32 0, i32 0
  %180 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %181 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %180, i32 0, i32 0
  %182 = load i64*, i64** %181, align 8
  %183 = call i32 @dev_info(%struct.TYPE_10__* %179, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64* %182)
  store i32 0, i32* %2, align 4
  br label %197

184:                                              ; preds = %176, %170, %112, %84, %67
  %185 = load %struct.ad9523_state*, %struct.ad9523_state** %6, align 8
  %186 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = call i64 @IS_ERR(i8* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %195, label %190

190:                                              ; preds = %184
  %191 = load %struct.ad9523_state*, %struct.ad9523_state** %6, align 8
  %192 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @regulator_disable(i8* %193)
  br label %195

195:                                              ; preds = %190, %184
  %196 = load i32, i32* %7, align 4
  store i32 %196, i32* %2, align 4
  br label %197

197:                                              ; preds = %195, %177, %52, %26, %14
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.ad9523_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @devm_regulator_get(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @regulator_enable(i8*) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gpiod_direction_output(i8*, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local %struct.TYPE_9__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @ad9523_setup(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*, i64*) #1

declare dso_local i32 @regulator_disable(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
