; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_pgm_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_pgm_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hideep_ts = type { i32 }

@HIDEEP_SYSCON_WDT_CON = common dso_local global i32 0, align 4
@HIDEEP_SYSCON_SPC_CON = common dso_local global i32 0, align 4
@HIDEEP_SYSCON_CLK_ENA = common dso_local global i32 0, align 4
@HIDEEP_SYSCON_CLK_CON = common dso_local global i32 0, align 4
@HIDEEP_SYSCON_PWR_CON = common dso_local global i32 0, align 4
@HIDEEP_FLASH_TIM = common dso_local global i32 0, align 4
@HIDEEP_FLASH_CACHE_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hideep_ts*)* @hideep_pgm_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hideep_pgm_set(%struct.hideep_ts* %0) #0 {
  %2 = alloca %struct.hideep_ts*, align 8
  store %struct.hideep_ts* %0, %struct.hideep_ts** %2, align 8
  %3 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %4 = load i32, i32* @HIDEEP_SYSCON_WDT_CON, align 4
  %5 = call i32 @hideep_pgm_w_reg(%struct.hideep_ts* %3, i32 %4, i32 0)
  %6 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %7 = load i32, i32* @HIDEEP_SYSCON_SPC_CON, align 4
  %8 = call i32 @hideep_pgm_w_reg(%struct.hideep_ts* %6, i32 %7, i32 0)
  %9 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %10 = load i32, i32* @HIDEEP_SYSCON_CLK_ENA, align 4
  %11 = call i32 @hideep_pgm_w_reg(%struct.hideep_ts* %9, i32 %10, i32 255)
  %12 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %13 = load i32, i32* @HIDEEP_SYSCON_CLK_CON, align 4
  %14 = call i32 @hideep_pgm_w_reg(%struct.hideep_ts* %12, i32 %13, i32 1)
  %15 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %16 = load i32, i32* @HIDEEP_SYSCON_PWR_CON, align 4
  %17 = call i32 @hideep_pgm_w_reg(%struct.hideep_ts* %15, i32 %16, i32 1)
  %18 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %19 = load i32, i32* @HIDEEP_FLASH_TIM, align 4
  %20 = call i32 @hideep_pgm_w_reg(%struct.hideep_ts* %18, i32 %19, i32 3)
  %21 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %22 = load i32, i32* @HIDEEP_FLASH_CACHE_CFG, align 4
  %23 = call i32 @hideep_pgm_w_reg(%struct.hideep_ts* %21, i32 %22, i32 0)
  ret void
}

declare dso_local i32 @hideep_pgm_w_reg(%struct.hideep_ts*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
