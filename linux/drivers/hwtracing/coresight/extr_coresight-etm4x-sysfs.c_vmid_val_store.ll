; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x-sysfs.c_vmid_val_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x-sysfs.c_vmid_val_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.etmv4_drvdata = type { i32, i32, i32, %struct.etmv4_config }
%struct.etmv4_config = type { i64, i64* }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @vmid_val_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vmid_val_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.etmv4_drvdata*, align 8
  %12 = alloca %struct.etmv4_config*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.etmv4_drvdata* @dev_get_drvdata(i32 %15)
  store %struct.etmv4_drvdata* %16, %struct.etmv4_drvdata** %11, align 8
  %17 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %11, align 8
  %18 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %17, i32 0, i32 3
  store %struct.etmv4_config* %18, %struct.etmv4_config** %12, align 8
  %19 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %11, align 8
  %20 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %11, align 8
  %25 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23, %4
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %54

31:                                               ; preds = %23
  %32 = load i8*, i8** %8, align 8
  %33 = call i64 @kstrtoul(i8* %32, i32 16, i64* %10)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i64, i64* @EINVAL, align 8
  %37 = sub i64 0, %36
  store i64 %37, i64* %5, align 8
  br label %54

38:                                               ; preds = %31
  %39 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %11, align 8
  %40 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %39, i32 0, i32 0
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.etmv4_config*, %struct.etmv4_config** %12, align 8
  %44 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load %struct.etmv4_config*, %struct.etmv4_config** %12, align 8
  %47 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i64, i64* %45, i64 %48
  store i64 %42, i64* %49, align 8
  %50 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %11, align 8
  %51 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load i64, i64* %9, align 8
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %38, %35, %28
  %55 = load i64, i64* %5, align 8
  ret i64 %55
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
