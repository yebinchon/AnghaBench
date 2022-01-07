; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max14577.c_max14577_muic_detect_accessory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max14577.c_max14577_muic_detect_accessory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max14577_muic_info = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAX14577_MUIC_REG_STATUS1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to read MUIC register\0A\00", align 1
@MAX14577_CABLE_GROUP_ADC = common dso_local global i32 0, align 4
@MAX14577_MUIC_ADC_OPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Cannot detect accessory\0A\00", align 1
@MAX14577_CABLE_GROUP_CHG = common dso_local global i32 0, align 4
@MAX14577_CHARGER_TYPE_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Cannot detect charger accessory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max14577_muic_info*)* @max14577_muic_detect_accessory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max14577_muic_detect_accessory(%struct.max14577_muic_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max14577_muic_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.max14577_muic_info* %0, %struct.max14577_muic_info** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %9 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %12 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MAX14577_MUIC_REG_STATUS1, align 4
  %17 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %18 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @max14577_bulk_read(i32 %15, i32 %16, i32 %19, i32 2)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %25 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %29 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %86

32:                                               ; preds = %1
  %33 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %34 = load i32, i32* @MAX14577_CABLE_GROUP_ADC, align 4
  %35 = call i32 @max14577_muic_get_cable_type(%struct.max14577_muic_info* %33, i32 %34, i32* %7)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @MAX14577_MUIC_ADC_OPEN, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %44 = call i32 @max14577_muic_adc_handler(%struct.max14577_muic_info* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %49 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %53 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %86

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56, %38, %32
  %58 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %59 = load i32, i32* @MAX14577_CABLE_GROUP_CHG, align 4
  %60 = call i32 @max14577_muic_get_cable_type(%struct.max14577_muic_info* %58, i32 %59, i32* %7)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @MAX14577_CHARGER_TYPE_NONE, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %63
  %68 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %69 = call i32 @max14577_muic_chg_handler(%struct.max14577_muic_info* %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %74 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %77 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %78 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %86

81:                                               ; preds = %67
  br label %82

82:                                               ; preds = %81, %63, %57
  %83 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %84 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %82, %72, %47, %23
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @max14577_bulk_read(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @max14577_muic_get_cable_type(%struct.max14577_muic_info*, i32, i32*) #1

declare dso_local i32 @max14577_muic_adc_handler(%struct.max14577_muic_info*) #1

declare dso_local i32 @max14577_muic_chg_handler(%struct.max14577_muic_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
