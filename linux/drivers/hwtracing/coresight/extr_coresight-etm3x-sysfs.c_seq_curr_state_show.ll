; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x-sysfs.c_seq_curr_state_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x-sysfs.c_seq_curr_state_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.etm_drvdata = type { i32, i32, i32, %struct.etm_config }
%struct.etm_config = type { i64 }

@ETMSQR = common dso_local global i32 0, align 4
@ETM_SQR_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%#lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @seq_curr_state_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seq_curr_state_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.etm_drvdata*, align 8
  %10 = alloca %struct.etm_config*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.etm_drvdata* @dev_get_drvdata(i32 %13)
  store %struct.etm_drvdata* %14, %struct.etm_drvdata** %9, align 8
  %15 = load %struct.etm_drvdata*, %struct.etm_drvdata** %9, align 8
  %16 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %15, i32 0, i32 3
  store %struct.etm_config* %16, %struct.etm_config** %10, align 8
  %17 = load %struct.etm_drvdata*, %struct.etm_drvdata** %9, align 8
  %18 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %17, i32 0, i32 2
  %19 = call i32 @local_read(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load %struct.etm_config*, %struct.etm_config** %10, align 8
  %23 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  br label %55

25:                                               ; preds = %3
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pm_runtime_get_sync(i32 %28)
  %30 = load %struct.etm_drvdata*, %struct.etm_drvdata** %9, align 8
  %31 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %30, i32 0, i32 0
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.etm_drvdata*, %struct.etm_drvdata** %9, align 8
  %35 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @CS_UNLOCK(i32 %36)
  %38 = load %struct.etm_drvdata*, %struct.etm_drvdata** %9, align 8
  %39 = load i32, i32* @ETMSQR, align 4
  %40 = call i64 @etm_readl(%struct.etm_drvdata* %38, i32 %39)
  %41 = load i64, i64* @ETM_SQR_MASK, align 8
  %42 = and i64 %40, %41
  store i64 %42, i64* %7, align 8
  %43 = load %struct.etm_drvdata*, %struct.etm_drvdata** %9, align 8
  %44 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @CS_LOCK(i32 %45)
  %47 = load %struct.etm_drvdata*, %struct.etm_drvdata** %9, align 8
  %48 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %47, i32 0, i32 0
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = getelementptr inbounds %struct.device, %struct.device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pm_runtime_put(i32 %53)
  br label %55

55:                                               ; preds = %25, %21
  %56 = load i8*, i8** %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @sprintf(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %57)
  ret i32 %58
}

declare dso_local %struct.etm_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32 @local_read(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @CS_UNLOCK(i32) #1

declare dso_local i64 @etm_readl(%struct.etm_drvdata*, i32) #1

declare dso_local i32 @CS_LOCK(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
