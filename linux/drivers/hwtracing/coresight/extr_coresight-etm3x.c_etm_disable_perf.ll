; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x.c_etm_disable_perf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x.c_etm_disable_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.etm_drvdata = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coresight_device*)* @etm_disable_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etm_disable_perf(%struct.coresight_device* %0) #0 {
  %2 = alloca %struct.coresight_device*, align 8
  %3 = alloca %struct.etm_drvdata*, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %2, align 8
  %4 = load %struct.coresight_device*, %struct.coresight_device** %2, align 8
  %5 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.etm_drvdata* @dev_get_drvdata(i32 %7)
  store %struct.etm_drvdata* %8, %struct.etm_drvdata** %3, align 8
  %9 = load %struct.etm_drvdata*, %struct.etm_drvdata** %3, align 8
  %10 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i64 (...) @smp_processor_id()
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON_ONCE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %35

18:                                               ; preds = %1
  %19 = load %struct.etm_drvdata*, %struct.etm_drvdata** %3, align 8
  %20 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @CS_UNLOCK(i32 %21)
  %23 = load %struct.etm_drvdata*, %struct.etm_drvdata** %3, align 8
  %24 = call i32 @etm_set_prog(%struct.etm_drvdata* %23)
  %25 = load %struct.etm_drvdata*, %struct.etm_drvdata** %3, align 8
  %26 = call i32 @etm_set_pwrdwn(%struct.etm_drvdata* %25)
  %27 = load %struct.etm_drvdata*, %struct.etm_drvdata** %3, align 8
  %28 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @coresight_disclaim_device_unlocked(i32 %29)
  %31 = load %struct.etm_drvdata*, %struct.etm_drvdata** %3, align 8
  %32 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @CS_LOCK(i32 %33)
  br label %35

35:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.etm_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @CS_UNLOCK(i32) #1

declare dso_local i32 @etm_set_prog(%struct.etm_drvdata*) #1

declare dso_local i32 @etm_set_pwrdwn(%struct.etm_drvdata*) #1

declare dso_local i32 @coresight_disclaim_device_unlocked(i32) #1

declare dso_local i32 @CS_LOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
