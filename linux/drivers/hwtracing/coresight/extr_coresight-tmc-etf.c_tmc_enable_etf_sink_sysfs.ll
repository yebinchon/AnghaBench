; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etf.c_tmc_enable_etf_sink_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etf.c_tmc_enable_etf_sink_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tmc_drvdata = type { i8*, i64, i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CS_MODE_SYSFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coresight_device*)* @tmc_enable_etf_sink_sysfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmc_enable_etf_sink_sysfs(%struct.coresight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coresight_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tmc_drvdata*, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %9 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %10 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.tmc_drvdata* @dev_get_drvdata(i32 %12)
  store %struct.tmc_drvdata* %13, %struct.tmc_drvdata** %8, align 8
  %14 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %15 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %14, i32 0, i32 2
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %19 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %1
  %23 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %24 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %23, i32 0, i32 2
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %28 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kzalloc(i32 %29, i32 %30)
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %22
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %105

37:                                               ; preds = %22
  %38 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %39 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %38, i32 0, i32 2
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  br label %42

42:                                               ; preds = %37, %1
  %43 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %44 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %93

50:                                               ; preds = %42
  %51 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %52 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CS_MODE_SYSFS, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %58 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @atomic_inc(i32 %59)
  br label %93

61:                                               ; preds = %50
  %62 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %63 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %68 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %71 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @memset(i8* %69, i32 0, i32 %72)
  br label %78

74:                                               ; preds = %61
  store i32 1, i32* %5, align 4
  %75 = load i8*, i8** %6, align 8
  %76 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %77 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %74, %66
  %79 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %80 = call i32 @tmc_etb_enable_hw(%struct.tmc_drvdata* %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %78
  %84 = load i64, i64* @CS_MODE_SYSFS, align 8
  %85 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %86 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %88 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @atomic_inc(i32 %89)
  br label %92

91:                                               ; preds = %78
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %83
  br label %93

93:                                               ; preds = %92, %56, %47
  %94 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %95 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %94, i32 0, i32 2
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %93
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @kfree(i8* %101)
  br label %103

103:                                              ; preds = %100, %93
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %103, %34
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.tmc_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_inc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @tmc_etb_enable_hw(%struct.tmc_drvdata*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
