; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-catu.c_catu_disable_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-catu.c_catu_disable_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.catu_drvdata = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Timeout while waiting for READY\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.catu_drvdata*)* @catu_disable_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @catu_disable_hw(%struct.catu_drvdata* %0) #0 {
  %2 = alloca %struct.catu_drvdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  store %struct.catu_drvdata* %0, %struct.catu_drvdata** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.catu_drvdata*, %struct.catu_drvdata** %2, align 8
  %6 = getelementptr inbounds %struct.catu_drvdata, %struct.catu_drvdata* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.catu_drvdata*, %struct.catu_drvdata** %2, align 8
  %10 = call i32 @catu_write_control(%struct.catu_drvdata* %9, i32 0)
  %11 = load %struct.catu_drvdata*, %struct.catu_drvdata** %2, align 8
  %12 = getelementptr inbounds %struct.catu_drvdata, %struct.catu_drvdata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @coresight_disclaim_device_unlocked(i32 %13)
  %15 = load %struct.catu_drvdata*, %struct.catu_drvdata** %2, align 8
  %16 = call i64 @catu_wait_for_ready(%struct.catu_drvdata* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 @dev_info(%struct.device* %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EAGAIN, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @dev_dbg(%struct.device* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @catu_write_control(%struct.catu_drvdata*, i32) #1

declare dso_local i32 @coresight_disclaim_device_unlocked(i32) #1

declare dso_local i64 @catu_wait_for_ready(%struct.catu_drvdata*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
