; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ucb1400_ts.c_ucb1400_ts_pen_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ucb1400_ts.c_ucb1400_ts_pen_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucb1400_ts = type { i32 }

@UCB_TS_CR = common dso_local global i32 0, align 4
@UCB_TS_CR_TSPX_LOW = common dso_local global i16 0, align 2
@UCB_TS_CR_TSMX_LOW = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucb1400_ts*)* @ucb1400_ts_pen_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1400_ts_pen_up(%struct.ucb1400_ts* %0) #0 {
  %2 = alloca %struct.ucb1400_ts*, align 8
  %3 = alloca i16, align 2
  store %struct.ucb1400_ts* %0, %struct.ucb1400_ts** %2, align 8
  %4 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %2, align 8
  %5 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @UCB_TS_CR, align 4
  %8 = call zeroext i16 @ucb1400_reg_read(i32 %6, i32 %7)
  store i16 %8, i16* %3, align 2
  %9 = load i16, i16* %3, align 2
  %10 = zext i16 %9 to i32
  %11 = load i16, i16* @UCB_TS_CR_TSPX_LOW, align 2
  %12 = zext i16 %11 to i32
  %13 = load i16, i16* @UCB_TS_CR_TSMX_LOW, align 2
  %14 = zext i16 %13 to i32
  %15 = or i32 %12, %14
  %16 = and i32 %10, %15
  ret i32 %16
}

declare dso_local zeroext i16 @ucb1400_reg_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
