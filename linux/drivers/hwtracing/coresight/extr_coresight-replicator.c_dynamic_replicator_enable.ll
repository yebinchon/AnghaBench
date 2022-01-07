; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-replicator.c_dynamic_replicator_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-replicator.c_dynamic_replicator_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.replicator_drvdata = type { i64 }

@REPLICATOR_IDFILTER0 = common dso_local global i64 0, align 8
@REPLICATOR_IDFILTER1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.replicator_drvdata*, i32, i32)* @dynamic_replicator_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dynamic_replicator_enable(%struct.replicator_drvdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.replicator_drvdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.replicator_drvdata* %0, %struct.replicator_drvdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %15 [
    i32 0, label %11
    i32 1, label %13
  ]

11:                                               ; preds = %3
  %12 = load i64, i64* @REPLICATOR_IDFILTER0, align 8
  store i64 %12, i64* %9, align 8
  br label %19

13:                                               ; preds = %3
  %14 = load i64, i64* @REPLICATOR_IDFILTER1, align 8
  store i64 %14, i64* %9, align 8
  br label %19

15:                                               ; preds = %3
  %16 = call i32 @WARN_ON(i32 1)
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %60

19:                                               ; preds = %13, %11
  %20 = load %struct.replicator_drvdata*, %struct.replicator_drvdata** %5, align 8
  %21 = getelementptr inbounds %struct.replicator_drvdata, %struct.replicator_drvdata* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @CS_UNLOCK(i64 %22)
  %24 = load %struct.replicator_drvdata*, %struct.replicator_drvdata** %5, align 8
  %25 = getelementptr inbounds %struct.replicator_drvdata, %struct.replicator_drvdata* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @REPLICATOR_IDFILTER0, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl_relaxed(i64 %28)
  %30 = icmp eq i32 %29, 255
  br i1 %30, label %31, label %44

31:                                               ; preds = %19
  %32 = load %struct.replicator_drvdata*, %struct.replicator_drvdata** %5, align 8
  %33 = getelementptr inbounds %struct.replicator_drvdata, %struct.replicator_drvdata* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @REPLICATOR_IDFILTER1, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl_relaxed(i64 %36)
  %38 = icmp eq i32 %37, 255
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.replicator_drvdata*, %struct.replicator_drvdata** %5, align 8
  %41 = getelementptr inbounds %struct.replicator_drvdata, %struct.replicator_drvdata* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @coresight_claim_device_unlocked(i64 %42)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %39, %31, %19
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = load %struct.replicator_drvdata*, %struct.replicator_drvdata** %5, align 8
  %49 = getelementptr inbounds %struct.replicator_drvdata, %struct.replicator_drvdata* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel_relaxed(i32 0, i64 %52)
  br label %54

54:                                               ; preds = %47, %44
  %55 = load %struct.replicator_drvdata*, %struct.replicator_drvdata** %5, align 8
  %56 = getelementptr inbounds %struct.replicator_drvdata, %struct.replicator_drvdata* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @CS_LOCK(i64 %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %54, %15
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @CS_UNLOCK(i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @coresight_claim_device_unlocked(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @CS_LOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
