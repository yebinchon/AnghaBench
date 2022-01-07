; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max14577.c_max14577_muic_get_cable_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max14577.c_max14577_muic_get_cable_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max14577_muic_info = type { i32*, i32, i32, i32 }

@MAX14577_MUIC_STATUS1 = common dso_local global i64 0, align 8
@STATUS1_ADC_MASK = common dso_local global i32 0, align 4
@STATUS1_ADC_SHIFT = common dso_local global i32 0, align 4
@MAX14577_MUIC_ADC_OPEN = common dso_local global i32 0, align 4
@MAX14577_MUIC_STATUS2 = common dso_local global i64 0, align 8
@STATUS2_CHGTYP_MASK = common dso_local global i32 0, align 4
@STATUS2_CHGTYP_SHIFT = common dso_local global i32 0, align 4
@MAX14577_CHARGER_TYPE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unknown cable group (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max14577_muic_info*, i32, i32*)* @max14577_muic_get_cable_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max14577_muic_get_cable_type(%struct.max14577_muic_info* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.max14577_muic_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.max14577_muic_info* %0, %struct.max14577_muic_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %69 [
    i32 129, label %11
    i32 128, label %40
  ]

11:                                               ; preds = %3
  %12 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %4, align 8
  %13 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @MAX14577_MUIC_STATUS1, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @STATUS1_ADC_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @STATUS1_ADC_SHIFT, align 4
  %21 = load i32, i32* %8, align 4
  %22 = ashr i32 %21, %20
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @MAX14577_MUIC_ADC_OPEN, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %11
  %27 = load i32*, i32** %6, align 8
  store i32 0, i32* %27, align 4
  %28 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %4, align 8
  %29 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @MAX14577_MUIC_ADC_OPEN, align 4
  %32 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %4, align 8
  %33 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  br label %39

34:                                               ; preds = %11
  %35 = load i32*, i32** %6, align 8
  store i32 1, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %4, align 8
  %38 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  store i32 %36, i32* %7, align 4
  br label %39

39:                                               ; preds = %34, %26
  br label %77

40:                                               ; preds = %3
  %41 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %4, align 8
  %42 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @MAX14577_MUIC_STATUS2, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @STATUS2_CHGTYP_MASK, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* @STATUS2_CHGTYP_SHIFT, align 4
  %50 = load i32, i32* %9, align 4
  %51 = ashr i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @MAX14577_CHARGER_TYPE_NONE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %40
  %56 = load i32*, i32** %6, align 8
  store i32 0, i32* %56, align 4
  %57 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %4, align 8
  %58 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* @MAX14577_CHARGER_TYPE_NONE, align 4
  %61 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %4, align 8
  %62 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  br label %68

63:                                               ; preds = %40
  %64 = load i32*, i32** %6, align 8
  store i32 1, i32* %64, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %4, align 8
  %67 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  store i32 %65, i32* %7, align 4
  br label %68

68:                                               ; preds = %63, %55
  br label %77

69:                                               ; preds = %3
  %70 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %4, align 8
  %71 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %69, %68, %39
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
