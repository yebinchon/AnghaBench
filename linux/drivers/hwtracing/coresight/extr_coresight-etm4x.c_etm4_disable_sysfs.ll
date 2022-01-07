; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_disable_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_disable_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.etmv4_drvdata = type { i32, i32 }

@etm4_disable_hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ETM tracing disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coresight_device*)* @etm4_disable_sysfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etm4_disable_sysfs(%struct.coresight_device* %0) #0 {
  %2 = alloca %struct.coresight_device*, align 8
  %3 = alloca %struct.etmv4_drvdata*, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %2, align 8
  %4 = load %struct.coresight_device*, %struct.coresight_device** %2, align 8
  %5 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.etmv4_drvdata* @dev_get_drvdata(i32 %7)
  store %struct.etmv4_drvdata* %8, %struct.etmv4_drvdata** %3, align 8
  %9 = call i32 (...) @cpus_read_lock()
  %10 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %3, align 8
  %11 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %3, align 8
  %14 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @etm4_disable_hw, align 4
  %17 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %3, align 8
  %18 = call i32 @smp_call_function_single(i32 %15, i32 %16, %struct.etmv4_drvdata* %17, i32 1)
  %19 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %3, align 8
  %20 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = call i32 (...) @cpus_read_unlock()
  %23 = load %struct.coresight_device*, %struct.coresight_device** %2, align 8
  %24 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %23, i32 0, i32 0
  %25 = call i32 @dev_dbg(%struct.TYPE_2__* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.etmv4_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32 @cpus_read_lock(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @smp_call_function_single(i32, i32, %struct.etmv4_drvdata*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cpus_read_unlock(...) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
