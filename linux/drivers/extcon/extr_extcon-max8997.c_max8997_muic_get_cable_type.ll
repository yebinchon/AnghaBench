; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max8997.c_max8997_muic_get_cable_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max8997.c_max8997_muic_get_cable_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8997_muic_info = type { i32*, i32, i32, i32 }

@STATUS1_ADC_MASK = common dso_local global i32 0, align 4
@STATUS1_ADC_SHIFT = common dso_local global i32 0, align 4
@MAX8997_MUIC_ADC_OPEN = common dso_local global i32 0, align 4
@STATUS2_CHGTYP_MASK = common dso_local global i32 0, align 4
@STATUS2_CHGTYP_SHIFT = common dso_local global i32 0, align 4
@MAX8997_CHARGER_TYPE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unknown cable group (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max8997_muic_info*, i32, i32*)* @max8997_muic_get_cable_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_muic_get_cable_type(%struct.max8997_muic_info* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.max8997_muic_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.max8997_muic_info* %0, %struct.max8997_muic_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %67 [
    i32 129, label %11
    i32 128, label %39
  ]

11:                                               ; preds = %3
  %12 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %4, align 8
  %13 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @STATUS1_ADC_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @STATUS1_ADC_SHIFT, align 4
  %20 = load i32, i32* %8, align 4
  %21 = ashr i32 %20, %19
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @MAX8997_MUIC_ADC_OPEN, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %11
  %26 = load i32*, i32** %6, align 8
  store i32 0, i32* %26, align 4
  %27 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %4, align 8
  %28 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @MAX8997_MUIC_ADC_OPEN, align 4
  %31 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %4, align 8
  %32 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  br label %38

33:                                               ; preds = %11
  %34 = load i32*, i32** %6, align 8
  store i32 1, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %4, align 8
  %37 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  store i32 %35, i32* %7, align 4
  br label %38

38:                                               ; preds = %33, %25
  br label %75

39:                                               ; preds = %3
  %40 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %4, align 8
  %41 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @STATUS2_CHGTYP_MASK, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* @STATUS2_CHGTYP_SHIFT, align 4
  %48 = load i32, i32* %9, align 4
  %49 = ashr i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @MAX8997_CHARGER_TYPE_NONE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %39
  %54 = load i32*, i32** %6, align 8
  store i32 0, i32* %54, align 4
  %55 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %4, align 8
  %56 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* @MAX8997_CHARGER_TYPE_NONE, align 4
  %59 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %4, align 8
  %60 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  br label %66

61:                                               ; preds = %39
  %62 = load i32*, i32** %6, align 8
  store i32 1, i32* %62, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %4, align 8
  %65 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  store i32 %63, i32* %7, align 4
  br label %66

66:                                               ; preds = %61, %53
  br label %75

67:                                               ; preds = %3
  %68 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %4, align 8
  %69 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %67, %66, %38
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
