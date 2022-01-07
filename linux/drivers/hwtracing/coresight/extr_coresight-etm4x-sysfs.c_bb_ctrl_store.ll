; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x-sysfs.c_bb_ctrl_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x-sysfs.c_bb_ctrl_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.etmv4_drvdata = type { i32, i64, %struct.etmv4_config }
%struct.etmv4_config = type { i64 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @bb_ctrl_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bb_ctrl_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %18 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %17, i32 0, i32 2
  store %struct.etmv4_config* %18, %struct.etmv4_config** %12, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @kstrtoul(i8* %19, i32 16, i64* %10)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %5, align 8
  br label %56

25:                                               ; preds = %4
  %26 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %11, align 8
  %27 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i64, i64* @EINVAL, align 8
  %32 = sub i64 0, %31
  store i64 %32, i64* %5, align 8
  br label %56

33:                                               ; preds = %25
  %34 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %11, align 8
  %35 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i64, i64* @EINVAL, align 8
  %40 = sub i64 0, %39
  store i64 %40, i64* %5, align 8
  br label %56

41:                                               ; preds = %33
  %42 = load i64, i64* %10, align 8
  %43 = call i64 @BMVAL(i64 %42, i32 0, i32 7)
  %44 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %11, align 8
  %45 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i64, i64* @EINVAL, align 8
  %50 = sub i64 0, %49
  store i64 %50, i64* %5, align 8
  br label %56

51:                                               ; preds = %41
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.etmv4_config*, %struct.etmv4_config** %12, align 8
  %54 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load i64, i64* %9, align 8
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %51, %48, %38, %30, %22
  %57 = load i64, i64* %5, align 8
  ret i64 %57
}

declare dso_local %struct.etmv4_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @BMVAL(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
