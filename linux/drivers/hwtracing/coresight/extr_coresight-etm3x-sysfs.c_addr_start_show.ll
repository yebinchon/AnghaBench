; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x-sysfs.c_addr_start_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x-sysfs.c_addr_start_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.etm_drvdata = type { i32, %struct.etm_config }
%struct.etm_config = type { i64, i64*, i64* }

@ETM_ADDR_TYPE_NONE = common dso_local global i64 0, align 8
@ETM_ADDR_TYPE_START = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%#lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @addr_start_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_start_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.etm_drvdata*, align 8
  %11 = alloca %struct.etm_config*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.etm_drvdata* @dev_get_drvdata(i32 %14)
  store %struct.etm_drvdata* %15, %struct.etm_drvdata** %10, align 8
  %16 = load %struct.etm_drvdata*, %struct.etm_drvdata** %10, align 8
  %17 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %16, i32 0, i32 1
  store %struct.etm_config* %17, %struct.etm_config** %11, align 8
  %18 = load %struct.etm_drvdata*, %struct.etm_drvdata** %10, align 8
  %19 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.etm_config*, %struct.etm_config** %11, align 8
  %22 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  %24 = load %struct.etm_config*, %struct.etm_config** %11, align 8
  %25 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ETM_ADDR_TYPE_NONE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %47, label %32

32:                                               ; preds = %3
  %33 = load %struct.etm_config*, %struct.etm_config** %11, align 8
  %34 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ETM_ADDR_TYPE_START, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %32
  %42 = load %struct.etm_drvdata*, %struct.etm_drvdata** %10, align 8
  %43 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load i32, i32* @EPERM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %60

47:                                               ; preds = %32, %3
  %48 = load %struct.etm_config*, %struct.etm_config** %11, align 8
  %49 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %9, align 8
  %54 = load %struct.etm_drvdata*, %struct.etm_drvdata** %10, align 8
  %55 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load i8*, i8** %7, align 8
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @sprintf(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %58)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %47, %41
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.etm_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
