; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etf.c_tmc_read_prepare_etb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etf.c_tmc_read_prepare_etb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmc_drvdata = type { i64, i32, i64, i32, i32*, i64 }

@TMC_CONFIG_TYPE_ETB = common dso_local global i64 0, align 8
@TMC_CONFIG_TYPE_ETF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TMC_MODE = common dso_local global i64 0, align 8
@TMC_MODE_CIRCULAR_BUFFER = common dso_local global i32 0, align 4
@CS_MODE_PERF = common dso_local global i64 0, align 8
@CS_MODE_SYSFS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmc_read_prepare_etb(%struct.tmc_drvdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tmc_drvdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.tmc_drvdata* %0, %struct.tmc_drvdata** %3, align 8
  store i32 0, i32* %5, align 4
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
  br label %86

26:                                               ; preds = %18
  %27 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %28 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %27, i32 0, i32 3
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %32 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %80

38:                                               ; preds = %26
  %39 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %40 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TMC_MODE, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl_relaxed(i64 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @TMC_MODE_CIRCULAR_BUFFER, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %80

51:                                               ; preds = %38
  %52 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %53 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CS_MODE_PERF, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %80

60:                                               ; preds = %51
  %61 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %62 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %80

68:                                               ; preds = %60
  %69 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %70 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CS_MODE_SYSFS, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %76 = call i32 @__tmc_etb_disable_hw(%struct.tmc_drvdata* %75)
  br label %77

77:                                               ; preds = %74, %68
  %78 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %79 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %78, i32 0, i32 1
  store i32 1, i32* %79, align 8
  br label %80

80:                                               ; preds = %77, %65, %57, %48, %35
  %81 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %82 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %81, i32 0, i32 3
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %80, %23
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @__tmc_etb_disable_hw(%struct.tmc_drvdata*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
