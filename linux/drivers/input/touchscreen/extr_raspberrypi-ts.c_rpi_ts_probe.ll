; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_raspberrypi-ts.c_rpi_ts_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_raspberrypi-ts.c_rpi_ts_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.input_polled_dev = type { %struct.rpi_ts*, i32, i32, %struct.input_dev* }
%struct.rpi_ts = type { i32, %struct.input_polled_dev*, i64, i32, %struct.platform_device* }
%struct.input_dev = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rpi_firmware = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Missing firmware node\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to dma_alloc_coherent\0A\00", align 1
@rpi_ts_dma_cleanup = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"failed to devm_add_action_or_reset, %d\0A\00", align 1
@RPI_FIRMWARE_FRAMEBUFFER_SET_TOUCHBUF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to set touchbuf, %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to allocate input device\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"raspberrypi-ts\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@RPI_TS_POLL_INTERVAL = common dso_local global i32 0, align 4
@rpi_ts_poll = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@RPI_TS_DEFAULT_WIDTH = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@RPI_TS_DEFAULT_HEIGHT = common dso_local global i32 0, align 4
@RPI_TS_MAX_SUPPORTED_POINTS = common dso_local global i32 0, align 4
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"could not init mt slots, %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"could not register input device, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rpi_ts_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpi_ts_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.input_polled_dev*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.rpi_firmware*, align 8
  %9 = alloca %struct.input_dev*, align 8
  %10 = alloca %struct.rpi_ts*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = call %struct.device_node* @of_get_parent(%struct.device_node* %18)
  store %struct.device_node* %19, %struct.device_node** %7, align 8
  %20 = load %struct.device_node*, %struct.device_node** %7, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %162

27:                                               ; preds = %1
  %28 = load %struct.device_node*, %struct.device_node** %7, align 8
  %29 = call %struct.rpi_firmware* @rpi_firmware_get(%struct.device_node* %28)
  store %struct.rpi_firmware* %29, %struct.rpi_firmware** %8, align 8
  %30 = load %struct.device_node*, %struct.device_node** %7, align 8
  %31 = call i32 @of_node_put(%struct.device_node* %30)
  %32 = load %struct.rpi_firmware*, %struct.rpi_firmware** %8, align 8
  %33 = icmp ne %struct.rpi_firmware* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @EPROBE_DEFER, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %162

37:                                               ; preds = %27
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.rpi_ts* @devm_kzalloc(%struct.device* %38, i32 40, i32 %39)
  store %struct.rpi_ts* %40, %struct.rpi_ts** %10, align 8
  %41 = load %struct.rpi_ts*, %struct.rpi_ts** %10, align 8
  %42 = icmp ne %struct.rpi_ts* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %162

46:                                               ; preds = %37
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = load %struct.rpi_ts*, %struct.rpi_ts** %10, align 8
  %49 = getelementptr inbounds %struct.rpi_ts, %struct.rpi_ts* %48, i32 0, i32 4
  store %struct.platform_device* %47, %struct.platform_device** %49, align 8
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = load %struct.rpi_ts*, %struct.rpi_ts** %10, align 8
  %53 = getelementptr inbounds %struct.rpi_ts, %struct.rpi_ts* %52, i32 0, i32 2
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i32 @dma_alloc_coherent(%struct.device* %50, i32 %51, i64* %53, i32 %54)
  %56 = load %struct.rpi_ts*, %struct.rpi_ts** %10, align 8
  %57 = getelementptr inbounds %struct.rpi_ts, %struct.rpi_ts* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.rpi_ts*, %struct.rpi_ts** %10, align 8
  %59 = getelementptr inbounds %struct.rpi_ts, %struct.rpi_ts* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %46
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %162

