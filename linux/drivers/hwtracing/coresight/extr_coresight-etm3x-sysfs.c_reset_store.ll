; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x-sysfs.c_reset_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x-sysfs.c_reset_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.etm_drvdata = type { i32, i32, %struct.etm_config }
%struct.etm_config = type { i32*, i32, i32 }

@ETM_MODE_EXCLUDE = common dso_local global i32 0, align 4
@ETM_DEFAULT_EVENT_VAL = common dso_local global i32 0, align 4
@ETM_ADDR_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @reset_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.etm_drvdata*, align 8
  %14 = alloca %struct.etm_config*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.etm_drvdata* @dev_get_drvdata(i32 %17)
  store %struct.etm_drvdata* %18, %struct.etm_drvdata** %13, align 8
  %19 = load %struct.etm_drvdata*, %struct.etm_drvdata** %13, align 8
  %20 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %19, i32 0, i32 2
  store %struct.etm_config* %20, %struct.etm_config** %14, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @kstrtoul(i8* %21, i32 16, i64* %12)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %5, align 4
  br label %68

27:                                               ; preds = %4
  %28 = load i64, i64* %12, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %27
  %31 = load %struct.etm_drvdata*, %struct.etm_drvdata** %13, align 8
  %32 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %31, i32 0, i32 1
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.etm_config*, %struct.etm_config** %14, align 8
  %35 = call i32 @memset(%struct.etm_config* %34, i32 0, i32 16)
  %36 = load i32, i32* @ETM_MODE_EXCLUDE, align 4
  %37 = load %struct.etm_config*, %struct.etm_config** %14, align 8
  %38 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @ETM_DEFAULT_EVENT_VAL, align 4
  %40 = load %struct.etm_config*, %struct.etm_config** %14, align 8
  %41 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %56, %30
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.etm_drvdata*, %struct.etm_drvdata** %13, align 8
  %45 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load i32, i32* @ETM_ADDR_TYPE_NONE, align 4
  %50 = load %struct.etm_config*, %struct.etm_config** %14, align 8
  %51 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %42

59:                                               ; preds = %42
  %60 = load %struct.etm_config*, %struct.etm_config** %14, align 8
  %61 = call i32 @etm_set_default(%struct.etm_config* %60)
  %62 = load %struct.etm_drvdata*, %struct.etm_drvdata** %13, align 8
  %63 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %62, i32 0, i32 1
  %64 = call i32 @spin_unlock(i32* %63)
  br label %65

65:                                               ; preds = %59, %27
  %66 = load i64, i64* %9, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %65, %25
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.etm_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memset(%struct.etm_config*, i32, i32) #1

declare dso_local i32 @etm_set_default(%struct.etm_config*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
