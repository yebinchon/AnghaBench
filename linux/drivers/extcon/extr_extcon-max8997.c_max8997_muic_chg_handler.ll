; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max8997.c_max8997_muic_chg_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max8997.c_max8997_muic_chg_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8997_muic_info = type { i32*, i32, i32 }

@MAX8997_CABLE_GROUP_CHG = common dso_local global i32 0, align 4
@STATUS1_ADC_MASK = common dso_local global i32 0, align 4
@STATUS1_ADC_SHIFT = common dso_local global i32 0, align 4
@MAX8997_MUIC_ADC_OPEN = common dso_local global i32 0, align 4
@MAX8997_USB_DEVICE = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_CDP = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_DCP = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_SLOW = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_FAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"failed to detect %s unknown chg cable (type:0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"attached\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"detached\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max8997_muic_info*)* @max8997_muic_chg_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_muic_chg_handler(%struct.max8997_muic_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max8997_muic_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.max8997_muic_info* %0, %struct.max8997_muic_info** %3, align 8
  %7 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %8 = load i32, i32* @MAX8997_CABLE_GROUP_CHG, align 4
  %9 = call i32 @max8997_muic_get_cable_type(%struct.max8997_muic_info* %7, i32 %8, i32* %5)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %62 [
    i32 129, label %11
    i32 128, label %12
    i32 130, label %34
    i32 131, label %41
    i32 132, label %48
    i32 133, label %55
  ]

11:                                               ; preds = %1
  br label %74

12:                                               ; preds = %1
  %13 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %14 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @STATUS1_ADC_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @STATUS1_ADC_SHIFT, align 4
  %21 = load i32, i32* %6, align 4
  %22 = ashr i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @STATUS1_ADC_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @MAX8997_MUIC_ADC_OPEN, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %12
  %29 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %30 = load i32, i32* @MAX8997_USB_DEVICE, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @max8997_muic_handle_usb(%struct.max8997_muic_info* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %12
  br label %74

34:                                               ; preds = %1
  %35 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %36 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @EXTCON_CHG_USB_CDP, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @extcon_set_state_sync(i32 %37, i32 %38, i32 %39)
  br label %74

41:                                               ; preds = %1
  %42 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %43 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @EXTCON_CHG_USB_DCP, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @extcon_set_state_sync(i32 %44, i32 %45, i32 %46)
  br label %74

48:                                               ; preds = %1
  %49 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %50 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @EXTCON_CHG_USB_SLOW, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @extcon_set_state_sync(i32 %51, i32 %52, i32 %53)
  br label %74

55:                                               ; preds = %1
  %56 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %57 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @EXTCON_CHG_USB_FAST, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @extcon_set_state_sync(i32 %58, i32 %59, i32 %60)
  br label %74

62:                                               ; preds = %1
  %63 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %64 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %69, i32 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %75

74:                                               ; preds = %55, %48, %41, %34, %33, %11
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %62
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @max8997_muic_get_cable_type(%struct.max8997_muic_info*, i32, i32*) #1

declare dso_local i32 @max8997_muic_handle_usb(%struct.max8997_muic_info*, i32, i32) #1

declare dso_local i32 @extcon_set_state_sync(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
