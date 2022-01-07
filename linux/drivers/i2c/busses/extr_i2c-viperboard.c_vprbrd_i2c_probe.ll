; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-viperboard.c_vprbrd_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-viperboard.c_vprbrd_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.vprbrd = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.vprbrd_i2c = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, i32, %struct.vprbrd*, i32*, i32*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@vprbrd_algorithm = common dso_local global i32 0, align 4
@vprbrd_quirks = common dso_local global i32 0, align 4
@i2c_bus_param = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"viperboard at bus %03d device %03d\00", align 1
@VPRBRD_I2C_FREQ_10KHZ = common dso_local global i64 0, align 8
@VPRBRD_I2C_FREQ_6MHZ = common dso_local global i64 0, align 8
@VPRBRD_USB_REQUEST_I2C_FREQ = common dso_local global i32 0, align 4
@VPRBRD_USB_TYPE_OUT = common dso_local global i32 0, align 4
@VPRBRD_USB_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failure setting i2c_bus_freq to %d\0A\00", align 1
@i2c_bus_freq = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"invalid i2c_bus_freq setting:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vprbrd_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vprbrd_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.vprbrd*, align 8
  %5 = alloca %struct.vprbrd_i2c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.vprbrd* @dev_get_drvdata(i32 %11)
  store %struct.vprbrd* %12, %struct.vprbrd** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.vprbrd_i2c* @devm_kzalloc(%struct.TYPE_12__* %14, i32 56, i32 %15)
  store %struct.vprbrd_i2c* %16, %struct.vprbrd_i2c** %5, align 8
  %17 = load %struct.vprbrd_i2c*, %struct.vprbrd_i2c** %5, align 8
  %18 = icmp eq %struct.vprbrd_i2c* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %113

22:                                               ; preds = %1
  %23 = load i32, i32* @THIS_MODULE, align 4
  %24 = load %struct.vprbrd_i2c*, %struct.vprbrd_i2c** %5, align 8
  %25 = getelementptr inbounds %struct.vprbrd_i2c, %struct.vprbrd_i2c* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 6
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %28 = load %struct.vprbrd_i2c*, %struct.vprbrd_i2c** %5, align 8
  %29 = getelementptr inbounds %struct.vprbrd_i2c, %struct.vprbrd_i2c* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 5
  store i32 %27, i32* %30, align 8
  %31 = load %struct.vprbrd_i2c*, %struct.vprbrd_i2c** %5, align 8
  %32 = getelementptr inbounds %struct.vprbrd_i2c, %struct.vprbrd_i2c* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 4
  store i32* @vprbrd_algorithm, i32** %33, align 8
  %34 = load %struct.vprbrd_i2c*, %struct.vprbrd_i2c** %5, align 8
  %35 = getelementptr inbounds %struct.vprbrd_i2c, %struct.vprbrd_i2c* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 3
  store i32* @vprbrd_quirks, i32** %36, align 8
  %37 = load %struct.vprbrd*, %struct.vprbrd** %4, align 8
  %38 = load %struct.vprbrd_i2c*, %struct.vprbrd_i2c** %5, align 8
  %39 = getelementptr inbounds %struct.vprbrd_i2c, %struct.vprbrd_i2c* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  store %struct.vprbrd* %37, %struct.vprbrd** %40, align 8
  %41 = load i64, i64* @i2c_bus_param, align 8
  %42 = load %struct.vprbrd_i2c*, %struct.vprbrd_i2c** %5, align 8
  %43 = getelementptr inbounds %struct.vprbrd_i2c, %struct.vprbrd_i2c* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.vprbrd_i2c*, %struct.vprbrd_i2c** %5, align 8
  %45 = getelementptr inbounds %struct.vprbrd_i2c, %struct.vprbrd_i2c* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.vprbrd*, %struct.vprbrd** %4, align 8
  %49 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %48, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.vprbrd*, %struct.vprbrd** %4, align 8
  %56 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %55, i32 0, i32 0
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @snprintf(i32 %47, i32 4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %59)
  %61 = load i64, i64* @i2c_bus_param, align 8
  %62 = load i64, i64* @VPRBRD_I2C_FREQ_10KHZ, align 8
  %63 = icmp sle i64 %61, %62
  br i1 %63, label %64, label %93

64:                                               ; preds = %22
  %65 = load i64, i64* @i2c_bus_param, align 8
  %66 = load i64, i64* @VPRBRD_I2C_FREQ_6MHZ, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %64
  %69 = load %struct.vprbrd*, %struct.vprbrd** %4, align 8
  %70 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = call i32 @usb_sndctrlpipe(%struct.TYPE_10__* %71, i32 0)
  store i32 %72, i32* %7, align 4
  %73 = load %struct.vprbrd*, %struct.vprbrd** %4, align 8
  %74 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %73, i32 0, i32 0
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @VPRBRD_USB_REQUEST_I2C_FREQ, align 4
  %78 = load i32, i32* @VPRBRD_USB_TYPE_OUT, align 4
  %79 = load %struct.vprbrd_i2c*, %struct.vprbrd_i2c** %5, align 8
  %80 = getelementptr inbounds %struct.vprbrd_i2c, %struct.vprbrd_i2c* %79, i32 0, i32 1
  %81 = load i32, i32* @VPRBRD_USB_TIMEOUT_MS, align 4
  %82 = call i32 @usb_control_msg(%struct.TYPE_10__* %75, i32 %76, i32 %77, i32 %78, i32 0, i32 0, i64* %80, i32 1, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 1
  br i1 %84, label %85, label %92

85:                                               ; preds = %68
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load i32, i32* @i2c_bus_freq, align 4
  %89 = call i32 @dev_err(%struct.TYPE_12__* %87, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %113

92:                                               ; preds = %68
  br label %100

93:                                               ; preds = %64, %22
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load i32, i32* @i2c_bus_freq, align 4
  %97 = call i32 @dev_err(%struct.TYPE_12__* %95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %113

100:                                              ; preds = %92
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = load %struct.vprbrd_i2c*, %struct.vprbrd_i2c** %5, align 8
  %104 = getelementptr inbounds %struct.vprbrd_i2c, %struct.vprbrd_i2c* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  store %struct.TYPE_12__* %102, %struct.TYPE_12__** %106, align 8
  %107 = load %struct.vprbrd_i2c*, %struct.vprbrd_i2c** %5, align 8
  %108 = getelementptr inbounds %struct.vprbrd_i2c, %struct.vprbrd_i2c* %107, i32 0, i32 0
  %109 = call i32 @i2c_add_adapter(%struct.TYPE_11__* %108)
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = load %struct.vprbrd_i2c*, %struct.vprbrd_i2c** %5, align 8
  %112 = call i32 @platform_set_drvdata(%struct.platform_device* %110, %struct.vprbrd_i2c* %111)
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %100, %93, %85, %19
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.vprbrd* @dev_get_drvdata(i32) #1

declare dso_local %struct.vprbrd_i2c* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @usb_control_msg(%struct.TYPE_10__*, i32, i32, i32, i32, i32, i64*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_11__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.vprbrd_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
