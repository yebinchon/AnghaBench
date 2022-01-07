; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x-sysfs.c_addr_range_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x-sysfs.c_addr_range_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.etm_drvdata = type { i32, %struct.etm_config }
%struct.etm_config = type { i32, i64*, i64* }

@EPERM = common dso_local global i32 0, align 4
@ETM_ADDR_TYPE_NONE = common dso_local global i64 0, align 8
@ETM_ADDR_TYPE_RANGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"%#lx %#lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @addr_range_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_range_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.etm_drvdata*, align 8
  %12 = alloca %struct.etm_config*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.etm_drvdata* @dev_get_drvdata(i32 %15)
  store %struct.etm_drvdata* %16, %struct.etm_drvdata** %11, align 8
  %17 = load %struct.etm_drvdata*, %struct.etm_drvdata** %11, align 8
  %18 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %17, i32 0, i32 1
  store %struct.etm_config* %18, %struct.etm_config** %12, align 8
  %19 = load %struct.etm_drvdata*, %struct.etm_drvdata** %11, align 8
  %20 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.etm_config*, %struct.etm_config** %12, align 8
  %23 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = srem i32 %25, 2
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load %struct.etm_drvdata*, %struct.etm_drvdata** %11, align 8
  %30 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load i32, i32* @EPERM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %105

34:                                               ; preds = %3
  %35 = load %struct.etm_config*, %struct.etm_config** %12, align 8
  %36 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ETM_ADDR_TYPE_NONE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %34
  %45 = load %struct.etm_config*, %struct.etm_config** %12, align 8
  %46 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ETM_ADDR_TYPE_NONE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %82, label %55

55:                                               ; preds = %44, %34
  %56 = load %struct.etm_config*, %struct.etm_config** %12, align 8
  %57 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ETM_ADDR_TYPE_RANGE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %55
  %66 = load %struct.etm_config*, %struct.etm_config** %12, align 8
  %67 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %68, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ETM_ADDR_TYPE_RANGE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %65, %55
  %77 = load %struct.etm_drvdata*, %struct.etm_drvdata** %11, align 8
  %78 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock(i32* %78)
  %80 = load i32, i32* @EPERM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %105

82:                                               ; preds = %65, %44
  %83 = load %struct.etm_config*, %struct.etm_config** %12, align 8
  %84 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %83, i32 0, i32 2
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %9, align 8
  %90 = load %struct.etm_config*, %struct.etm_config** %12, align 8
  %91 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %90, i32 0, i32 2
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %92, i64 %95
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %10, align 8
  %98 = load %struct.etm_drvdata*, %struct.etm_drvdata** %11, align 8
  %99 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %98, i32 0, i32 0
  %100 = call i32 @spin_unlock(i32* %99)
  %101 = load i8*, i8** %7, align 8
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* %10, align 8
  %104 = call i32 @sprintf(i8* %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %102, i64 %103)
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %82, %76, %28
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.etm_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
