; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77693.c_max77693_muic_adc_ground_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77693.c_max77693_muic_adc_ground_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_muic_info = type { i32, i32 }

@MAX77693_CABLE_GROUP_ADC_GND = common dso_local global i32 0, align 4
@MAX77693_CONTROL1_SW_USB = common dso_local global i32 0, align 4
@EXTCON_USB_HOST = common dso_local global i32 0, align 4
@MAX77693_CONTROL1_SW_AUDIO = common dso_local global i32 0, align 4
@EXTCON_USB = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_SDP = common dso_local global i32 0, align 4
@EXTCON_DISP_MHL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to detect %s cable of gnd type\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"attached\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"detached\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77693_muic_info*)* @max77693_muic_adc_ground_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_muic_adc_ground_handler(%struct.max77693_muic_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max77693_muic_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.max77693_muic_info* %0, %struct.max77693_muic_info** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %8 = load i32, i32* @MAX77693_CABLE_GROUP_ADC_GND, align 4
  %9 = call i32 @max77693_muic_get_cable_type(%struct.max77693_muic_info* %7, i32 %8, i32* %6)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %56 [
    i32 129, label %11
    i32 128, label %11
    i32 132, label %27
    i32 131, label %49
    i32 130, label %49
  ]

11:                                               ; preds = %1, %1
  %12 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %13 = load i32, i32* @MAX77693_CONTROL1_SW_USB, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @max77693_muic_set_path(%struct.max77693_muic_info* %12, i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %68

20:                                               ; preds = %11
  %21 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %22 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @EXTCON_USB_HOST, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @extcon_set_state_sync(i32 %23, i32 %24, i32 %25)
  br label %67

27:                                               ; preds = %1
  %28 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %29 = load i32, i32* @MAX77693_CONTROL1_SW_AUDIO, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @max77693_muic_set_path(%struct.max77693_muic_info* %28, i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %68

36:                                               ; preds = %27
  %37 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %38 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @EXTCON_USB, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @extcon_set_state_sync(i32 %39, i32 %40, i32 %41)
  %43 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %44 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @EXTCON_CHG_USB_SDP, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @extcon_set_state_sync(i32 %45, i32 %46, i32 %47)
  br label %67

49:                                               ; preds = %1, %1
  %50 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %51 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @EXTCON_DISP_MHL, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @extcon_set_state_sync(i32 %52, i32 %53, i32 %54)
  br label %67

56:                                               ; preds = %1
  %57 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %58 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %64 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %68

67:                                               ; preds = %49, %36, %20
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %56, %34, %18
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @max77693_muic_get_cable_type(%struct.max77693_muic_info*, i32, i32*) #1

declare dso_local i32 @max77693_muic_set_path(%struct.max77693_muic_info*, i32, i32) #1

declare dso_local i32 @extcon_set_state_sync(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
