; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5562.c_lp5562_stop_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5562.c_lp5562_stop_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp55xx_chip = type { i32 }

@LP5562_REG_OP_MODE = common dso_local global i32 0, align 4
@LP5562_CMD_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lp55xx_chip*)* @lp5562_stop_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lp5562_stop_engine(%struct.lp55xx_chip* %0) #0 {
  %2 = alloca %struct.lp55xx_chip*, align 8
  store %struct.lp55xx_chip* %0, %struct.lp55xx_chip** %2, align 8
  %3 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %2, align 8
  %4 = load i32, i32* @LP5562_REG_OP_MODE, align 4
  %5 = load i32, i32* @LP5562_CMD_DISABLE, align 4
  %6 = call i32 @lp55xx_write(%struct.lp55xx_chip* %3, i32 %4, i32 %5)
  %7 = call i32 (...) @lp5562_wait_opmode_done()
  ret void
}

declare dso_local i32 @lp55xx_write(%struct.lp55xx_chip*, i32, i32) #1

declare dso_local i32 @lp5562_wait_opmode_done(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
