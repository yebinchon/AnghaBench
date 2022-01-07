; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_read_prepare_etr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_read_prepare_etr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmc_drvdata = type { i64, i32, i64, i32, i32 }

@TMC_CONFIG_TYPE_ETR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CS_MODE_SYSFS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmc_read_prepare_etr(%struct.tmc_drvdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tmc_drvdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.tmc_drvdata* %0, %struct.tmc_drvdata** %3, align 8
  store i32 0, i32* %4, align 4
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
  br label %55

17:                                               ; preds = %1
  %18 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %19 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %18, i32 0, i32 3
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %23 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %49

29:                                               ; preds = %17
  %30 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %31 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %49

37:                                               ; preds = %29
  %38 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %39 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CS_MODE_SYSFS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %45 = call i32 @__tmc_etr_disable_hw(%struct.tmc_drvdata* %44)
  br label %46

46:                                               ; preds = %43, %37
  %47 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %48 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %47, i32 0, i32 1
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %34, %26
  %50 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %3, align 8
  %51 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %50, i32 0, i32 3
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %49, %14
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__tmc_etr_disable_hw(%struct.tmc_drvdata*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
