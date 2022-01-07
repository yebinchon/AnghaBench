; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_gpio_decoder.c_gpio_decoder_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_gpio_decoder.c_gpio_decoder_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.gpio_decoder = type { i32, %struct.input_polled_dev*, %struct.device*, %struct.TYPE_8__* }
%struct.input_polled_dev = type { %struct.TYPE_7__*, i32, %struct.gpio_decoder* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"linux,axis\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"unable to acquire input gpios\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"not enough gpios found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"decoder-max-value\00", align 1
@gpio_decoder_poll_gpios = common dso_local global i32 0, align 4
@BUS_HOST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to register polled  device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpio_decoder_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_decoder_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.gpio_decoder*, align 8
  %6 = alloca %struct.input_polled_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.gpio_decoder* @devm_kzalloc(%struct.device* %11, i32 32, i32 %12)
  store %struct.gpio_decoder* %13, %struct.gpio_decoder** %5, align 8
  %14 = load %struct.gpio_decoder*, %struct.gpio_decoder** %5, align 8
  %15 = icmp ne %struct.gpio_decoder* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %118

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load %struct.gpio_decoder*, %struct.gpio_decoder** %5, align 8
  %22 = getelementptr inbounds %struct.gpio_decoder, %struct.gpio_decoder* %21, i32 0, i32 0
  %23 = call i64 @device_property_read_u32(%struct.device* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %22)
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32, i32* @GPIOD_IN, align 4
  %26 = call %struct.TYPE_8__* @devm_gpiod_get_array(%struct.device* %24, i32* null, i32 %25)
  %27 = load %struct.gpio_decoder*, %struct.gpio_decoder** %5, align 8
  %28 = getelementptr inbounds %struct.gpio_decoder, %struct.gpio_decoder* %27, i32 0, i32 3
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %28, align 8
  %29 = load %struct.gpio_decoder*, %struct.gpio_decoder** %5, align 8
  %30 = getelementptr inbounds %struct.gpio_decoder, %struct.gpio_decoder* %29, i32 0, i32 3
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = call i64 @IS_ERR(%struct.TYPE_8__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %19
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.gpio_decoder*, %struct.gpio_decoder** %5, align 8
  %38 = getelementptr inbounds %struct.gpio_decoder, %struct.gpio_decoder* %37, i32 0, i32 3
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = call i32 @PTR_ERR(%struct.TYPE_8__* %39)
  store i32 %40, i32* %2, align 4
  br label %118

41:                                               ; preds = %19
  %42 = load %struct.gpio_decoder*, %struct.gpio_decoder** %5, align 8
  %43 = getelementptr inbounds %struct.gpio_decoder, %struct.gpio_decoder* %42, i32 0, i32 3
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %118

53:                                               ; preds = %41
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call i64 @device_property_read_u32(%struct.device* %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %7)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load %struct.gpio_decoder*, %struct.gpio_decoder** %5, align 8
  %59 = getelementptr inbounds %struct.gpio_decoder, %struct.gpio_decoder* %58, i32 0, i32 3
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 1, %62
  %64 = sub i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %57, %53
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load %struct.gpio_decoder*, %struct.gpio_decoder** %5, align 8
  %68 = getelementptr inbounds %struct.gpio_decoder, %struct.gpio_decoder* %67, i32 0, i32 2
  store %struct.device* %66, %struct.device** %68, align 8
  %69 = load %struct.gpio_decoder*, %struct.gpio_decoder** %5, align 8
  %70 = getelementptr inbounds %struct.gpio_decoder, %struct.gpio_decoder* %69, i32 0, i32 2
  %71 = load %struct.device*, %struct.device** %70, align 8
  %72 = call %struct.input_polled_dev* @devm_input_allocate_polled_device(%struct.device* %71)
  store %struct.input_polled_dev* %72, %struct.input_polled_dev** %6, align 8
  %73 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %74 = icmp ne %struct.input_polled_dev* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %65
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %118

78:                                               ; preds = %65
  %79 = load %struct.gpio_decoder*, %struct.gpio_decoder** %5, align 8
  %80 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %81 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %80, i32 0, i32 2
  store %struct.gpio_decoder* %79, %struct.gpio_decoder** %81, align 8
  %82 = load i32, i32* @gpio_decoder_poll_gpios, align 4
  %83 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %84 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %86 = load %struct.gpio_decoder*, %struct.gpio_decoder** %5, align 8
  %87 = getelementptr inbounds %struct.gpio_decoder, %struct.gpio_decoder* %86, i32 0, i32 1
  store %struct.input_polled_dev* %85, %struct.input_polled_dev** %87, align 8
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %92 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  store i32 %90, i32* %94, align 4
  %95 = load i32, i32* @BUS_HOST, align 4
  %96 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %97 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store i32 %95, i32* %100, align 4
  %101 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %102 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %101, i32 0, i32 0
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = load %struct.gpio_decoder*, %struct.gpio_decoder** %5, align 8
  %105 = getelementptr inbounds %struct.gpio_decoder, %struct.gpio_decoder* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @input_set_abs_params(%struct.TYPE_7__* %103, i32 %106, i32 0, i32 %107, i32 0, i32 0)
  %109 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %110 = call i32 @input_register_polled_device(%struct.input_polled_dev* %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %78
  %114 = load %struct.device*, %struct.device** %4, align 8
  %115 = call i32 @dev_err(%struct.device* %114, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %2, align 4
  br label %118

117:                                              ; preds = %78
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %117, %113, %75, %48, %34, %16
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local %struct.gpio_decoder* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local %struct.TYPE_8__* @devm_gpiod_get_array(%struct.device*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_8__*) #1

declare dso_local %struct.input_polled_dev* @devm_input_allocate_polled_device(%struct.device*) #1

declare dso_local i32 @input_set_abs_params(%struct.TYPE_7__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_register_polled_device(%struct.input_polled_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
