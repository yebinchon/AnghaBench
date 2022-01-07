; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-replicator.c_replicator_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-replicator.c_replicator_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.replicator_drvdata = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"REPLICATOR enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coresight_device*, i32, i32)* @replicator_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replicator_enable(%struct.coresight_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.coresight_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.replicator_drvdata*, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %10 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.replicator_drvdata* @dev_get_drvdata(i32 %12)
  store %struct.replicator_drvdata* %13, %struct.replicator_drvdata** %8, align 8
  %14 = load %struct.replicator_drvdata*, %struct.replicator_drvdata** %8, align 8
  %15 = getelementptr inbounds %struct.replicator_drvdata, %struct.replicator_drvdata* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.replicator_drvdata*, %struct.replicator_drvdata** %8, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @dynamic_replicator_enable(%struct.replicator_drvdata* %19, i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %18, %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %28 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %27, i32 0, i32 0
  %29 = call i32 @dev_dbg(%struct.TYPE_2__* %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local %struct.replicator_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32 @dynamic_replicator_enable(%struct.replicator_drvdata*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
