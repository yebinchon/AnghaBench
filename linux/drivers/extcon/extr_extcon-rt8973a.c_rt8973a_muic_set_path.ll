; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-rt8973a.c_rt8973a_muic_set_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-rt8973a.c_rt8973a_muic_set_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt8973a_muic_info = type { i32, i32, i64 }

@RT8973A_REG_MANUAL_SW1 = common dso_local global i32 0, align 4
@RT8973A_REG_MANUAL_SW1_DP_MASK = common dso_local global i32 0, align 4
@RT8973A_REG_MANUAL_SW1_DM_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cannot update DM_CON/DP_CON switch\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Unknown DM_CON/DP_CON switch type (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt8973a_muic_info*, i32, i32)* @rt8973a_muic_set_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt8973a_muic_set_path(%struct.rt8973a_muic_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt8973a_muic_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rt8973a_muic_info* %0, %struct.rt8973a_muic_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %5, align 8
  %10 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %48

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32 129, i32* %6, align 4
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %39 [
    i32 130, label %20
    i32 128, label %20
    i32 129, label %20
  ]

20:                                               ; preds = %18, %18, %18
  %21 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %5, align 8
  %22 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RT8973A_REG_MANUAL_SW1, align 4
  %25 = load i32, i32* @RT8973A_REG_MANUAL_SW1_DP_MASK, align 4
  %26 = load i32, i32* @RT8973A_REG_MANUAL_SW1_DM_MASK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %20
  %33 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %5, align 8
  %34 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32, i8*, ...) @dev_err(i32 %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %48

38:                                               ; preds = %20
  br label %47

39:                                               ; preds = %18
  %40 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %5, align 8
  %41 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 (i32, i8*, ...) @dev_err(i32 %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %48

47:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %39, %32, %13
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
