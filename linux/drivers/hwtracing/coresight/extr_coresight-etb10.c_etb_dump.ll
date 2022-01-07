; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etb10.c_etb_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etb10.c_etb_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etb_drvdata = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@CS_MODE_SYSFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"ETB dumped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etb_drvdata*)* @etb_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etb_dump(%struct.etb_drvdata* %0) #0 {
  %2 = alloca %struct.etb_drvdata*, align 8
  %3 = alloca i64, align 8
  store %struct.etb_drvdata* %0, %struct.etb_drvdata** %2, align 8
  %4 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %5 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %4, i32 0, i32 2
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %9 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CS_MODE_SYSFS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %15 = call i32 @__etb_disable_hw(%struct.etb_drvdata* %14)
  %16 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %17 = call i32 @etb_dump_hw(%struct.etb_drvdata* %16)
  %18 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %19 = call i32 @__etb_enable_hw(%struct.etb_drvdata* %18)
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %22 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %21, i32 0, i32 2
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %26 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @dev_dbg(i32* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__etb_disable_hw(%struct.etb_drvdata*) #1

declare dso_local i32 @etb_dump_hw(%struct.etb_drvdata*) #1

declare dso_local i32 @__etb_enable_hw(%struct.etb_drvdata*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
