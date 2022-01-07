; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etb10.c___etb_disable_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etb10.c___etb_disable_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etb_drvdata = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@ETB_FFCR = common dso_local global i64 0, align 8
@ETB_FFCR_STOP_FI = common dso_local global i32 0, align 4
@ETB_FFCR_FON_MAN = common dso_local global i32 0, align 4
@ETB_FFCR_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"timeout while waiting for completion of Manual Flush\0A\00", align 1
@ETB_CTL_REG = common dso_local global i64 0, align 8
@ETB_FFSR = common dso_local global i64 0, align 8
@ETB_FFSR_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"timeout while waiting for Formatter to Stop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etb_drvdata*)* @__etb_disable_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__etb_disable_hw(%struct.etb_drvdata* %0) #0 {
  %2 = alloca %struct.etb_drvdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  store %struct.etb_drvdata* %0, %struct.etb_drvdata** %2, align 8
  %5 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %6 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %10 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @CS_UNLOCK(i64 %11)
  %13 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %14 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ETB_FFCR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl_relaxed(i64 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @ETB_FFCR_STOP_FI, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %24 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ETB_FFCR, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel_relaxed(i32 %22, i64 %27)
  %29 = load i32, i32* @ETB_FFCR_FON_MAN, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %34 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ETB_FFCR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel_relaxed(i32 %32, i64 %37)
  %39 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %40 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ETB_FFCR, align 8
  %43 = load i32, i32* @ETB_FFCR_BIT, align 4
  %44 = call i64 @coresight_timeout(i64 %41, i64 %42, i32 %43, i32 0)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %1
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %1
  %50 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %51 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ETB_CTL_REG, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel_relaxed(i32 0, i64 %54)
  %56 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %57 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ETB_FFSR, align 8
  %60 = load i32, i32* @ETB_FFSR_BIT, align 4
  %61 = call i64 @coresight_timeout(i64 %58, i64 %59, i32 %60, i32 1)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %49
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %49
  %67 = load %struct.etb_drvdata*, %struct.etb_drvdata** %2, align 8
  %68 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @CS_LOCK(i64 %69)
  ret void
}

declare dso_local i32 @CS_UNLOCK(i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @coresight_timeout(i64, i64, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @CS_LOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
