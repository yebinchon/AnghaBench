; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-replicator.c_dynamic_replicator_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-replicator.c_dynamic_replicator_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.replicator_drvdata = type { i64 }

@REPLICATOR_IDFILTER0 = common dso_local global i64 0, align 8
@REPLICATOR_IDFILTER1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.replicator_drvdata*, i32, i32)* @dynamic_replicator_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dynamic_replicator_disable(%struct.replicator_drvdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.replicator_drvdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.replicator_drvdata* %0, %struct.replicator_drvdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %13 [
    i32 0, label %9
    i32 1, label %11
  ]

9:                                                ; preds = %3
  %10 = load i64, i64* @REPLICATOR_IDFILTER0, align 8
  store i64 %10, i64* %7, align 8
  br label %15

11:                                               ; preds = %3
  %12 = load i64, i64* @REPLICATOR_IDFILTER1, align 8
  store i64 %12, i64* %7, align 8
  br label %15

13:                                               ; preds = %3
  %14 = call i32 @WARN_ON(i32 1)
  br label %51

15:                                               ; preds = %11, %9
  %16 = load %struct.replicator_drvdata*, %struct.replicator_drvdata** %4, align 8
  %17 = getelementptr inbounds %struct.replicator_drvdata, %struct.replicator_drvdata* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @CS_UNLOCK(i64 %18)
  %20 = load %struct.replicator_drvdata*, %struct.replicator_drvdata** %4, align 8
  %21 = getelementptr inbounds %struct.replicator_drvdata, %struct.replicator_drvdata* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel_relaxed(i32 255, i64 %24)
  %26 = load %struct.replicator_drvdata*, %struct.replicator_drvdata** %4, align 8
  %27 = getelementptr inbounds %struct.replicator_drvdata, %struct.replicator_drvdata* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @REPLICATOR_IDFILTER0, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl_relaxed(i64 %30)
  %32 = icmp eq i32 %31, 255
  br i1 %32, label %33, label %46

33:                                               ; preds = %15
  %34 = load %struct.replicator_drvdata*, %struct.replicator_drvdata** %4, align 8
  %35 = getelementptr inbounds %struct.replicator_drvdata, %struct.replicator_drvdata* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @REPLICATOR_IDFILTER1, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readl_relaxed(i64 %38)
  %40 = icmp eq i32 %39, 255
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.replicator_drvdata*, %struct.replicator_drvdata** %4, align 8
  %43 = getelementptr inbounds %struct.replicator_drvdata, %struct.replicator_drvdata* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @coresight_disclaim_device_unlocked(i64 %44)
  br label %46

46:                                               ; preds = %41, %33, %15
  %47 = load %struct.replicator_drvdata*, %struct.replicator_drvdata** %4, align 8
  %48 = getelementptr inbounds %struct.replicator_drvdata, %struct.replicator_drvdata* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @CS_LOCK(i64 %49)
  br label %51

51:                                               ; preds = %46, %13
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @CS_UNLOCK(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @coresight_disclaim_device_unlocked(i64) #1

declare dso_local i32 @CS_LOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
