; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-sm5502.c_sm5502_muic_set_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-sm5502.c_sm5502_muic_set_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm5502_muic_info = type { i32, i32 }

@SM5502_REG_MANUAL_SW1 = common dso_local global i32 0, align 4
@SM5502_REG_MANUAL_SW1_DP_MASK = common dso_local global i32 0, align 4
@SM5502_REG_MANUAL_SW1_DM_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cannot update DM_CON/DP_CON switch\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Unknown DM_CON/DP_CON switch type (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SM5502_REG_MANUAL_SW1_VBUSIN_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"cannot update VBUSIN switch\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Unknown VBUS switch type (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sm5502_muic_info*, i32, i32, i32)* @sm5502_muic_set_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm5502_muic_set_path(%struct.sm5502_muic_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sm5502_muic_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sm5502_muic_info* %0, %struct.sm5502_muic_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i32 134, i32* %7, align 4
  store i32 130, i32* %8, align 4
  br label %14

14:                                               ; preds = %13, %4
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %35 [
    i32 134, label %16
    i32 132, label %16
    i32 135, label %16
    i32 133, label %16
  ]

16:                                               ; preds = %14, %14, %14, %14
  %17 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %6, align 8
  %18 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SM5502_REG_MANUAL_SW1, align 4
  %21 = load i32, i32* @SM5502_REG_MANUAL_SW1_DP_MASK, align 4
  %22 = load i32, i32* @SM5502_REG_MANUAL_SW1_DM_MASK, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @regmap_update_bits(i32 %19, i32 %20, i32 %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %16
  %29 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %6, align 8
  %30 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, ...) @dev_err(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %71

34:                                               ; preds = %16
  br label %43

35:                                               ; preds = %14
  %36 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %6, align 8
  %37 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i32, i8*, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %71

43:                                               ; preds = %34
  %44 = load i32, i32* %8, align 4
  switch i32 %44, label %62 [
    i32 130, label %45
    i32 129, label %45
    i32 131, label %45
    i32 128, label %45
  ]

45:                                               ; preds = %43, %43, %43, %43
  %46 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %6, align 8
  %47 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SM5502_REG_MANUAL_SW1, align 4
  %50 = load i32, i32* @SM5502_REG_MANUAL_SW1_VBUSIN_MASK, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @regmap_update_bits(i32 %48, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %45
  %56 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %6, align 8
  %57 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, ...) @dev_err(i32 %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %5, align 4
  br label %71

61:                                               ; preds = %45
  br label %70

62:                                               ; preds = %43
  %63 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %6, align 8
  %64 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 (i32, i8*, ...) @dev_err(i32 %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %71

70:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %62, %55, %35, %28
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
