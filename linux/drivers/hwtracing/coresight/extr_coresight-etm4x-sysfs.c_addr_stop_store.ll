; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x-sysfs.c_addr_stop_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x-sysfs.c_addr_stop_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.etmv4_drvdata = type { i32, i32, %struct.etmv4_config }
%struct.etmv4_config = type { i64, i64*, i32, i32, i64* }

@EINVAL = common dso_local global i64 0, align 8
@ETM_ADDR_TYPE_NONE = common dso_local global i64 0, align 8
@ETM_ADDR_TYPE_STOP = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @addr_stop_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @addr_stop_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %19 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %18, i32 0, i32 2
  store %struct.etmv4_config* %19, %struct.etmv4_config** %13, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @kstrtoul(i8* %20, i32 16, i64* %11)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i64, i64* @EINVAL, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %97

26:                                               ; preds = %4
  %27 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %28 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %27, i32 0, i32 0
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %31 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %10, align 8
  %33 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %34 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %26
  %38 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %39 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load i64, i64* @EINVAL, align 8
  %42 = sub i64 0, %41
  store i64 %42, i64* %5, align 8
  br label %97

43:                                               ; preds = %26
  %44 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %45 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ETM_ADDR_TYPE_NONE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %67, label %52

52:                                               ; preds = %43
  %53 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %54 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ETM_ADDR_TYPE_STOP, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %52
  %62 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %63 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock(i32* %63)
  %65 = load i64, i64* @EPERM, align 8
  %66 = sub i64 0, %65
  store i64 %66, i64* %5, align 8
  br label %97

67:                                               ; preds = %52, %43
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %70 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %69, i32 0, i32 4
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  store i64 %68, i64* %73, align 8
  %74 = load i64, i64* @ETM_ADDR_TYPE_STOP, align 8
  %75 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %76 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  store i64 %74, i64* %79, align 8
  %80 = load i64, i64* %10, align 8
  %81 = add i64 %80, 16
  %82 = trunc i64 %81 to i32
  %83 = call i32 @BIT(i32 %82)
  %84 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %85 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = call i32 @BIT(i32 9)
  %89 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %90 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %94 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock(i32* %94)
  %96 = load i64, i64* %9, align 8
  store i64 %96, i64* %5, align 8
  br label %97

97:                                               ; preds = %67, %61, %37, %23
  %98 = load i64, i64* %5, align 8
  ret i64 %98
}

declare dso_local %struct.etmv4_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
