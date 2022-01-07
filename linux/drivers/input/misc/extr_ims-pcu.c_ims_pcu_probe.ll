; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_device_id = type { i64 }
%struct.usb_device = type { i32 }
%struct.ims_pcu = type { i32, i32, i32, i32, i32, i32, %struct.usb_device*, %struct.TYPE_2__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IMS_PCU_BOOTLOADER_MODE = common dso_local global i64 0, align 8
@ims_pcu_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Unable to claim corresponding data interface: %d\0A\00", align 1
@ims_pcu_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @ims_pcu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ims_pcu_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.ims_pcu*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %10 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %9)
  store %struct.usb_device* %10, %struct.usb_device** %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ims_pcu* @kzalloc(i32 40, i32 %11)
  store %struct.ims_pcu* %12, %struct.ims_pcu** %7, align 8
  %13 = load %struct.ims_pcu*, %struct.ims_pcu** %7, align 8
  %14 = icmp ne %struct.ims_pcu* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %135

18:                                               ; preds = %2
  %19 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %20 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %19, i32 0, i32 0
  %21 = load %struct.ims_pcu*, %struct.ims_pcu** %7, align 8
  %22 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %21, i32 0, i32 7
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %22, align 8
  %23 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %24 = load %struct.ims_pcu*, %struct.ims_pcu** %7, align 8
  %25 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %24, i32 0, i32 6
  store %struct.usb_device* %23, %struct.usb_device** %25, align 8
  %26 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %27 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IMS_PCU_BOOTLOADER_MODE, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load %struct.ims_pcu*, %struct.ims_pcu** %7, align 8
  %33 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ims_pcu*, %struct.ims_pcu** %7, align 8
  %35 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %34, i32 0, i32 5
  %36 = call i32 @mutex_init(i32* %35)
  %37 = load %struct.ims_pcu*, %struct.ims_pcu** %7, align 8
  %38 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %37, i32 0, i32 4
  %39 = call i32 @init_completion(i32* %38)
  %40 = load %struct.ims_pcu*, %struct.ims_pcu** %7, align 8
  %41 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %40, i32 0, i32 3
  %42 = call i32 @init_completion(i32* %41)
  %43 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %44 = load %struct.ims_pcu*, %struct.ims_pcu** %7, align 8
  %45 = call i32 @ims_pcu_parse_cdc_data(%struct.usb_interface* %43, %struct.ims_pcu* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %18
  br label %131

49:                                               ; preds = %18
  %50 = load %struct.ims_pcu*, %struct.ims_pcu** %7, align 8
  %51 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ims_pcu*, %struct.ims_pcu** %7, align 8
  %54 = call i32 @usb_driver_claim_interface(i32* @ims_pcu_driver, i32 %52, %struct.ims_pcu* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %59 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %58, i32 0, i32 0
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @dev_err(%struct.TYPE_2__* %59, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %131

62:                                               ; preds = %49
  %63 = load %struct.ims_pcu*, %struct.ims_pcu** %7, align 8
  %64 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ims_pcu*, %struct.ims_pcu** %7, align 8
  %67 = call i32 @usb_set_intfdata(i32 %65, %struct.ims_pcu* %66)
  %68 = load %struct.ims_pcu*, %struct.ims_pcu** %7, align 8
  %69 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ims_pcu*, %struct.ims_pcu** %7, align 8
  %72 = call i32 @usb_set_intfdata(i32 %70, %struct.ims_pcu* %71)
  %73 = load %struct.ims_pcu*, %struct.ims_pcu** %7, align 8
  %74 = call i32 @ims_pcu_buffers_alloc(%struct.ims_pcu* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %62
  br label %126

78:                                               ; preds = %62
  %79 = load %struct.ims_pcu*, %struct.ims_pcu** %7, align 8
  %80 = call i32 @ims_pcu_start_io(%struct.ims_pcu* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %123

84:                                               ; preds = %78
  %85 = load %struct.ims_pcu*, %struct.ims_pcu** %7, align 8
  %86 = call i32 @ims_pcu_line_setup(%struct.ims_pcu* %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %120

90:                                               ; preds = %84
  %91 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %92 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = call i32 @sysfs_create_group(i32* %93, i32* @ims_pcu_attr_group)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %120

98:                                               ; preds = %90
  %99 = load %struct.ims_pcu*, %struct.ims_pcu** %7, align 8
  %100 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load %struct.ims_pcu*, %struct.ims_pcu** %7, align 8
  %105 = call i32 @ims_pcu_init_bootloader_mode(%struct.ims_pcu* %104)
  br label %109

106:                                              ; preds = %98
  %107 = load %struct.ims_pcu*, %struct.ims_pcu** %7, align 8
  %108 = call i32 @ims_pcu_init_application_mode(%struct.ims_pcu* %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = phi i32 [ %105, %103 ], [ %108, %106 ]
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %115

114:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %135

115:                                              ; preds = %113
  %116 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %117 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = call i32 @sysfs_remove_group(i32* %118, i32* @ims_pcu_attr_group)
  br label %120

120:                                              ; preds = %115, %97, %89
  %121 = load %struct.ims_pcu*, %struct.ims_pcu** %7, align 8
  %122 = call i32 @ims_pcu_stop_io(%struct.ims_pcu* %121)
  br label %123

123:                                              ; preds = %120, %83
  %124 = load %struct.ims_pcu*, %struct.ims_pcu** %7, align 8
  %125 = call i32 @ims_pcu_buffers_free(%struct.ims_pcu* %124)
  br label %126

126:                                              ; preds = %123, %77
  %127 = load %struct.ims_pcu*, %struct.ims_pcu** %7, align 8
  %128 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @usb_driver_release_interface(i32* @ims_pcu_driver, i32 %129)
  br label %131

131:                                              ; preds = %126, %57, %48
  %132 = load %struct.ims_pcu*, %struct.ims_pcu** %7, align 8
  %133 = call i32 @kfree(%struct.ims_pcu* %132)
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %131, %114, %15
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.ims_pcu* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ims_pcu_parse_cdc_data(%struct.usb_interface*, %struct.ims_pcu*) #1

declare dso_local i32 @usb_driver_claim_interface(i32*, i32, %struct.ims_pcu*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @usb_set_intfdata(i32, %struct.ims_pcu*) #1

declare dso_local i32 @ims_pcu_buffers_alloc(%struct.ims_pcu*) #1

declare dso_local i32 @ims_pcu_start_io(%struct.ims_pcu*) #1

declare dso_local i32 @ims_pcu_line_setup(%struct.ims_pcu*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @ims_pcu_init_bootloader_mode(%struct.ims_pcu*) #1

declare dso_local i32 @ims_pcu_init_application_mode(%struct.ims_pcu*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @ims_pcu_stop_io(%struct.ims_pcu*) #1

declare dso_local i32 @ims_pcu_buffers_free(%struct.ims_pcu*) #1

declare dso_local i32 @usb_driver_release_interface(i32*, i32) #1

declare dso_local i32 @kfree(%struct.ims_pcu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
