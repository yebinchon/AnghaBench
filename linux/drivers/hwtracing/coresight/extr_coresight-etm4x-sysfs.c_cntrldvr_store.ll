; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x-sysfs.c_cntrldvr_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x-sysfs.c_cntrldvr_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.etmv4_drvdata = type { i32, %struct.etmv4_config }
%struct.etmv4_config = type { i64, i64* }

@EINVAL = common dso_local global i64 0, align 8
@ETM_CNTR_MAX_VAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @cntrldvr_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cntrldvr_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %19 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %18, i32 0, i32 1
  store %struct.etmv4_config* %19, %struct.etmv4_config** %13, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @kstrtoul(i8* %20, i32 16, i64* %11)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i64, i64* @EINVAL, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %50

26:                                               ; preds = %4
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @ETM_CNTR_MAX_VAL, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i64, i64* @EINVAL, align 8
  %32 = sub i64 0, %31
  store i64 %32, i64* %5, align 8
  br label %50

33:                                               ; preds = %26
  %34 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %35 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %34, i32 0, i32 0
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %38 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %42 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64 %40, i64* %45, align 8
  %46 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %47 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load i64, i64* %9, align 8
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %33, %30, %23
  %51 = load i64, i64* %5, align 8
  ret i64 %51
}

declare dso_local %struct.etmv4_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
