; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max8997.c_max8997_muic_adc_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max8997.c_max8997_muic_adc_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8997_muic_info = type { i32, i32 }

@MAX8997_CABLE_GROUP_ADC = common dso_local global i32 0, align 4
@MAX8997_USB_HOST = common dso_local global i32 0, align 4
@EXTCON_DISP_MHL = common dso_local global i32 0, align 4
@MAX8997_USB_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"cable is %s but it isn't used (type:0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"attached\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"detached\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"failed to detect %s unknown cable (type:0x%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max8997_muic_info*)* @max8997_muic_adc_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_muic_adc_handler(%struct.max8997_muic_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max8997_muic_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.max8997_muic_info* %0, %struct.max8997_muic_info** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %8 = load i32, i32* @MAX8997_CABLE_GROUP_ADC, align 4
  %9 = call i32 @max8997_muic_get_cable_type(%struct.max8997_muic_info* %7, i32 %8, i32* %5)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %64 [
    i32 149, label %11
    i32 148, label %21
    i32 151, label %28
    i32 150, label %28
    i32 157, label %38
    i32 152, label %38
    i32 153, label %48
    i32 143, label %52
    i32 142, label %52
    i32 141, label %52
    i32 140, label %52
    i32 139, label %52
    i32 138, label %52
    i32 137, label %52
    i32 136, label %52
    i32 135, label %52
    i32 146, label %52
    i32 145, label %52
    i32 144, label %52
    i32 134, label %52
    i32 133, label %52
    i32 132, label %52
    i32 131, label %52
    i32 130, label %52
    i32 154, label %52
    i32 147, label %52
    i32 129, label %52
    i32 128, label %52
    i32 156, label %52
    i32 155, label %52
    i32 158, label %52
  ]

11:                                               ; preds = %1
  %12 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %13 = load i32, i32* @MAX8997_USB_HOST, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @max8997_muic_handle_usb(%struct.max8997_muic_info* %12, i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %77

20:                                               ; preds = %11
  br label %76

21:                                               ; preds = %1
  %22 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %23 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @EXTCON_DISP_MHL, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @extcon_set_state_sync(i32 %24, i32 %25, i32 %26)
  br label %76

28:                                               ; preds = %1, %1
  %29 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %30 = load i32, i32* @MAX8997_USB_DEVICE, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @max8997_muic_handle_usb(%struct.max8997_muic_info* %29, i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %77

37:                                               ; preds = %28
  br label %76

38:                                               ; preds = %1, %1
  %39 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @max8997_muic_handle_dock(%struct.max8997_muic_info* %39, i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %77

47:                                               ; preds = %38
  br label %76

48:                                               ; preds = %1
  %49 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @max8997_muic_handle_jig_uart(%struct.max8997_muic_info* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %76

52:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %53 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %54 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @dev_info(i32 %55, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %59, i32 %60)
  %62 = load i32, i32* @EAGAIN, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %77

64:                                               ; preds = %1
  %65 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %66 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %71, i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %77

76:                                               ; preds = %48, %47, %37, %21, %20
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %64, %52, %45, %35, %18
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @max8997_muic_get_cable_type(%struct.max8997_muic_info*, i32, i32*) #1

declare dso_local i32 @max8997_muic_handle_usb(%struct.max8997_muic_info*, i32, i32) #1

declare dso_local i32 @extcon_set_state_sync(i32, i32, i32) #1

declare dso_local i32 @max8997_muic_handle_dock(%struct.max8997_muic_info*, i32, i32) #1

declare dso_local i32 @max8997_muic_handle_jig_uart(%struct.max8997_muic_info*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
