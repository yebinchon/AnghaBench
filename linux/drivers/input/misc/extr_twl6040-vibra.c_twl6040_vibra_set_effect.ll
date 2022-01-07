; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_twl6040-vibra.c_twl6040_vibra_set_effect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_twl6040-vibra.c_twl6040_vibra_set_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vibra_info = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, %struct.twl6040* }
%struct.TYPE_2__ = type { i32 }
%struct.twl6040 = type { i32 }

@TWL6040_REG_VIBDATL = common dso_local global i32 0, align 4
@TWL6040_REG_VIBDATR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vibra_info*)* @twl6040_vibra_set_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl6040_vibra_set_effect(%struct.vibra_info* %0) #0 {
  %2 = alloca %struct.vibra_info*, align 8
  %3 = alloca %struct.twl6040*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vibra_info* %0, %struct.vibra_info** %2, align 8
  %7 = load %struct.vibra_info*, %struct.vibra_info** %2, align 8
  %8 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %7, i32 0, i32 8
  %9 = load %struct.twl6040*, %struct.twl6040** %8, align 8
  store %struct.twl6040* %9, %struct.twl6040** %3, align 8
  %10 = load %struct.vibra_info*, %struct.vibra_info** %2, align 8
  %11 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @regulator_get_voltage(i32 %15)
  %17 = sdiv i32 %16, 1000
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.vibra_info*, %struct.vibra_info** %2, align 8
  %20 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.vibra_info*, %struct.vibra_info** %2, align 8
  %23 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.vibra_info*, %struct.vibra_info** %2, align 8
  %26 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.vibra_info*, %struct.vibra_info** %2, align 8
  %29 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @twl6040_vibra_code(i32 %18, i32 %21, i32 %24, i32 %27, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load %struct.vibra_info*, %struct.vibra_info** %2, align 8
  %33 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %32, i32 0, i32 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @regulator_get_voltage(i32 %37)
  %39 = sdiv i32 %38, 1000
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.vibra_info*, %struct.vibra_info** %2, align 8
  %42 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vibra_info*, %struct.vibra_info** %2, align 8
  %45 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.vibra_info*, %struct.vibra_info** %2, align 8
  %48 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.vibra_info*, %struct.vibra_info** %2, align 8
  %51 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @twl6040_vibra_code(i32 %40, i32 %43, i32 %46, i32 %49, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %55 = load i32, i32* @TWL6040_REG_VIBDATL, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @twl6040_reg_write(%struct.twl6040* %54, i32 %55, i32 %56)
  %58 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %59 = load i32, i32* @TWL6040_REG_VIBDATR, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @twl6040_reg_write(%struct.twl6040* %58, i32 %59, i32 %60)
  ret void
}

declare dso_local i32 @regulator_get_voltage(i32) #1

declare dso_local i32 @twl6040_vibra_code(i32, i32, i32, i32, i32) #1

declare dso_local i32 @twl6040_reg_write(%struct.twl6040*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
