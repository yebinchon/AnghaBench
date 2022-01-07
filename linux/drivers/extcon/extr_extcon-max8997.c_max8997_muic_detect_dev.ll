; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max8997.c_max8997_muic_detect_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max8997.c_max8997_muic_detect_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8997_muic_info = type { i32, i32, i32, i32 }

@MAX8997_MUIC_REG_STATUS1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to read MUIC register\0A\00", align 1
@MAX8997_CABLE_GROUP_ADC = common dso_local global i32 0, align 4
@MAX8997_MUIC_ADC_OPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Cannot detect ADC cable\0A\00", align 1
@MAX8997_CABLE_GROUP_CHG = common dso_local global i32 0, align 4
@MAX8997_CHARGER_TYPE_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Cannot detect charger cable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max8997_muic_info*)* @max8997_muic_detect_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_muic_detect_dev(%struct.max8997_muic_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max8997_muic_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.max8997_muic_info* %0, %struct.max8997_muic_info** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %9 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %12 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MAX8997_MUIC_REG_STATUS1, align 4
  %15 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %16 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @max8997_bulk_read(i32 %13, i32 %14, i32 2, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %23 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %27 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %84

30:                                               ; preds = %1
  %31 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %32 = load i32, i32* @MAX8997_CABLE_GROUP_ADC, align 4
  %33 = call i32 @max8997_muic_get_cable_type(%struct.max8997_muic_info* %31, i32 %32, i32* %7)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @MAX8997_MUIC_ADC_OPEN, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %42 = call i32 @max8997_muic_adc_handler(%struct.max8997_muic_info* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %47 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %51 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %84

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54, %36, %30
  %56 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %57 = load i32, i32* @MAX8997_CABLE_GROUP_CHG, align 4
  %58 = call i32 @max8997_muic_get_cable_type(%struct.max8997_muic_info* %56, i32 %57, i32* %7)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %55
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @MAX8997_CHARGER_TYPE_NONE, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %67 = call i32 @max8997_muic_chg_handler(%struct.max8997_muic_info* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %72 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %75 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %76 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %84

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %79, %61, %55
  %81 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %3, align 8
  %82 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %80, %70, %45, %21
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @max8997_bulk_read(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @max8997_muic_get_cable_type(%struct.max8997_muic_info*, i32, i32*) #1

declare dso_local i32 @max8997_muic_adc_handler(%struct.max8997_muic_info*) #1

declare dso_local i32 @max8997_muic_chg_handler(%struct.max8997_muic_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
