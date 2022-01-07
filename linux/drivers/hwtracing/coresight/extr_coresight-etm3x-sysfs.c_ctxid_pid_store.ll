; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x-sysfs.c_ctxid_pid_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x-sysfs.c_ctxid_pid_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.etm_drvdata = type { i32, %struct.etm_config }
%struct.etm_config = type { i64*, i64 }

@current = common dso_local global i32 0, align 4
@init_pid_ns = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ctxid_pid_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctxid_pid_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.etm_drvdata*, align 8
  %13 = alloca %struct.etm_config*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.etm_drvdata* @dev_get_drvdata(i32 %16)
  store %struct.etm_drvdata* %17, %struct.etm_drvdata** %12, align 8
  %18 = load %struct.etm_drvdata*, %struct.etm_drvdata** %12, align 8
  %19 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %18, i32 0, i32 1
  store %struct.etm_config* %19, %struct.etm_config** %13, align 8
  %20 = load i32, i32* @current, align 4
  %21 = call i32* @task_active_pid_ns(i32 %20)
  %22 = icmp ne i32* %21, @init_pid_ns
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %50

26:                                               ; preds = %4
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @kstrtoul(i8* %27, i32 16, i64* %11)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %5, align 4
  br label %50

33:                                               ; preds = %26
  %34 = load %struct.etm_drvdata*, %struct.etm_drvdata** %12, align 8
  %35 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %34, i32 0, i32 0
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.etm_config*, %struct.etm_config** %13, align 8
  %39 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load %struct.etm_config*, %struct.etm_config** %13, align 8
  %42 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i64, i64* %40, i64 %43
  store i64 %37, i64* %44, align 8
  %45 = load %struct.etm_drvdata*, %struct.etm_drvdata** %12, align 8
  %46 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load i64, i64* %9, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %33, %31, %23
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.etm_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32* @task_active_pid_ns(i32) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
