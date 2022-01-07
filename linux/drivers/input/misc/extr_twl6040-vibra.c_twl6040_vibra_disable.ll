; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_twl6040-vibra.c_twl6040_vibra_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_twl6040-vibra.c_twl6040_vibra_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vibra_info = type { i32, i32, %struct.twl6040* }
%struct.twl6040 = type { i32 }

@TWL6040_REG_VIBCTLL = common dso_local global i32 0, align 4
@TWL6040_REG_VIBCTLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vibra_info*)* @twl6040_vibra_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl6040_vibra_disable(%struct.vibra_info* %0) #0 {
  %2 = alloca %struct.vibra_info*, align 8
  %3 = alloca %struct.twl6040*, align 8
  store %struct.vibra_info* %0, %struct.vibra_info** %2, align 8
  %4 = load %struct.vibra_info*, %struct.vibra_info** %2, align 8
  %5 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %4, i32 0, i32 2
  %6 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  store %struct.twl6040* %6, %struct.twl6040** %3, align 8
  %7 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %8 = load i32, i32* @TWL6040_REG_VIBCTLL, align 4
  %9 = call i32 @twl6040_reg_write(%struct.twl6040* %7, i32 %8, i32 0)
  %10 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %11 = load i32, i32* @TWL6040_REG_VIBCTLR, align 4
  %12 = call i32 @twl6040_reg_write(%struct.twl6040* %10, i32 %11, i32 0)
  %13 = load %struct.vibra_info*, %struct.vibra_info** %2, align 8
  %14 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %13, i32 0, i32 2
  %15 = load %struct.twl6040*, %struct.twl6040** %14, align 8
  %16 = call i32 @twl6040_power(%struct.twl6040* %15, i32 0)
  %17 = load %struct.vibra_info*, %struct.vibra_info** %2, align 8
  %18 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = load %struct.vibra_info*, %struct.vibra_info** %2, align 8
  %22 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @regulator_bulk_disable(i32 %20, i32 %23)
  %25 = load %struct.vibra_info*, %struct.vibra_info** %2, align 8
  %26 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  ret void
}

declare dso_local i32 @twl6040_reg_write(%struct.twl6040*, i32, i32) #1

declare dso_local i32 @twl6040_power(%struct.twl6040*, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
