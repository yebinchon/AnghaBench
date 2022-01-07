; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max14577.c_max14577_muic_adc_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max14577.c_max14577_muic_adc_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max14577_muic_info = type { i32, i32 }

@MAX14577_CABLE_GROUP_ADC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"external connector is %s (adc:0x%02x, prev_adc:0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"attached\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"detached\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"accessory is %s but it isn't used (adc:0x%x)\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"failed to detect %s accessory (adc:0x%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max14577_muic_info*)* @max14577_muic_adc_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max14577_muic_adc_handler(%struct.max14577_muic_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max14577_muic_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.max14577_muic_info* %0, %struct.max14577_muic_info** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %8 = load i32, i32* @MAX14577_CABLE_GROUP_ADC, align 4
  %9 = call i32 @max14577_muic_get_cable_type(%struct.max14577_muic_info* %7, i32 %8, i32* %5)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %11 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %19 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %17, i32 %20)
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %45 [
    i32 151, label %23
    i32 150, label %23
    i32 153, label %23
    i32 149, label %33
    i32 130, label %33
    i32 144, label %33
    i32 143, label %33
    i32 142, label %33
    i32 141, label %33
    i32 140, label %33
    i32 139, label %33
    i32 138, label %33
    i32 137, label %33
    i32 136, label %33
    i32 147, label %33
    i32 146, label %33
    i32 145, label %33
    i32 135, label %33
    i32 134, label %33
    i32 133, label %33
    i32 132, label %33
    i32 131, label %33
    i32 157, label %33
    i32 148, label %33
    i32 129, label %33
    i32 128, label %33
    i32 155, label %33
    i32 156, label %33
    i32 154, label %33
    i32 152, label %33
    i32 158, label %33
  ]

23:                                               ; preds = %1, %1, %1
  %24 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @max14577_muic_jig_handler(%struct.max14577_muic_info* %24, i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %58

32:                                               ; preds = %23
  br label %57

33:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %34 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %35 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @dev_info(i32 %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %40, i32 %41)
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %58

45:                                               ; preds = %1
  %46 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %3, align 8
  %47 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %52, i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %58

57:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %45, %33, %30
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @max14577_muic_get_cable_type(%struct.max14577_muic_info*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @max14577_muic_jig_handler(%struct.max14577_muic_info*, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
