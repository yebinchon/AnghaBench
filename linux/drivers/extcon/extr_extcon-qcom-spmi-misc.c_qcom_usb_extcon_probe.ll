; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-qcom-spmi-misc.c_qcom_usb_extcon_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-qcom-spmi-misc.c_qcom_usb_extcon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.qcom_usb_extcon_info = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qcom_usb_extcon_cable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to allocate extcon device\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to register extcon device\0A\00", align 1
@USB_ID_DEBOUNCE_MS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"usb_id\00", align 1
@qcom_usb_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to request handler for ID IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qcom_usb_extcon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_usb_extcon_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.qcom_usb_extcon_info*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 1
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.qcom_usb_extcon_info* @devm_kzalloc(%struct.device* %9, i32 24, i32 %10)
  store %struct.qcom_usb_extcon_info* %11, %struct.qcom_usb_extcon_info** %5, align 8
  %12 = load %struct.qcom_usb_extcon_info*, %struct.qcom_usb_extcon_info** %5, align 8
  %13 = icmp ne %struct.qcom_usb_extcon_info* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %99

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* @qcom_usb_extcon_cable, align 4
  %20 = call i32 @devm_extcon_dev_allocate(%struct.device* %18, i32 %19)
  %21 = load %struct.qcom_usb_extcon_info*, %struct.qcom_usb_extcon_info** %5, align 8
  %22 = getelementptr inbounds %struct.qcom_usb_extcon_info, %struct.qcom_usb_extcon_info* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.qcom_usb_extcon_info*, %struct.qcom_usb_extcon_info** %5, align 8
  %24 = getelementptr inbounds %struct.qcom_usb_extcon_info, %struct.qcom_usb_extcon_info* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %99

33:                                               ; preds = %17
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load %struct.qcom_usb_extcon_info*, %struct.qcom_usb_extcon_info** %5, align 8
  %36 = getelementptr inbounds %struct.qcom_usb_extcon_info, %struct.qcom_usb_extcon_info* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @devm_extcon_dev_register(%struct.device* %34, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %99

45:                                               ; preds = %33
  %46 = load i32, i32* @USB_ID_DEBOUNCE_MS, align 4
  %47 = call i32 @msecs_to_jiffies(i32 %46)
  %48 = load %struct.qcom_usb_extcon_info*, %struct.qcom_usb_extcon_info** %5, align 8
  %49 = getelementptr inbounds %struct.qcom_usb_extcon_info, %struct.qcom_usb_extcon_info* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.qcom_usb_extcon_info*, %struct.qcom_usb_extcon_info** %5, align 8
  %51 = getelementptr inbounds %struct.qcom_usb_extcon_info, %struct.qcom_usb_extcon_info* %50, i32 0, i32 1
  %52 = call i32 @INIT_DELAYED_WORK(%struct.TYPE_2__* %51, i32 (i32*)* @qcom_usb_extcon_detect_cable)
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = call i64 @platform_get_irq_byname(%struct.platform_device* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.qcom_usb_extcon_info*, %struct.qcom_usb_extcon_info** %5, align 8
  %56 = getelementptr inbounds %struct.qcom_usb_extcon_info, %struct.qcom_usb_extcon_info* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.qcom_usb_extcon_info*, %struct.qcom_usb_extcon_info** %5, align 8
  %58 = getelementptr inbounds %struct.qcom_usb_extcon_info, %struct.qcom_usb_extcon_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %45
  %62 = load %struct.qcom_usb_extcon_info*, %struct.qcom_usb_extcon_info** %5, align 8
  %63 = getelementptr inbounds %struct.qcom_usb_extcon_info, %struct.qcom_usb_extcon_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %2, align 4
  br label %99

66:                                               ; preds = %45
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = load %struct.qcom_usb_extcon_info*, %struct.qcom_usb_extcon_info** %5, align 8
  %69 = getelementptr inbounds %struct.qcom_usb_extcon_info, %struct.qcom_usb_extcon_info* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* @qcom_usb_irq_handler, align 4
  %73 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %74 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @IRQF_ONESHOT, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.qcom_usb_extcon_info*, %struct.qcom_usb_extcon_info** %5, align 8
  %82 = call i32 @devm_request_threaded_irq(%struct.device* %67, i32 %71, i32* null, i32 %72, i32 %77, i32 %80, %struct.qcom_usb_extcon_info* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %66
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = call i32 @dev_err(%struct.device* %86, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %2, align 4
  br label %99

89:                                               ; preds = %66
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = load %struct.qcom_usb_extcon_info*, %struct.qcom_usb_extcon_info** %5, align 8
  %92 = call i32 @platform_set_drvdata(%struct.platform_device* %90, %struct.qcom_usb_extcon_info* %91)
  %93 = load %struct.device*, %struct.device** %4, align 8
  %94 = call i32 @device_init_wakeup(%struct.device* %93, i32 1)
  %95 = load %struct.qcom_usb_extcon_info*, %struct.qcom_usb_extcon_info** %5, align 8
  %96 = getelementptr inbounds %struct.qcom_usb_extcon_info, %struct.qcom_usb_extcon_info* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = call i32 @qcom_usb_extcon_detect_cable(i32* %97)
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %89, %85, %61, %41, %28, %14
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.qcom_usb_extcon_info* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_extcon_dev_allocate(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_extcon_dev_register(%struct.device*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(%struct.TYPE_2__*, i32 (i32*)*) #1

declare dso_local i32 @qcom_usb_extcon_detect_cable(i32*) #1

declare dso_local i64 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.qcom_usb_extcon_info*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.qcom_usb_extcon_info*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
