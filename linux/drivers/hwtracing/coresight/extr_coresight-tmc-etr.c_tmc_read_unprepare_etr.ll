; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_read_unprepare_etr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_read_unprepare_etr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmc_drvdata = type { i64, i64, i32, i32, %struct.etr_buf* }
%struct.etr_buf = type { i32 }

@TMC_CONFIG_TYPE_ETR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CS_MODE_SYSFS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmc_read_unprepare_etr(%struct.tmc_drvdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tmc_drvdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.etr_buf*, align 8
  store %struct.tmc_drvdata* %0, %struct.tmc_drvdata** %3, align 8
  store %struct.etr_buf* null, %struct.etr_buf** %5, align 8
  %6 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %7 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TMC_CONFIG_TYPE_ETR, align 8
  %10 = icmp ne i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON_ONCE(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %49

17:                                               ; preds = %1
  %18 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %19 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %18, i32 0, i32 3
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %23 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CS_MODE_SYSFS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %29 = call i32 @__tmc_etr_enable_hw(%struct.tmc_drvdata* %28)
  br label %36

30:                                               ; preds = %17
  %31 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %32 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %31, i32 0, i32 4
  %33 = load %struct.etr_buf*, %struct.etr_buf** %32, align 8
  store %struct.etr_buf* %33, %struct.etr_buf** %5, align 8
  %34 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %35 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %34, i32 0, i32 4
  store %struct.etr_buf* null, %struct.etr_buf** %35, align 8
  br label %36

36:                                               ; preds = %30, %27
  %37 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %38 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %37, i32 0, i32 2
  store i32 0, i32* %38, align 8
  %39 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %40 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %39, i32 0, i32 3
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.etr_buf*, %struct.etr_buf** %5, align 8
  %44 = icmp ne %struct.etr_buf* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load %struct.etr_buf*, %struct.etr_buf** %5, align 8
  %47 = call i32 @tmc_etr_free_sysfs_buf(%struct.etr_buf* %46)
  br label %48

48:                                               ; preds = %45, %36
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %14
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__tmc_etr_enable_hw(%struct.tmc_drvdata*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tmc_etr_free_sysfs_buf(%struct.etr_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
