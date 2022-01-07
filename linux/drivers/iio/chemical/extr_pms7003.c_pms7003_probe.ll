; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_pms7003.c_pms7003_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_pms7003.c_pms7003_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { i32 }
%struct.pms7003_state = type { i32, i32, %struct.serdev_device* }
%struct.iio_dev = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@pms7003_info = common dso_local global i32 0, align 4
@PMS7003_DRIVER_NAME = common dso_local global i32 0, align 4
@pms7003_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@pms7003_scan_masks = common dso_local global i32 0, align 4
@pms7003_serdev_ops = common dso_local global i32 0, align 4
@SERDEV_PARITY_NONE = common dso_local global i32 0, align 4
@CMD_WAKEUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to wakeup sensor\0A\00", align 1
@CMD_ENTER_PASSIVE_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to enter passive mode\0A\00", align 1
@pms7003_stop = common dso_local global i32 0, align 4
@pms7003_trigger_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serdev_device*)* @pms7003_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pms7003_probe(%struct.serdev_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.serdev_device*, align 8
  %4 = alloca %struct.pms7003_state*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.serdev_device* %0, %struct.serdev_device** %3, align 8
  %7 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %8 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %7, i32 0, i32 0
  %9 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %8, i32 16)
  store %struct.iio_dev* %9, %struct.iio_dev** %5, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = icmp ne %struct.iio_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %122

15:                                               ; preds = %1
  %16 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %17 = call %struct.pms7003_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.pms7003_state* %17, %struct.pms7003_state** %4, align 8
  %18 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %20 = call i32 @serdev_device_set_drvdata(%struct.serdev_device* %18, %struct.iio_dev* %19)
  %21 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %22 = load %struct.pms7003_state*, %struct.pms7003_state** %4, align 8
  %23 = getelementptr inbounds %struct.pms7003_state, %struct.pms7003_state* %22, i32 0, i32 2
  store %struct.serdev_device* %21, %struct.serdev_device** %23, align 8
  %24 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %25 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %24, i32 0, i32 0
  %26 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %27 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32* %25, i32** %28, align 8
  %29 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %30 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %29, i32 0, i32 5
  store i32* @pms7003_info, i32** %30, align 8
  %31 = load i32, i32* @PMS7003_DRIVER_NAME, align 4
  %32 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @pms7003_channels, align 4
  %35 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %36 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @pms7003_channels, align 4
  %38 = call i32 @ARRAY_SIZE(i32 %37)
  %39 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %40 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %42 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %43 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @pms7003_scan_masks, align 4
  %45 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %46 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.pms7003_state*, %struct.pms7003_state** %4, align 8
  %48 = getelementptr inbounds %struct.pms7003_state, %struct.pms7003_state* %47, i32 0, i32 1
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load %struct.pms7003_state*, %struct.pms7003_state** %4, align 8
  %51 = getelementptr inbounds %struct.pms7003_state, %struct.pms7003_state* %50, i32 0, i32 0
  %52 = call i32 @init_completion(i32* %51)
  %53 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %54 = call i32 @serdev_device_set_client_ops(%struct.serdev_device* %53, i32* @pms7003_serdev_ops)
  %55 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %56 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %55, i32 0, i32 0
  %57 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %58 = call i32 @devm_serdev_device_open(i32* %56, %struct.serdev_device* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %15
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %122

63:                                               ; preds = %15
  %64 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %65 = call i32 @serdev_device_set_baudrate(%struct.serdev_device* %64, i32 9600)
  %66 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %67 = call i32 @serdev_device_set_flow_control(%struct.serdev_device* %66, i32 0)
  %68 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %69 = load i32, i32* @SERDEV_PARITY_NONE, align 4
  %70 = call i32 @serdev_device_set_parity(%struct.serdev_device* %68, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %122

75:                                               ; preds = %63
  %76 = load %struct.pms7003_state*, %struct.pms7003_state** %4, align 8
  %77 = load i32, i32* @CMD_WAKEUP, align 4
  %78 = call i32 @pms7003_do_cmd(%struct.pms7003_state* %76, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %83 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %82, i32 0, i32 0
  %84 = call i32 @dev_err(i32* %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %122

86:                                               ; preds = %75
  %87 = load %struct.pms7003_state*, %struct.pms7003_state** %4, align 8
  %88 = load i32, i32* @CMD_ENTER_PASSIVE_MODE, align 4
  %89 = call i32 @pms7003_do_cmd(%struct.pms7003_state* %87, i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %94 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %93, i32 0, i32 0
  %95 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %2, align 4
  br label %122

97:                                               ; preds = %86
  %98 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %99 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %98, i32 0, i32 0
  %100 = load i32, i32* @pms7003_stop, align 4
  %101 = load %struct.pms7003_state*, %struct.pms7003_state** %4, align 8
  %102 = call i32 @devm_add_action_or_reset(i32* %99, i32 %100, %struct.pms7003_state* %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %122

107:                                              ; preds = %97
  %108 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %109 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %108, i32 0, i32 0
  %110 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %111 = load i32, i32* @pms7003_trigger_handler, align 4
  %112 = call i32 @devm_iio_triggered_buffer_setup(i32* %109, %struct.iio_dev* %110, i32* null, i32 %111, i32* null)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %2, align 4
  br label %122

117:                                              ; preds = %107
  %118 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %119 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %118, i32 0, i32 0
  %120 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %121 = call i32 @devm_iio_device_register(i32* %119, %struct.iio_dev* %120)
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %117, %115, %105, %92, %81, %73, %61, %12
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.pms7003_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @serdev_device_set_drvdata(%struct.serdev_device*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @serdev_device_set_client_ops(%struct.serdev_device*, i32*) #1

declare dso_local i32 @devm_serdev_device_open(i32*, %struct.serdev_device*) #1

declare dso_local i32 @serdev_device_set_baudrate(%struct.serdev_device*, i32) #1

declare dso_local i32 @serdev_device_set_flow_control(%struct.serdev_device*, i32) #1

declare dso_local i32 @serdev_device_set_parity(%struct.serdev_device*, i32) #1

declare dso_local i32 @pms7003_do_cmd(%struct.pms7003_state*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @devm_add_action_or_reset(i32*, i32, %struct.pms7003_state*) #1

declare dso_local i32 @devm_iio_triggered_buffer_setup(i32*, %struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
