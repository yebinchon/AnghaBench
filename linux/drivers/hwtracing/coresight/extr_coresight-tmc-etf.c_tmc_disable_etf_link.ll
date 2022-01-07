; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etf.c_tmc_disable_etf_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etf.c_tmc_disable_etf_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tmc_drvdata = type { i32, i32, i64 }

@CS_MODE_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"TMC-ETF disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coresight_device*, i32, i32)* @tmc_disable_etf_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmc_disable_etf_link(%struct.coresight_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.coresight_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.tmc_drvdata*, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %10 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.tmc_drvdata* @dev_get_drvdata(i32 %12)
  store %struct.tmc_drvdata* %13, %struct.tmc_drvdata** %8, align 8
  %14 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %15 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %14, i32 0, i32 0
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %19 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %24 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %23, i32 0, i32 0
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  br label %40

27:                                               ; preds = %3
  %28 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %29 = call i32 @tmc_etf_disable_hw(%struct.tmc_drvdata* %28)
  %30 = load i32, i32* @CS_MODE_DISABLED, align 4
  %31 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %32 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %34 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %33, i32 0, i32 0
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %38 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %37, i32 0, i32 0
  %39 = call i32 @dev_dbg(%struct.TYPE_2__* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %27, %22
  ret void
}

declare dso_local %struct.tmc_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tmc_etf_disable_hw(%struct.tmc_drvdata*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
