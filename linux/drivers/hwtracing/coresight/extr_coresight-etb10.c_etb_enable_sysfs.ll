; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etb10.c_etb_enable_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etb10.c_etb_enable_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.etb_drvdata = type { i64, i32 }

@CS_MODE_PERF = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@CS_MODE_DISABLED = common dso_local global i64 0, align 8
@CS_MODE_SYSFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coresight_device*)* @etb_enable_sysfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etb_enable_sysfs(%struct.coresight_device* %0) #0 {
  %2 = alloca %struct.coresight_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.etb_drvdata*, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.coresight_device*, %struct.coresight_device** %2, align 8
  %7 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.etb_drvdata* @dev_get_drvdata(i32 %9)
  store %struct.etb_drvdata* %10, %struct.etb_drvdata** %5, align 8
  %11 = load %struct.etb_drvdata*, %struct.etb_drvdata** %5, align 8
  %12 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %11, i32 0, i32 1
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.etb_drvdata*, %struct.etb_drvdata** %5, align 8
  %16 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CS_MODE_PERF, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %44

23:                                               ; preds = %1
  %24 = load %struct.etb_drvdata*, %struct.etb_drvdata** %5, align 8
  %25 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CS_MODE_DISABLED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load %struct.etb_drvdata*, %struct.etb_drvdata** %5, align 8
  %31 = call i32 @etb_enable_hw(%struct.etb_drvdata* %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %44

35:                                               ; preds = %29
  %36 = load i64, i64* @CS_MODE_SYSFS, align 8
  %37 = load %struct.etb_drvdata*, %struct.etb_drvdata** %5, align 8
  %38 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %35, %23
  %40 = load %struct.coresight_device*, %struct.coresight_device** %2, align 8
  %41 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @atomic_inc(i32 %42)
  br label %44

44:                                               ; preds = %39, %34, %20
  %45 = load %struct.etb_drvdata*, %struct.etb_drvdata** %5, align 8
  %46 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %45, i32 0, i32 1
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.etb_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @etb_enable_hw(%struct.etb_drvdata*) #1

declare dso_local i32 @atomic_inc(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
