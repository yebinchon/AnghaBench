; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-stm.c_stm_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-stm.c_stm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.perf_event = type { i32 }
%struct.stm_drvdata = type { i32, i32, i32 }

@CS_MODE_SYSFS = common dso_local global i64 0, align 8
@STMTCSR = common dso_local global i32 0, align 4
@STMTCSR_BUSY_BIT = common dso_local global i32 0, align 4
@CS_MODE_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"STM tracing disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coresight_device*, %struct.perf_event*)* @stm_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm_disable(%struct.coresight_device* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.coresight_device*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.stm_drvdata*, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %6 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %7 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.stm_drvdata* @dev_get_drvdata(i32 %9)
  store %struct.stm_drvdata* %10, %struct.stm_drvdata** %5, align 8
  %11 = load %struct.stm_drvdata*, %struct.stm_drvdata** %5, align 8
  %12 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %11, i32 0, i32 0
  %13 = call i64 @local_read(i32* %12)
  %14 = load i64, i64* @CS_MODE_SYSFS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %2
  %17 = load %struct.stm_drvdata*, %struct.stm_drvdata** %5, align 8
  %18 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %17, i32 0, i32 2
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.stm_drvdata*, %struct.stm_drvdata** %5, align 8
  %21 = call i32 @stm_disable_hw(%struct.stm_drvdata* %20)
  %22 = load %struct.stm_drvdata*, %struct.stm_drvdata** %5, align 8
  %23 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %22, i32 0, i32 2
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load %struct.stm_drvdata*, %struct.stm_drvdata** %5, align 8
  %26 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @STMTCSR, align 4
  %29 = load i32, i32* @STMTCSR_BUSY_BIT, align 4
  %30 = call i32 @coresight_timeout(i32 %27, i32 %28, i32 %29, i32 0)
  %31 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %32 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pm_runtime_put(i32 %34)
  %36 = load %struct.stm_drvdata*, %struct.stm_drvdata** %5, align 8
  %37 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %36, i32 0, i32 0
  %38 = load i32, i32* @CS_MODE_DISABLED, align 4
  %39 = call i32 @local_set(i32* %37, i32 %38)
  %40 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %41 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %40, i32 0, i32 0
  %42 = call i32 @dev_dbg(%struct.TYPE_2__* %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %16, %2
  ret void
}

declare dso_local %struct.stm_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i64 @local_read(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @stm_disable_hw(%struct.stm_drvdata*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @coresight_timeout(i32, i32, i32, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @local_set(i32*, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
