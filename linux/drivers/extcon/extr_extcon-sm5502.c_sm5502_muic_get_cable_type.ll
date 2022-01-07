; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-sm5502.c_sm5502_muic_get_cable_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-sm5502.c_sm5502_muic_get_cable_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm5502_muic_info = type { i32, i32 }

@SM5502_REG_ADC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to read ADC register\0A\00", align 1
@SM5502_REG_ADC_MASK = common dso_local global i32 0, align 4
@SM5502_REG_DEV_TYPE1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to read DEV_TYPE1 reg\0A\00", align 1
@SM5502_MUIC_ADC_OPEN_USB = common dso_local global i32 0, align 4
@SM5502_MUIC_ADC_OPEN_TA = common dso_local global i32 0, align 4
@SM5502_MUIC_ADC_OPEN_USB_OTG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"cannot identify the cable type: adc(0x%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"failed to identify the cable type: adc(0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sm5502_muic_info*)* @sm5502_muic_get_cable_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm5502_muic_get_cable_type(%struct.sm5502_muic_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sm5502_muic_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sm5502_muic_info* %0, %struct.sm5502_muic_info** %3, align 8
  store i32 -1, i32* %4, align 4
  %8 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %3, align 8
  %9 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SM5502_REG_ADC, align 4
  %12 = call i32 @regmap_read(i32 %10, i32 %11, i32* %5)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %3, align 8
  %17 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, i8*, ...) @dev_err(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %73

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SM5502_REG_ADC_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 155
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 155, i32* %2, align 4
  br label %73

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  switch i32 %29, label %63 [
    i32 155, label %30
    i32 135, label %30
    i32 149, label %30
    i32 148, label %30
    i32 147, label %30
    i32 146, label %30
    i32 145, label %30
    i32 144, label %30
    i32 143, label %30
    i32 142, label %30
    i32 141, label %30
    i32 152, label %30
    i32 151, label %30
    i32 150, label %30
    i32 140, label %30
    i32 139, label %30
    i32 138, label %30
    i32 137, label %30
    i32 136, label %30
    i32 161, label %30
    i32 153, label %30
    i32 134, label %30
    i32 131, label %30
    i32 133, label %30
    i32 158, label %30
    i32 156, label %30
    i32 160, label %30
    i32 132, label %30
    i32 159, label %30
    i32 157, label %30
    i32 162, label %31
    i32 154, label %32
  ]

30:                                               ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28
  br label %71

31:                                               ; preds = %28
  br label %71

32:                                               ; preds = %28
  %33 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %3, align 8
  %34 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SM5502_REG_DEV_TYPE1, align 4
  %37 = call i32 @regmap_read(i32 %35, i32 %36, i32* %6)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %3, align 8
  %42 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i8*, ...) @dev_err(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %73

46:                                               ; preds = %32
  %47 = load i32, i32* %6, align 4
  switch i32 %47, label %54 [
    i32 128, label %48
    i32 130, label %50
    i32 129, label %52
  ]

48:                                               ; preds = %46
  %49 = load i32, i32* @SM5502_MUIC_ADC_OPEN_USB, align 4
  store i32 %49, i32* %4, align 4
  br label %62

50:                                               ; preds = %46
  %51 = load i32, i32* @SM5502_MUIC_ADC_OPEN_TA, align 4
  store i32 %51, i32* %4, align 4
  br label %62

52:                                               ; preds = %46
  %53 = load i32, i32* @SM5502_MUIC_ADC_OPEN_USB_OTG, align 4
  store i32 %53, i32* %4, align 4
  br label %62

54:                                               ; preds = %46
  %55 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %3, align 8
  %56 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @dev_dbg(i32 %57, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %73

62:                                               ; preds = %52, %50, %48
  br label %71

63:                                               ; preds = %28
  %64 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %3, align 8
  %65 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 (i32, i8*, ...) @dev_err(i32 %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %73

71:                                               ; preds = %62, %31, %30
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %63, %54, %40, %27, %15
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
