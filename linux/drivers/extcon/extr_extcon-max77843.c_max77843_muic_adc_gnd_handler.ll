; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77843.c_max77843_muic_adc_gnd_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77843.c_max77843_muic_adc_gnd_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77843_muic_info = type { i32, i32 }

@MAX77843_CABLE_GROUP_ADC_GND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"external connector is %s (gnd:0x%02x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"attached\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"detached\00", align 1
@MAX77843_MUIC_CONTROL1_SW_USB = common dso_local global i32 0, align 4
@EXTCON_USB_HOST = common dso_local global i32 0, align 4
@MAX77843_MUIC_CONTROL1_SW_OPEN = common dso_local global i32 0, align 4
@EXTCON_DISP_MHL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"failed to detect %s accessory(gnd:0x%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77843_muic_info*)* @max77843_muic_adc_gnd_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77843_muic_adc_gnd_handler(%struct.max77843_muic_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max77843_muic_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.max77843_muic_info* %0, %struct.max77843_muic_info** %3, align 8
  %7 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %8 = load i32, i32* @MAX77843_CABLE_GROUP_ADC_GND, align 4
  %9 = call i32 @max77843_muic_get_cable_type(%struct.max77843_muic_info* %7, i32 %8, i32* %6)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %11 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %17)
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %55 [
    i32 129, label %20
    i32 128, label %20
    i32 130, label %39
    i32 131, label %39
  ]

20:                                               ; preds = %1, %1
  %21 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %22 = load i32, i32* @MAX77843_MUIC_CONTROL1_SW_USB, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @max77843_muic_set_path(%struct.max77843_muic_info* %21, i32 %22, i32 %23, i32 0)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %68

29:                                               ; preds = %20
  %30 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %31 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @EXTCON_USB_HOST, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @extcon_set_state_sync(i32 %32, i32 %33, i32 %34)
  %36 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @max77843_charger_set_otg_vbus(%struct.max77843_muic_info* %36, i32 %37)
  br label %67

39:                                               ; preds = %1, %1
  %40 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %41 = load i32, i32* @MAX77843_MUIC_CONTROL1_SW_OPEN, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @max77843_muic_set_path(%struct.max77843_muic_info* %40, i32 %41, i32 %42, i32 0)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %68

48:                                               ; preds = %39
  %49 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %50 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @EXTCON_DISP_MHL, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @extcon_set_state_sync(i32 %51, i32 %52, i32 %53)
  br label %67

55:                                               ; preds = %1
  %56 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %57 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %62, i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %68

67:                                               ; preds = %48, %29
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %55, %46, %27
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @max77843_muic_get_cable_type(%struct.max77843_muic_info*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32) #1

declare dso_local i32 @max77843_muic_set_path(%struct.max77843_muic_info*, i32, i32, i32) #1

declare dso_local i32 @extcon_set_state_sync(i32, i32, i32) #1

declare dso_local i32 @max77843_charger_set_otg_vbus(%struct.max77843_muic_info*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