67:                                               ; preds = %46
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load i32, i32* @rpi_ts_dma_cleanup, align 4
  %70 = load %struct.rpi_ts*, %struct.rpi_ts** %10, align 8
  %71 = call i32 @devm_add_action_or_reset(%struct.device* %68, i32 %69, %struct.rpi_ts* %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %2, align 4
  br label %162

79:                                               ; preds = %67
  %80 = load %struct.rpi_ts*, %struct.rpi_ts** %10, align 8
  %81 = getelementptr inbounds %struct.rpi_ts, %struct.rpi_ts* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %11, align 8
  %83 = load %struct.rpi_firmware*, %struct.rpi_firmware** %8, align 8
  %84 = load i32, i32* @RPI_FIRMWARE_FRAMEBUFFER_SET_TOUCHBUF, align 4
  %85 = call i32 @rpi_firmware_property(%struct.rpi_firmware* %83, i32 %84, i64* %11, i32 8)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %79
  %89 = load i64, i64* %11, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88, %79
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @dev_warn(%struct.device* %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %2, align 4
  br label %162

96:                                               ; preds = %88
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = call %struct.input_polled_dev* @devm_input_allocate_polled_device(%struct.device* %97)
  store %struct.input_polled_dev* %98, %struct.input_polled_dev** %6, align 8
  %99 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %100 = icmp ne %struct.input_polled_dev* %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load %struct.device*, %struct.device** %4, align 8
  %103 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %162

106:                                              ; preds = %96
  %107 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %108 = load %struct.rpi_ts*, %struct.rpi_ts** %10, align 8
  %109 = getelementptr inbounds %struct.rpi_ts, %struct.rpi_ts* %108, i32 0, i32 1
  store %struct.input_polled_dev* %107, %struct.input_polled_dev** %109, align 8
  %110 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %111 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %110, i32 0, i32 3
  %112 = load %struct.input_dev*, %struct.input_dev** %111, align 8
  store %struct.input_dev* %112, %struct.input_dev** %9, align 8
  %113 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %114 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %113, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %114, align 8
  %115 = load i32, i32* @BUS_HOST, align 4
  %116 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %117 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 8
  %119 = load i32, i32* @RPI_TS_POLL_INTERVAL, align 4
  %120 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %121 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @rpi_ts_poll, align 4
  %123 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %124 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  %125 = load %struct.rpi_ts*, %struct.rpi_ts** %10, align 8
  %126 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %127 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %126, i32 0, i32 0
  store %struct.rpi_ts* %125, %struct.rpi_ts** %127, align 8
  %128 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %129 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %130 = load i32, i32* @RPI_TS_DEFAULT_WIDTH, align 4
  %131 = call i32 @input_set_abs_params(%struct.input_dev* %128, i32 %129, i32 0, i32 %130, i32 0, i32 0)
  %132 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %133 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %134 = load i32, i32* @RPI_TS_DEFAULT_HEIGHT, align 4
  %135 = call i32 @input_set_abs_params(%struct.input_dev* %132, i32 %133, i32 0, i32 %134, i32 0, i32 0)
  %136 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %137 = load %struct.rpi_ts*, %struct.rpi_ts** %10, align 8
  %138 = getelementptr inbounds %struct.rpi_ts, %struct.rpi_ts* %137, i32 0, i32 0
  %139 = call i32 @touchscreen_parse_properties(%struct.input_dev* %136, i32 1, i32* %138)
  %140 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %141 = load i32, i32* @RPI_TS_MAX_SUPPORTED_POINTS, align 4
  %142 = load i32, i32* @INPUT_MT_DIRECT, align 4
  %143 = call i32 @input_mt_init_slots(%struct.input_dev* %140, i32 %141, i32 %142)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %106
  %147 = load %struct.device*, %struct.device** %4, align 8
  %148 = load i32, i32* %12, align 4
  %149 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %2, align 4
  br label %162

151:                                              ; preds = %106
  %152 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %153 = call i32 @input_register_polled_device(%struct.input_polled_dev* %152)
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load %struct.device*, %struct.device** %4, align 8
  %158 = load i32, i32* %12, align 4
  %159 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %157, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* %12, align 4
  store i32 %160, i32* %2, align 4
  br label %162

161:                                              ; preds = %151
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %161, %156, %146, %101, %91, %74, %62, %43, %34, %22
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.rpi_firmware* @rpi_firmware_get(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.rpi_ts* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i64*, i32) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.rpi_ts*) #1

declare dso_local i32 @rpi_firmware_property(%struct.rpi_firmware*, i32, i64*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local %struct.input_polled_dev* @devm_input_allocate_polled_device(%struct.device*) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @touchscreen_parse_properties(%struct.input_dev*, i32, i32*) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_register_polled_device(%struct.input_polled_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
