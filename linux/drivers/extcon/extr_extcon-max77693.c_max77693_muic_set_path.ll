; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77693.c_max77693_muic_set_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77693.c_max77693_muic_set_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_muic_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAX77693_CONTROL1_SW_OPEN = common dso_local global i32 0, align 4
@MAX77693_MUIC_REG_CTRL1 = common dso_local global i32 0, align 4
@COMP_SW_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to update MUIC register\0A\00", align 1
@MAX77693_CONTROL2_CPEN_MASK = common dso_local global i32 0, align 4
@MAX77693_CONTROL2_LOWPWR_MASK = common dso_local global i32 0, align 4
@MAX77693_MUIC_REG_CTRL2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"CONTROL1 : 0x%02x, CONTROL2 : 0x%02x, state : %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"attached\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"detached\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77693_muic_info*, i32, i32)* @max77693_muic_set_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_muic_set_path(%struct.max77693_muic_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.max77693_muic_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.max77693_muic_info* %0, %struct.max77693_muic_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %9, align 4
  br label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @MAX77693_CONTROL1_SW_OPEN, align 4
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %5, align 8
  %19 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MAX77693_MUIC_REG_CTRL1, align 4
  %24 = load i32, i32* @COMP_SW_MASK, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @regmap_update_bits(i32 %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %5, align 8
  %31 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %77

35:                                               ; preds = %17
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* @MAX77693_CONTROL2_CPEN_MASK, align 4
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %10, align 4
  br label %46

42:                                               ; preds = %35
  %43 = load i32, i32* @MAX77693_CONTROL2_LOWPWR_MASK, align 4
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %42, %38
  %47 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %5, align 8
  %48 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MAX77693_MUIC_REG_CTRL2, align 4
  %53 = load i32, i32* @MAX77693_CONTROL2_LOWPWR_MASK, align 4
  %54 = load i32, i32* @MAX77693_CONTROL2_CPEN_MASK, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @regmap_update_bits(i32 %51, i32 %52, i32 %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %46
  %61 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %5, align 8
  %62 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %77

66:                                               ; preds = %46
  %67 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %5, align 8
  %68 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %76 = call i32 @dev_info(i32 %69, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %71, i8* %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %66, %60, %29
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
