; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max14577.c_max14577_muic_set_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max14577.c_max14577_muic_set_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max14577_muic_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAX14577_MUIC_REG_CONTROL1 = common dso_local global i32 0, align 4
@CLEAR_IDBEN_MICEN_MASK = common dso_local global i32 0, align 4
@CTRL1_SW_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to update MUIC register\0A\00", align 1
@CTRL2_CPEN_MASK = common dso_local global i32 0, align 4
@CTRL2_LOWPWR_MASK = common dso_local global i32 0, align 4
@MAX14577_REG_CONTROL2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"CONTROL1 : 0x%02x, CONTROL2 : 0x%02x, state : %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"attached\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"detached\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max14577_muic_info*, i32, i32)* @max14577_muic_set_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max14577_muic_set_path(%struct.max14577_muic_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.max14577_muic_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.max14577_muic_info* %0, %struct.max14577_muic_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %12 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MAX14577_MUIC_REG_CONTROL1, align 4
  %17 = load i32, i32* @CLEAR_IDBEN_MICEN_MASK, align 4
  %18 = load i32, i32* @CTRL1_SW_OPEN, align 4
  %19 = call i32 @max14577_update_reg(i32 %15, i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %24 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %4, align 4
  br label %95

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %8, align 4
  br label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @CTRL1_SW_OPEN, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %37 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MAX14577_MUIC_REG_CONTROL1, align 4
  %42 = load i32, i32* @CLEAR_IDBEN_MICEN_MASK, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @max14577_update_reg(i32 %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %35
  %48 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %49 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %95

53:                                               ; preds = %35
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* @CTRL2_CPEN_MASK, align 4
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %64

60:                                               ; preds = %53
  %61 = load i32, i32* @CTRL2_LOWPWR_MASK, align 4
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %60, %56
  %65 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %66 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MAX14577_REG_CONTROL2, align 4
  %71 = load i32, i32* @CTRL2_LOWPWR_MASK, align 4
  %72 = load i32, i32* @CTRL2_CPEN_MASK, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @max14577_update_reg(i32 %69, i32 %70, i32 %73, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %64
  %79 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %80 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %95

84:                                               ; preds = %64
  %85 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %86 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %94 = call i32 @dev_dbg(i32 %87, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %89, i8* %93)
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %84, %78, %47, %22
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @max14577_update_reg(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
