; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etf.c_tmc_read_unprepare_etb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etf.c_tmc_read_unprepare_etb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmc_drvdata = type { i64, i64, i8*, i32, i32, i32, i64 }

@TMC_CONFIG_TYPE_ETB = common dso_local global i64 0, align 8
@TMC_CONFIG_TYPE_ETF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TMC_MODE = common dso_local global i64 0, align 8
@TMC_MODE_CIRCULAR_BUFFER = common dso_local global i32 0, align 4
@CS_MODE_SYSFS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmc_read_unprepare_etb(%struct.tmc_drvdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tmc_drvdata*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.tmc_drvdata* %0, %struct.tmc_drvdata** %3, align 8
  store i8* null, i8** %4, align 8
  %7 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %8 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @TMC_CONFIG_TYPE_ETB, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %14 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TMC_CONFIG_TYPE_ETF, align 8
  %17 = icmp ne i64 %15, %16
  br label %18

18:                                               ; preds = %12, %1
  %19 = phi i1 [ false, %1 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON_ONCE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %78

26:                                               ; preds = %18
  %27 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %28 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %27, i32 0, i32 4
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %32 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TMC_MODE, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl_relaxed(i64 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @TMC_MODE_CIRCULAR_BUFFER, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %26
  %41 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %42 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %41, i32 0, i32 4
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %78

47:                                               ; preds = %26
  %48 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %49 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CS_MODE_SYSFS, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %55 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %58 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @memset(i8* %56, i32 0, i32 %59)
  %61 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %62 = call i32 @__tmc_etb_enable_hw(%struct.tmc_drvdata* %61)
  br label %69

63:                                               ; preds = %47
  %64 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %65 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %4, align 8
  %67 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %68 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %67, i32 0, i32 2
  store i8* null, i8** %68, align 8
  br label %69

69:                                               ; preds = %63, %53
  %70 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %71 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %70, i32 0, i32 3
  store i32 0, i32* %71, align 8
  %72 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %73 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %72, i32 0, i32 4
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @kfree(i8* %76)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %69, %40, %23
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @__tmc_etb_enable_hw(%struct.tmc_drvdata*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
