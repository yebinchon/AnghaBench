; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_twl6040-vibra.c_twl6040_vibra_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_twl6040-vibra.c_twl6040_vibra_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vibra_info = type { i32, %struct.twl6040*, i32, i32 }
%struct.twl6040 = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to enable regulators %d\0A\00", align 1
@TWL6040_REV_ES1_1 = common dso_local global i64 0, align 8
@TWL6040_REG_VIBCTLL = common dso_local global i32 0, align 4
@TWL6040_VIBENA = common dso_local global i32 0, align 4
@TWL6040_VIBCTRL = common dso_local global i32 0, align 4
@TWL6040_REG_VIBCTLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vibra_info*)* @twl6040_vibra_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl6040_vibra_enable(%struct.vibra_info* %0) #0 {
  %2 = alloca %struct.vibra_info*, align 8
  %3 = alloca %struct.twl6040*, align 8
  %4 = alloca i32, align 4
  store %struct.vibra_info* %0, %struct.vibra_info** %2, align 8
  %5 = load %struct.vibra_info*, %struct.vibra_info** %2, align 8
  %6 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %5, i32 0, i32 1
  %7 = load %struct.twl6040*, %struct.twl6040** %6, align 8
  store %struct.twl6040* %7, %struct.twl6040** %3, align 8
  %8 = load %struct.vibra_info*, %struct.vibra_info** %2, align 8
  %9 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ARRAY_SIZE(i32 %10)
  %12 = load %struct.vibra_info*, %struct.vibra_info** %2, align 8
  %13 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @regulator_bulk_enable(i32 %11, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.vibra_info*, %struct.vibra_info** %2, align 8
  %20 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %58

24:                                               ; preds = %1
  %25 = load %struct.vibra_info*, %struct.vibra_info** %2, align 8
  %26 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %25, i32 0, i32 1
  %27 = load %struct.twl6040*, %struct.twl6040** %26, align 8
  %28 = call i32 @twl6040_power(%struct.twl6040* %27, i32 1)
  %29 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %30 = call i64 @twl6040_get_revid(%struct.twl6040* %29)
  %31 = load i64, i64* @TWL6040_REV_ES1_1, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %24
  %34 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %35 = load i32, i32* @TWL6040_REG_VIBCTLL, align 4
  %36 = load i32, i32* @TWL6040_VIBENA, align 4
  %37 = load i32, i32* @TWL6040_VIBCTRL, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @twl6040_reg_write(%struct.twl6040* %34, i32 %35, i32 %38)
  %40 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %41 = load i32, i32* @TWL6040_REG_VIBCTLR, align 4
  %42 = load i32, i32* @TWL6040_VIBENA, align 4
  %43 = load i32, i32* @TWL6040_VIBCTRL, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @twl6040_reg_write(%struct.twl6040* %40, i32 %41, i32 %44)
  %46 = call i32 @usleep_range(i32 3000, i32 3500)
  br label %47

47:                                               ; preds = %33, %24
  %48 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %49 = load i32, i32* @TWL6040_REG_VIBCTLL, align 4
  %50 = load i32, i32* @TWL6040_VIBENA, align 4
  %51 = call i32 @twl6040_reg_write(%struct.twl6040* %48, i32 %49, i32 %50)
  %52 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %53 = load i32, i32* @TWL6040_REG_VIBCTLR, align 4
  %54 = load i32, i32* @TWL6040_VIBENA, align 4
  %55 = call i32 @twl6040_reg_write(%struct.twl6040* %52, i32 %53, i32 %54)
  %56 = load %struct.vibra_info*, %struct.vibra_info** %2, align 8
  %57 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %47, %18
  ret void
}

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @twl6040_power(%struct.twl6040*, i32) #1

declare dso_local i64 @twl6040_get_revid(%struct.twl6040*) #1

declare dso_local i32 @twl6040_reg_write(%struct.twl6040*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
