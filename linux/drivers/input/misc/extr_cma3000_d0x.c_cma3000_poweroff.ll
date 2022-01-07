; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_cma3000_d0x.c_cma3000_poweroff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_cma3000_d0x.c_cma3000_poweroff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma3000_accl_data = type { i32 }

@CMA3000_CTRL = common dso_local global i32 0, align 4
@CMAMODE_POFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Mode setting\00", align 1
@CMA3000_SETDELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cma3000_accl_data*)* @cma3000_poweroff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma3000_poweroff(%struct.cma3000_accl_data* %0) #0 {
  %2 = alloca %struct.cma3000_accl_data*, align 8
  %3 = alloca i32, align 4
  store %struct.cma3000_accl_data* %0, %struct.cma3000_accl_data** %2, align 8
  %4 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %2, align 8
  %5 = load i32, i32* @CMA3000_CTRL, align 4
  %6 = load i32, i32* @CMAMODE_POFF, align 4
  %7 = call i32 @CMA3000_SET(%struct.cma3000_accl_data* %4, i32 %5, i32 %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @CMA3000_SETDELAY, align 4
  %9 = call i32 @msleep(i32 %8)
  %10 = load i32, i32* %3, align 4
  ret i32 %10
}

declare dso_local i32 @CMA3000_SET(%struct.cma3000_accl_data*, i32, i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
