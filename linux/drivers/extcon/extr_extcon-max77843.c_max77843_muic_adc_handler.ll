; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77843.c_max77843_muic_adc_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77843.c_max77843_muic_adc_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77843_muic_info = type { i32, i32 }

@MAX77843_CABLE_GROUP_ADC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"external connector is %s (adc:0x%02x, prev_adc:0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"attached\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"detached\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"accessory is %s but it isn't used (adc:0x%x)\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"failed to detect %s accessory (adc:0x%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77843_muic_info*)* @max77843_muic_adc_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77843_muic_adc_handler(%struct.max77843_muic_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max77843_muic_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.max77843_muic_info* %0, %struct.max77843_muic_info** %3, align 8
  %7 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %8 = load i32, i32* @MAX77843_CABLE_GROUP_ADC, align 4
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
  %18 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %19 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %17, i32 %20)
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %62 [
    i32 133, label %23
    i32 150, label %32
    i32 152, label %40
    i32 151, label %40
    i32 154, label %40
    i32 130, label %50
    i32 144, label %50
    i32 143, label %50
    i32 142, label %50
    i32 141, label %50
    i32 140, label %50
    i32 139, label %50
    i32 138, label %50
    i32 137, label %50
    i32 136, label %50
    i32 147, label %50
    i32 146, label %50
    i32 145, label %50
    i32 135, label %50
    i32 134, label %50
    i32 132, label %50
    i32 131, label %50
    i32 158, label %50
    i32 148, label %50
    i32 129, label %50
    i32 128, label %50
    i32 156, label %50
    i32 157, label %50
    i32 155, label %50
    i32 153, label %50
    i32 159, label %50
    i32 149, label %50
  ]

23:                                               ; preds = %1
  %24 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @max77843_muic_dock_handler(%struct.max77843_muic_info* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %75

31:                                               ; preds = %23
  br label %74

32:                                               ; preds = %1
  %33 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %34 = call i32 @max77843_muic_adc_gnd_handler(%struct.max77843_muic_info* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %75

39:                                               ; preds = %32
  br label %74

40:                                               ; preds = %1, %1, %1
  %41 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @max77843_muic_jig_handler(%struct.max77843_muic_info* %41, i32 %42, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %75

49:                                               ; preds = %40
  br label %74

50:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %51 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %52 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %57, i32 %58)
  %60 = load i32, i32* @EAGAIN, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %75

62:                                               ; preds = %1
  %63 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %64 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %69, i32 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %75

74:                                               ; preds = %49, %39, %31
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %62, %50, %47, %37, %29
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @max77843_muic_get_cable_type(%struct.max77843_muic_info*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @max77843_muic_dock_handler(%struct.max77843_muic_info*, i32) #1

declare dso_local i32 @max77843_muic_adc_gnd_handler(%struct.max77843_muic_info*) #1

declare dso_local i32 @max77843_muic_jig_handler(%struct.max77843_muic_info*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
