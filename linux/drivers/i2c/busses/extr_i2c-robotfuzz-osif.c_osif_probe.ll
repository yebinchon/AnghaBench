; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-robotfuzz-osif.c_osif_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-robotfuzz-osif.c_osif_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.osif_priv = type { %struct.TYPE_9__*, %struct.TYPE_10__, %struct.usb_interface* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.osif_priv*, i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@osif_algorithm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"OSIF at bus %03d device %03d\00", align 1
@OSIFI2C_SET_BIT_RATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failure sending bit rate\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"version %x.%02x found at bus %03d address %03d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @osif_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osif_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.osif_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %10 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.osif_priv* @devm_kzalloc(i32* %10, i32 48, i32 %11)
  store %struct.osif_priv* %12, %struct.osif_priv** %7, align 8
  %13 = load %struct.osif_priv*, %struct.osif_priv** %7, align 8
  %14 = icmp ne %struct.osif_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %107

18:                                               ; preds = %2
  %19 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %20 = call i32 @interface_to_usbdev(%struct.usb_interface* %19)
  %21 = call %struct.TYPE_9__* @usb_get_dev(i32 %20)
  %22 = load %struct.osif_priv*, %struct.osif_priv** %7, align 8
  %23 = getelementptr inbounds %struct.osif_priv, %struct.osif_priv* %22, i32 0, i32 0
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %23, align 8
  %24 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %25 = load %struct.osif_priv*, %struct.osif_priv** %7, align 8
  %26 = getelementptr inbounds %struct.osif_priv, %struct.osif_priv* %25, i32 0, i32 2
  store %struct.usb_interface* %24, %struct.usb_interface** %26, align 8
  %27 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %28 = load %struct.osif_priv*, %struct.osif_priv** %7, align 8
  %29 = call i32 @usb_set_intfdata(%struct.usb_interface* %27, %struct.osif_priv* %28)
  %30 = load i32, i32* @THIS_MODULE, align 4
  %31 = load %struct.osif_priv*, %struct.osif_priv** %7, align 8
  %32 = getelementptr inbounds %struct.osif_priv, %struct.osif_priv* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 4
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %35 = load %struct.osif_priv*, %struct.osif_priv** %7, align 8
  %36 = getelementptr inbounds %struct.osif_priv, %struct.osif_priv* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 8
  %38 = load %struct.osif_priv*, %struct.osif_priv** %7, align 8
  %39 = getelementptr inbounds %struct.osif_priv, %struct.osif_priv* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  store i32* @osif_algorithm, i32** %40, align 8
  %41 = load %struct.osif_priv*, %struct.osif_priv** %7, align 8
  %42 = load %struct.osif_priv*, %struct.osif_priv** %7, align 8
  %43 = getelementptr inbounds %struct.osif_priv, %struct.osif_priv* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  store %struct.osif_priv* %41, %struct.osif_priv** %44, align 8
  %45 = load %struct.osif_priv*, %struct.osif_priv** %7, align 8
  %46 = getelementptr inbounds %struct.osif_priv, %struct.osif_priv* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.osif_priv*, %struct.osif_priv** %7, align 8
  %50 = getelementptr inbounds %struct.osif_priv, %struct.osif_priv* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.osif_priv*, %struct.osif_priv** %7, align 8
  %57 = getelementptr inbounds %struct.osif_priv, %struct.osif_priv* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @snprintf(i32 %48, i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %60)
  %62 = load %struct.osif_priv*, %struct.osif_priv** %7, align 8
  %63 = getelementptr inbounds %struct.osif_priv, %struct.osif_priv* %62, i32 0, i32 1
  %64 = load i32, i32* @OSIFI2C_SET_BIT_RATE, align 4
  %65 = call i32 @osif_usb_read(%struct.TYPE_10__* %63, i32 %64, i32 52, i32 0, i32* null, i32 0)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %18
  %69 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %70 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %69, i32 0, i32 0
  %71 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.osif_priv*, %struct.osif_priv** %7, align 8
  %73 = getelementptr inbounds %struct.osif_priv, %struct.osif_priv* %72, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = call i32 @usb_put_dev(%struct.TYPE_9__* %74)
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %107

77:                                               ; preds = %18
  %78 = load %struct.osif_priv*, %struct.osif_priv** %7, align 8
  %79 = getelementptr inbounds %struct.osif_priv, %struct.osif_priv* %78, i32 0, i32 1
  %80 = call i32 @i2c_add_adapter(%struct.TYPE_10__* %79)
  %81 = load %struct.osif_priv*, %struct.osif_priv** %7, align 8
  %82 = getelementptr inbounds %struct.osif_priv, %struct.osif_priv* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @le16_to_cpu(i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %89 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %88, i32 0, i32 0
  %90 = load i32, i32* %8, align 4
  %91 = ashr i32 %90, 8
  %92 = load i32, i32* %8, align 4
  %93 = and i32 %92, 255
  %94 = load %struct.osif_priv*, %struct.osif_priv** %7, align 8
  %95 = getelementptr inbounds %struct.osif_priv, %struct.osif_priv* %94, i32 0, i32 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.osif_priv*, %struct.osif_priv** %7, align 8
  %102 = getelementptr inbounds %struct.osif_priv, %struct.osif_priv* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @dev_info(i32* %89, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %93, i32 %100, i32 %105)
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %77, %68, %15
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.osif_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.osif_priv*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @osif_usb_read(%struct.TYPE_10__*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_put_dev(%struct.TYPE_9__*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_10__*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
