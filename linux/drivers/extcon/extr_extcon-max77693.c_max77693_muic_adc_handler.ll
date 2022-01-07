; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77693.c_max77693_muic_adc_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77693.c_max77693_muic_adc_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_muic_info = type { i32, i32, i32 }

@MAX77693_CABLE_GROUP_ADC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"external connector is %s (adc:0x%02x, prev_adc:0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"attached\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"detached\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"accessory is %s but it isn't used (adc:0x%x)\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"failed to detect %s accessory (adc:0x%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77693_muic_info*)* @max77693_muic_adc_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_muic_adc_handler(%struct.max77693_muic_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max77693_muic_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.max77693_muic_info* %0, %struct.max77693_muic_info** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %9 = load i32, i32* @MAX77693_CABLE_GROUP_ADC, align 4
  %10 = call i32 @max77693_muic_get_cable_type(%struct.max77693_muic_info* %8, i32 %9, i32* %6)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %12 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %20 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, i8*, i32, ...) @dev_info(i32 %13, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %18, i32 %21)
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %80 [
    i32 149, label %24
    i32 151, label %27
    i32 150, label %27
    i32 153, label %27
    i32 152, label %27
    i32 133, label %37
    i32 158, label %37
    i32 157, label %37
    i32 142, label %47
    i32 138, label %47
    i32 136, label %47
    i32 147, label %47
    i32 145, label %47
    i32 130, label %68
    i32 144, label %68
    i32 143, label %68
    i32 141, label %68
    i32 140, label %68
    i32 139, label %68
    i32 137, label %68
    i32 146, label %68
    i32 135, label %68
    i32 134, label %68
    i32 132, label %68
    i32 131, label %68
    i32 154, label %68
    i32 148, label %68
    i32 129, label %68
    i32 128, label %68
    i32 156, label %68
    i32 155, label %68
  ]

24:                                               ; preds = %1
  %25 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %26 = call i32 @max77693_muic_adc_ground_handler(%struct.max77693_muic_info* %25)
  br label %92

27:                                               ; preds = %1, %1, %1, %1
  %28 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @max77693_muic_jig_handler(%struct.max77693_muic_info* %28, i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %93

36:                                               ; preds = %27
  br label %92

37:                                               ; preds = %1, %1, %1
  %38 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @max77693_muic_dock_handler(%struct.max77693_muic_info* %38, i32 %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %93

46:                                               ; preds = %37
  br label %92

47:                                               ; preds = %1, %1, %1, %1, %1
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %53 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  store i32 %51, i32* %5, align 4
  br label %58

54:                                               ; preds = %47
  %55 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %56 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @max77693_muic_dock_button_handler(%struct.max77693_muic_info* %59, i32 %60, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %2, align 4
  br label %93

67:                                               ; preds = %58
  br label %92

68:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %69 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %70 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %76 = load i32, i32* %4, align 4
  %77 = call i32 (i32, i8*, i8*, i32, ...) @dev_info(i32 %71, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %75, i32 %76)
  %78 = load i32, i32* @EAGAIN, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %93

80:                                               ; preds = %1
  %81 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %82 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %87, i32 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %93

92:                                               ; preds = %67, %46, %36, %24
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %80, %68, %65, %44, %34
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @max77693_muic_get_cable_type(%struct.max77693_muic_info*, i32, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @max77693_muic_adc_ground_handler(%struct.max77693_muic_info*) #1

declare dso_local i32 @max77693_muic_jig_handler(%struct.max77693_muic_info*, i32, i32) #1

declare dso_local i32 @max77693_muic_dock_handler(%struct.max77693_muic_info*, i32, i32) #1

declare dso_local i32 @max77693_muic_dock_button_handler(%struct.max77693_muic_info*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
