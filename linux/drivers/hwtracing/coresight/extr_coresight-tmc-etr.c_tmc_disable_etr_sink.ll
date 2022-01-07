; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_disable_etr_sink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_disable_etr_sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.tmc_drvdata = type { i64, i32, i32, i32*, i64 }

@EBUSY = common dso_local global i32 0, align 4
@CS_MODE_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"TMC-ETR disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coresight_device*)* @tmc_disable_etr_sink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmc_disable_etr_sink(%struct.coresight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coresight_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tmc_drvdata*, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %3, align 8
  %6 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %7 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.tmc_drvdata* @dev_get_drvdata(i32 %9)
  store %struct.tmc_drvdata* %10, %struct.tmc_drvdata** %5, align 8
  %11 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %5, align 8
  %12 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %11, i32 0, i32 2
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %5, align 8
  %16 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %5, align 8
  %21 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %20, i32 0, i32 2
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %63

26:                                               ; preds = %1
  %27 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %28 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @atomic_dec_return(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %5, align 8
  %34 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %33, i32 0, i32 2
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %63

39:                                               ; preds = %26
  %40 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %5, align 8
  %41 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CS_MODE_DISABLED, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @WARN_ON_ONCE(i32 %45)
  %47 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %5, align 8
  %48 = call i32 @tmc_etr_disable_hw(%struct.tmc_drvdata* %47)
  %49 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %5, align 8
  %50 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %49, i32 0, i32 1
  store i32 -1, i32* %50, align 8
  %51 = load i64, i64* @CS_MODE_DISABLED, align 8
  %52 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %5, align 8
  %53 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %5, align 8
  %55 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %54, i32 0, i32 3
  store i32* null, i32** %55, align 8
  %56 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %5, align 8
  %57 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %56, i32 0, i32 2
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %61 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %60, i32 0, i32 0
  %62 = call i32 @dev_dbg(%struct.TYPE_2__* %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %39, %32, %19
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.tmc_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @atomic_dec_return(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @tmc_etr_disable_hw(%struct.tmc_drvdata*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
