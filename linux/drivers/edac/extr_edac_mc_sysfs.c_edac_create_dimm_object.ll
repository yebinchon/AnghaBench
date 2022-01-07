; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_mc_sysfs.c_edac_create_dimm_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_mc_sysfs.c_edac_create_dimm_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, i64 }
%struct.dimm_info = type { %struct.TYPE_7__, %struct.mem_ctl_info* }
%struct.TYPE_7__ = type { i32*, i32* }

@dimm_attr_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"rank%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"dimm%d\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failure: create device %s\0A\00", align 1
@CONFIG_EDAC_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"device %s created at location %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, %struct.dimm_info*, i32)* @edac_create_dimm_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edac_create_dimm_object(%struct.mem_ctl_info* %0, %struct.dimm_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca %struct.dimm_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [80 x i8], align 16
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %5, align 8
  store %struct.dimm_info* %1, %struct.dimm_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %11 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %12 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %11, i32 0, i32 1
  store %struct.mem_ctl_info* %10, %struct.mem_ctl_info** %12, align 8
  %13 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %14 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  store i32* @dimm_attr_type, i32** %15, align 8
  %16 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %17 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %16, i32 0, i32 0
  %18 = call i32 @device_initialize(%struct.TYPE_7__* %17)
  %19 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %20 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %19, i32 0, i32 0
  %21 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %22 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i32* %20, i32** %23, align 8
  %24 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %25 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %30 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %29, i32 0, i32 0
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @dev_set_name(%struct.TYPE_7__* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %38

33:                                               ; preds = %3
  %34 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %35 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %34, i32 0, i32 0
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @dev_set_name(%struct.TYPE_7__* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %40 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %39, i32 0, i32 0
  %41 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %42 = call i32 @dev_set_drvdata(%struct.TYPE_7__* %40, %struct.dimm_info* %41)
  %43 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %44 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %43, i32 0, i32 0
  %45 = call i32 @pm_runtime_forbid(i32* %44)
  %46 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %47 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %46, i32 0, i32 0
  %48 = call i32 @device_add(%struct.TYPE_7__* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %38
  %52 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %53 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %52, i32 0, i32 0
  %54 = call i32 @dev_name(%struct.TYPE_7__* %53)
  %55 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %57 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %56, i32 0, i32 0
  %58 = call i32 @put_device(%struct.TYPE_7__* %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %74

60:                                               ; preds = %38
  %61 = load i32, i32* @CONFIG_EDAC_DEBUG, align 4
  %62 = call i64 @IS_ENABLED(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %66 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %67 = call i32 @edac_dimm_info_location(%struct.dimm_info* %65, i8* %66, i32 80)
  %68 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %69 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %68, i32 0, i32 0
  %70 = call i32 @dev_name(%struct.TYPE_7__* %69)
  %71 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %72 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %70, i8* %71)
  br label %73

73:                                               ; preds = %64, %60
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %51
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @device_initialize(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_7__*, %struct.dimm_info*) #1

declare dso_local i32 @pm_runtime_forbid(i32*) #1

declare dso_local i32 @device_add(%struct.TYPE_7__*) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @dev_name(%struct.TYPE_7__*) #1

declare dso_local i32 @put_device(%struct.TYPE_7__*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @edac_dimm_info_location(%struct.dimm_info*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
