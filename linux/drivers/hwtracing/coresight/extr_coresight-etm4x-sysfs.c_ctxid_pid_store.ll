; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x-sysfs.c_ctxid_pid_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x-sysfs.c_ctxid_pid_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.etmv4_drvdata = type { i32, i32, i32, %struct.etmv4_config }
%struct.etmv4_config = type { i64, i64* }

@current = common dso_local global i32 0, align 4
@init_pid_ns = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ctxid_pid_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ctxid_pid_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.etmv4_drvdata*, align 8
  %13 = alloca %struct.etmv4_config*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.etmv4_drvdata* @dev_get_drvdata(i32 %16)
  store %struct.etmv4_drvdata* %17, %struct.etmv4_drvdata** %12, align 8
  %18 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %19 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %18, i32 0, i32 3
  store %struct.etmv4_config* %19, %struct.etmv4_config** %13, align 8
  %20 = load i32, i32* @current, align 4
  %21 = call i32* @task_active_pid_ns(i32 %20)
  %22 = icmp ne i32* %21, @init_pid_ns
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i64, i64* @EINVAL, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %63

26:                                               ; preds = %4
  %27 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %28 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %33 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31, %26
  %37 = load i64, i64* @EINVAL, align 8
  %38 = sub i64 0, %37
  store i64 %38, i64* %5, align 8
  br label %63

39:                                               ; preds = %31
  %40 = load i8*, i8** %8, align 8
  %41 = call i64 @kstrtoul(i8* %40, i32 16, i64* %11)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i64, i64* @EINVAL, align 8
  %45 = sub i64 0, %44
  store i64 %45, i64* %5, align 8
  br label %63

46:                                               ; preds = %39
  %47 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %48 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %47, i32 0, i32 0
  %49 = call i32 @spin_lock(i32* %48)
  %50 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %51 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %55 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  store i64 %53, i64* %58, align 8
  %59 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %60 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock(i32* %60)
  %62 = load i64, i64* %9, align 8
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %46, %43, %36, %23
  %64 = load i64, i64* %5, align 8
  ret i64 %64
}

declare dso_local %struct.etmv4_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32* @task_active_pid_ns(i32) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
