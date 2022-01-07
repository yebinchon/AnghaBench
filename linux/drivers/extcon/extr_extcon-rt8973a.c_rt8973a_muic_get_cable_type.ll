; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-rt8973a.c_rt8973a_muic_get_cable_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-rt8973a.c_rt8973a_muic_get_cable_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt8973a_muic_info = type { i32, i32 }

@RT8973A_REG_ADC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to read ADC register\0A\00", align 1
@RT8973A_REG_ADC_MASK = common dso_local global i32 0, align 4
@RT8973A_REG_DEV1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to read DEV1 register\0A\00", align 1
@RT8973A_REG_DEV1_USB_MASK = common dso_local global i32 0, align 4
@RT8973A_MUIC_ADC_USB = common dso_local global i32 0, align 4
@RT8973A_REG_DEV1_DCPORT_MASK = common dso_local global i32 0, align 4
@RT8973A_MUIC_ADC_TA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt8973a_muic_info*)* @rt8973a_muic_get_cable_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt8973a_muic_get_cable_type(%struct.rt8973a_muic_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt8973a_muic_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt8973a_muic_info* %0, %struct.rt8973a_muic_info** %3, align 8
  %8 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %3, align 8
  %9 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @RT8973A_REG_ADC, align 4
  %12 = call i32 @regmap_read(i32 %10, i32 %11, i32* %4)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %3, align 8
  %17 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %60

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @RT8973A_REG_ADC_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %3, align 8
  %26 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RT8973A_REG_DEV1, align 4
  %29 = call i32 @regmap_read(i32 %27, i32 %28, i32* %5)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %3, align 8
  %34 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %60

38:                                               ; preds = %21
  %39 = load i32, i32* %4, align 4
  switch i32 %39, label %57 [
    i32 128, label %40
  ]

40:                                               ; preds = %38
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @RT8973A_REG_DEV1_USB_MASK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @RT8973A_MUIC_ADC_USB, align 4
  store i32 %46, i32* %7, align 4
  br label %56

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @RT8973A_REG_DEV1_DCPORT_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @RT8973A_MUIC_ADC_TA, align 4
  store i32 %53, i32* %7, align 4
  br label %55

54:                                               ; preds = %47
  store i32 128, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %52
  br label %56

56:                                               ; preds = %55, %45
  br label %58

57:                                               ; preds = %38
  br label %58

58:                                               ; preds = %57, %56
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %32, %15
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
