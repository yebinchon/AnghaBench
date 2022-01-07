; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etf.c_tmc_etf_disable_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etf.c_tmc_etf_disable_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmc_drvdata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmc_drvdata*)* @tmc_etf_disable_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmc_etf_disable_hw(%struct.tmc_drvdata* %0) #0 {
  %2 = alloca %struct.tmc_drvdata*, align 8
  store %struct.tmc_drvdata* %0, %struct.tmc_drvdata** %2, align 8
  %3 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %4 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @CS_UNLOCK(i32 %5)
  %7 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %8 = call i32 @tmc_flush_and_stop(%struct.tmc_drvdata* %7)
  %9 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %10 = call i32 @tmc_disable_hw(%struct.tmc_drvdata* %9)
  %11 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %12 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @coresight_disclaim_device_unlocked(i32 %13)
  %15 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %16 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CS_LOCK(i32 %17)
  ret void
}

declare dso_local i32 @CS_UNLOCK(i32) #1

declare dso_local i32 @tmc_flush_and_stop(%struct.tmc_drvdata*) #1

declare dso_local i32 @tmc_disable_hw(%struct.tmc_drvdata*) #1

declare dso_local i32 @coresight_disclaim_device_unlocked(i32) #1

declare dso_local i32 @CS_LOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
