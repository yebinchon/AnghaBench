; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x-sysfs.c_addr_range_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x-sysfs.c_addr_range_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.etmv4_drvdata = type { i32, %struct.etmv4_config }
%struct.etmv4_config = type { i32, i64*, i32, i8** }

@.str = private unnamed_addr constant [8 x i8] c"%lx %lx\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@ETM_ADDR_TYPE_NONE = common dso_local global i64 0, align 8
@ETM_ADDR_TYPE_RANGE = common dso_local global i64 0, align 8
@ETM_MODE_EXCLUDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @addr_range_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @addr_range_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.etmv4_drvdata*, align 8
  %14 = alloca %struct.etmv4_config*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.etmv4_drvdata* @dev_get_drvdata(i32 %17)
  store %struct.etmv4_drvdata* %18, %struct.etmv4_drvdata** %13, align 8
  %19 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %13, align 8
  %20 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %19, i32 0, i32 1
  store %struct.etmv4_config* %20, %struct.etmv4_config** %14, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @sscanf(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64* %11, i64* %12)
  %23 = icmp ne i32 %22, 2
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %145

27:                                               ; preds = %4
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* %12, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i64, i64* @EINVAL, align 8
  %33 = sub i64 0, %32
  store i64 %33, i64* %5, align 8
  br label %145

34:                                               ; preds = %27
  %35 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %13, align 8
  %36 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %35, i32 0, i32 0
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.etmv4_config*, %struct.etmv4_config** %14, align 8
  %39 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = srem i32 %41, 2
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %34
  %45 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %13, align 8
  %46 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load i64, i64* @EPERM, align 8
  %49 = sub i64 0, %48
  store i64 %49, i64* %5, align 8
  br label %145

50:                                               ; preds = %34
  %51 = load %struct.etmv4_config*, %struct.etmv4_config** %14, align 8
  %52 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ETM_ADDR_TYPE_NONE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %50
  %61 = load %struct.etmv4_config*, %struct.etmv4_config** %14, align 8
  %62 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %63, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ETM_ADDR_TYPE_NONE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %98, label %71

71:                                               ; preds = %60, %50
  %72 = load %struct.etmv4_config*, %struct.etmv4_config** %14, align 8
  %73 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ETM_ADDR_TYPE_RANGE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %71
  %82 = load %struct.etmv4_config*, %struct.etmv4_config** %14, align 8
  %83 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %84, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ETM_ADDR_TYPE_RANGE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %81, %71
  %93 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %13, align 8
  %94 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock(i32* %94)
  %96 = load i64, i64* @EPERM, align 8
  %97 = sub i64 0, %96
  store i64 %97, i64* %5, align 8
  br label %145

98:                                               ; preds = %81, %60
  %99 = load i64, i64* %11, align 8
  %100 = inttoptr i64 %99 to i8*
  %101 = load %struct.etmv4_config*, %struct.etmv4_config** %14, align 8
  %102 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %101, i32 0, i32 3
  %103 = load i8**, i8*** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  store i8* %100, i8** %106, align 8
  %107 = load i64, i64* @ETM_ADDR_TYPE_RANGE, align 8
  %108 = load %struct.etmv4_config*, %struct.etmv4_config** %14, align 8
  %109 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  store i64 %107, i64* %113, align 8
  %114 = load i64, i64* %12, align 8
  %115 = inttoptr i64 %114 to i8*
  %116 = load %struct.etmv4_config*, %struct.etmv4_config** %14, align 8
  %117 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %116, i32 0, i32 3
  %118 = load i8**, i8*** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %118, i64 %121
  store i8* %115, i8** %122, align 8
  %123 = load i64, i64* @ETM_ADDR_TYPE_RANGE, align 8
  %124 = load %struct.etmv4_config*, %struct.etmv4_config** %14, align 8
  %125 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %124, i32 0, i32 1
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %126, i64 %129
  store i64 %123, i64* %130, align 8
  %131 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %13, align 8
  %132 = load %struct.etmv4_config*, %struct.etmv4_config** %14, align 8
  %133 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @ETM_MODE_EXCLUDE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i32 1, i32 0
  %140 = call i32 @etm4_set_mode_exclude(%struct.etmv4_drvdata* %131, i32 %139)
  %141 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %13, align 8
  %142 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %141, i32 0, i32 0
  %143 = call i32 @spin_unlock(i32* %142)
  %144 = load i64, i64* %9, align 8
  store i64 %144, i64* %5, align 8
  br label %145

145:                                              ; preds = %98, %92, %44, %31, %24
  %146 = load i64, i64* %5, align 8
  ret i64 %146
}

declare dso_local %struct.etmv4_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @etm4_set_mode_exclude(%struct.etmv4_drvdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
