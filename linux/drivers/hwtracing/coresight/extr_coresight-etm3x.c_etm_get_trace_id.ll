; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x.c_etm_get_trace_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x.c_etm_get_trace_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etm_drvdata = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }

@ETMTRACEIDR = common dso_local global i32 0, align 4
@ETM_TRACEID_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @etm_get_trace_id(%struct.etm_drvdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.etm_drvdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  store %struct.etm_drvdata* %0, %struct.etm_drvdata** %3, align 8
  store i32 -1, i32* %5, align 4
  %7 = load %struct.etm_drvdata*, %struct.etm_drvdata** %3, align 8
  %8 = icmp ne %struct.etm_drvdata* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %51

10:                                               ; preds = %1
  %11 = load %struct.etm_drvdata*, %struct.etm_drvdata** %3, align 8
  %12 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %11, i32 0, i32 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load %struct.etm_drvdata*, %struct.etm_drvdata** %3, align 8
  %18 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %17, i32 0, i32 3
  %19 = call i32 @local_read(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %10
  %22 = load %struct.etm_drvdata*, %struct.etm_drvdata** %3, align 8
  %23 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %2, align 4
  br label %53

25:                                               ; preds = %10
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = call i32 @pm_runtime_get_sync(%struct.device* %26)
  %28 = load %struct.etm_drvdata*, %struct.etm_drvdata** %3, align 8
  %29 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %28, i32 0, i32 1
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.etm_drvdata*, %struct.etm_drvdata** %3, align 8
  %33 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @CS_UNLOCK(i32 %34)
  %36 = load %struct.etm_drvdata*, %struct.etm_drvdata** %3, align 8
  %37 = load i32, i32* @ETMTRACEIDR, align 4
  %38 = call i32 @etm_readl(%struct.etm_drvdata* %36, i32 %37)
  %39 = load i32, i32* @ETM_TRACEID_MASK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %5, align 4
  %41 = load %struct.etm_drvdata*, %struct.etm_drvdata** %3, align 8
  %42 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @CS_LOCK(i32 %43)
  %45 = load %struct.etm_drvdata*, %struct.etm_drvdata** %3, align 8
  %46 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %45, i32 0, i32 1
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = call i32 @pm_runtime_put(%struct.device* %49)
  br label %51

51:                                               ; preds = %25, %9
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %21
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @local_read(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @CS_UNLOCK(i32) #1

declare dso_local i32 @etm_readl(%struct.etm_drvdata*, i32) #1

declare dso_local i32 @CS_LOCK(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
