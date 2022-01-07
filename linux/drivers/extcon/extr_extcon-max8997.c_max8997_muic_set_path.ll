; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max8997.c_max8997_muic_set_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max8997.c_max8997_muic_set_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8997_muic_info = type { i32, i32 }

@CONTROL1_SW_OPEN = common dso_local global i32 0, align 4
@MAX8997_MUIC_REG_CONTROL1 = common dso_local global i32 0, align 4
@COMP_SW_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to update MUIC register\0A\00", align 1
@CONTROL2_CPEN_MASK = common dso_local global i32 0, align 4
@CONTROL2_LOWPWR_MASK = common dso_local global i32 0, align 4
@MAX8997_MUIC_REG_CONTROL2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"CONTROL1 : 0x%02x, CONTROL2 : 0x%02x, state : %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"attached\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"detached\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max8997_muic_info*, i32, i32)* @max8997_muic_set_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_muic_set_path(%struct.max8997_muic_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.max8997_muic_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.max8997_muic_info* %0, %struct.max8997_muic_info** %5, align 8
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
  %16 = load i32, i32* @CONTROL1_SW_OPEN, align 4
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %5, align 8
  %19 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MAX8997_MUIC_REG_CONTROL1, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @COMP_SW_MASK, align 4
  %24 = call i32 @max8997_update_reg(i32 %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %17
  %28 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %5, align 8
  %29 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %73

33:                                               ; preds = %17
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* @CONTROL2_CPEN_MASK, align 4
  %38 = load i32, i32* %10, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %10, align 4
  br label %44

40:                                               ; preds = %33
  %41 = load i32, i32* @CONTROL2_LOWPWR_MASK, align 4
  %42 = load i32, i32* %10, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %5, align 8
  %46 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MAX8997_MUIC_REG_CONTROL2, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @CONTROL2_LOWPWR_MASK, align 4
  %51 = load i32, i32* @CONTROL2_CPEN_MASK, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @max8997_update_reg(i32 %47, i32 %48, i32 %49, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %44
  %57 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %5, align 8
  %58 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  br label %73

62:                                               ; preds = %44
  %63 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %5, align 8
  %64 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %72 = call i32 @dev_info(i32 %65, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67, i8* %71)
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %62, %56, %27
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @max8997_update_reg(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
