; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_coretemp.c_coretemp_cpu_offline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_coretemp.c_coretemp_cpu_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.platform_data = type { i32, %struct.temp_data** }
%struct.temp_data = type { i32, i32 }

@cpuhp_tasks_frozen = common dso_local global i64 0, align 8
@MAX_CORE_DATA = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@zone_devices = common dso_local global i32** null, align 8
@PKG_SYSFS_ATTR_NO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @coretemp_cpu_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coretemp_cpu_offline(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.platform_data*, align 8
  %6 = alloca %struct.temp_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.platform_device* @coretemp_get_pdev(i32 %9)
  store %struct.platform_device* %10, %struct.platform_device** %4, align 8
  %11 = load i64, i64* @cpuhp_tasks_frozen, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %113

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %16 = icmp ne %struct.platform_device* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %113

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @TO_ATTR_NO(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @MAX_CORE_DATA, align 4
  %23 = sub nsw i32 %22, 1
  %24 = icmp sgt i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %113

26:                                               ; preds = %18
  %27 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %28 = call %struct.platform_data* @platform_get_drvdata(%struct.platform_device* %27)
  store %struct.platform_data* %28, %struct.platform_data** %5, align 8
  %29 = load %struct.platform_data*, %struct.platform_data** %5, align 8
  %30 = getelementptr inbounds %struct.platform_data, %struct.platform_data* %29, i32 0, i32 1
  %31 = load %struct.temp_data**, %struct.temp_data*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.temp_data*, %struct.temp_data** %31, i64 %33
  %35 = load %struct.temp_data*, %struct.temp_data** %34, align 8
  store %struct.temp_data* %35, %struct.temp_data** %6, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.platform_data*, %struct.platform_data** %5, align 8
  %38 = getelementptr inbounds %struct.platform_data, %struct.platform_data* %37, i32 0, i32 0
  %39 = call i32 @cpumask_clear_cpu(i32 %36, i32* %38)
  %40 = load %struct.platform_data*, %struct.platform_data** %5, align 8
  %41 = getelementptr inbounds %struct.platform_data, %struct.platform_data* %40, i32 0, i32 0
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @topology_sibling_cpumask(i32 %42)
  %44 = call i32 @cpumask_any_and(i32* %41, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @nr_cpu_ids, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %26
  %49 = load %struct.platform_data*, %struct.platform_data** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @coretemp_remove_core(%struct.platform_data* %49, i32 %50)
  br label %72

52:                                               ; preds = %26
  %53 = load %struct.temp_data*, %struct.temp_data** %6, align 8
  %54 = icmp ne %struct.temp_data* %53, null
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = load %struct.temp_data*, %struct.temp_data** %6, align 8
  %57 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load %struct.temp_data*, %struct.temp_data** %6, align 8
  %63 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %62, i32 0, i32 1
  %64 = call i32 @mutex_lock(i32* %63)
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.temp_data*, %struct.temp_data** %6, align 8
  %67 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.temp_data*, %struct.temp_data** %6, align 8
  %69 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %68, i32 0, i32 1
  %70 = call i32 @mutex_unlock(i32* %69)
  br label %71

71:                                               ; preds = %61, %55, %52
  br label %72

72:                                               ; preds = %71, %48
  %73 = load %struct.platform_data*, %struct.platform_data** %5, align 8
  %74 = getelementptr inbounds %struct.platform_data, %struct.platform_data* %73, i32 0, i32 0
  %75 = call i64 @cpumask_empty(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i32**, i32*** @zone_devices, align 8
  %79 = load i32, i32* %3, align 4
  %80 = call i64 @topology_logical_die_id(i32 %79)
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  store i32* null, i32** %81, align 8
  %82 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %83 = call i32 @platform_device_unregister(%struct.platform_device* %82)
  store i32 0, i32* %2, align 4
  br label %113

84:                                               ; preds = %72
  %85 = load %struct.platform_data*, %struct.platform_data** %5, align 8
  %86 = getelementptr inbounds %struct.platform_data, %struct.platform_data* %85, i32 0, i32 1
  %87 = load %struct.temp_data**, %struct.temp_data*** %86, align 8
  %88 = load i64, i64* @PKG_SYSFS_ATTR_NO, align 8
  %89 = getelementptr inbounds %struct.temp_data*, %struct.temp_data** %87, i64 %88
  %90 = load %struct.temp_data*, %struct.temp_data** %89, align 8
  store %struct.temp_data* %90, %struct.temp_data** %6, align 8
  %91 = load %struct.temp_data*, %struct.temp_data** %6, align 8
  %92 = icmp ne %struct.temp_data* %91, null
  br i1 %92, label %93, label %112

93:                                               ; preds = %84
  %94 = load %struct.temp_data*, %struct.temp_data** %6, align 8
  %95 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %3, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %93
  %100 = load %struct.platform_data*, %struct.platform_data** %5, align 8
  %101 = getelementptr inbounds %struct.platform_data, %struct.platform_data* %100, i32 0, i32 0
  %102 = call i32 @cpumask_first(i32* %101)
  store i32 %102, i32* %8, align 4
  %103 = load %struct.temp_data*, %struct.temp_data** %6, align 8
  %104 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %103, i32 0, i32 1
  %105 = call i32 @mutex_lock(i32* %104)
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.temp_data*, %struct.temp_data** %6, align 8
  %108 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load %struct.temp_data*, %struct.temp_data** %6, align 8
  %110 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %109, i32 0, i32 1
  %111 = call i32 @mutex_unlock(i32* %110)
  br label %112

112:                                              ; preds = %99, %93, %84
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %77, %25, %17, %13
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.platform_device* @coretemp_get_pdev(i32) #1

declare dso_local i32 @TO_ATTR_NO(i32) #1

declare dso_local %struct.platform_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32*) #1

declare dso_local i32 @cpumask_any_and(i32*, i32) #1

declare dso_local i32 @topology_sibling_cpumask(i32) #1

declare dso_local i32 @coretemp_remove_core(%struct.platform_data*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @cpumask_empty(i32*) #1

declare dso_local i64 @topology_logical_die_id(i32) #1

declare dso_local i32 @platform_device_unregister(%struct.platform_device*) #1

declare dso_local i32 @cpumask_first(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
