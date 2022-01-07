; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm-perf.c_etm_perf_add_symlink_sink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm-perf.c_etm_perf_add_symlink_sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.coresight_device = type { i64, %struct.dev_ext_attribute*, %struct.device }
%struct.dev_ext_attribute = type { i64*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@etm_pmu = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@CORESIGHT_DEV_TYPE_SINK = common dso_local global i64 0, align 8
@CORESIGHT_DEV_TYPE_LINKSINK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@etm_perf_up = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@etm_perf_sink_name_show = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"sinks\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @etm_perf_add_symlink_sink(%struct.coresight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coresight_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.dev_ext_attribute*, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %3, align 8
  %10 = load %struct.device*, %struct.device** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @etm_pmu, i32 0, i32 0), align 8
  store %struct.device* %10, %struct.device** %7, align 8
  %11 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %12 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %11, i32 0, i32 2
  store %struct.device* %12, %struct.device** %8, align 8
  %13 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %14 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CORESIGHT_DEV_TYPE_SINK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %20 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CORESIGHT_DEV_TYPE_LINKSINK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %104

27:                                               ; preds = %18, %1
  %28 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %29 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %28, i32 0, i32 1
  %30 = load %struct.dev_ext_attribute*, %struct.dev_ext_attribute** %29, align 8
  %31 = icmp ne %struct.dev_ext_attribute* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %104

35:                                               ; preds = %27
  %36 = load i32, i32* @etm_perf_up, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @EPROBE_DEFER, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %104

41:                                               ; preds = %35
  %42 = load %struct.device*, %struct.device** %8, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.dev_ext_attribute* @devm_kzalloc(%struct.device* %42, i32 24, i32 %43)
  store %struct.dev_ext_attribute* %44, %struct.dev_ext_attribute** %9, align 8
  %45 = load %struct.dev_ext_attribute*, %struct.dev_ext_attribute** %9, align 8
  %46 = icmp ne %struct.dev_ext_attribute* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %104

50:                                               ; preds = %41
  %51 = load %struct.device*, %struct.device** %8, align 8
  %52 = call i8* @dev_name(%struct.device* %51)
  store i8* %52, i8** %6, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @hashlen_string(i32* null, i8* %53)
  %55 = call i64 @hashlen_hash(i32 %54)
  store i64 %55, i64* %5, align 8
  %56 = load %struct.dev_ext_attribute*, %struct.dev_ext_attribute** %9, align 8
  %57 = getelementptr inbounds %struct.dev_ext_attribute, %struct.dev_ext_attribute* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = call i32 @sysfs_attr_init(%struct.TYPE_6__* %58)
  %60 = load %struct.device*, %struct.device** %8, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i32 @devm_kstrdup(%struct.device* %60, i8* %61, i32 %62)
  %64 = load %struct.dev_ext_attribute*, %struct.dev_ext_attribute** %9, align 8
  %65 = getelementptr inbounds %struct.dev_ext_attribute, %struct.dev_ext_attribute* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i32 %63, i32* %67, align 4
  %68 = load %struct.dev_ext_attribute*, %struct.dev_ext_attribute** %9, align 8
  %69 = getelementptr inbounds %struct.dev_ext_attribute, %struct.dev_ext_attribute* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %50
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %104

77:                                               ; preds = %50
  %78 = load %struct.dev_ext_attribute*, %struct.dev_ext_attribute** %9, align 8
  %79 = getelementptr inbounds %struct.dev_ext_attribute, %struct.dev_ext_attribute* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i32 292, i32* %81, align 8
  %82 = load i32, i32* @etm_perf_sink_name_show, align 4
  %83 = load %struct.dev_ext_attribute*, %struct.dev_ext_attribute** %9, align 8
  %84 = getelementptr inbounds %struct.dev_ext_attribute, %struct.dev_ext_attribute* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 8
  %86 = load i64, i64* %5, align 8
  %87 = inttoptr i64 %86 to i64*
  %88 = load %struct.dev_ext_attribute*, %struct.dev_ext_attribute** %9, align 8
  %89 = getelementptr inbounds %struct.dev_ext_attribute, %struct.dev_ext_attribute* %88, i32 0, i32 0
  store i64* %87, i64** %89, align 8
  %90 = load %struct.device*, %struct.device** %7, align 8
  %91 = getelementptr inbounds %struct.device, %struct.device* %90, i32 0, i32 0
  %92 = load %struct.dev_ext_attribute*, %struct.dev_ext_attribute** %9, align 8
  %93 = getelementptr inbounds %struct.dev_ext_attribute, %struct.dev_ext_attribute* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = call i32 @sysfs_add_file_to_group(i32* %91, %struct.TYPE_6__* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %77
  %99 = load %struct.dev_ext_attribute*, %struct.dev_ext_attribute** %9, align 8
  %100 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %101 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %100, i32 0, i32 1
  store %struct.dev_ext_attribute* %99, %struct.dev_ext_attribute** %101, align 8
  br label %102

102:                                              ; preds = %98, %77
  %103 = load i32, i32* %4, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %74, %47, %38, %32, %24
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.dev_ext_attribute* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i64 @hashlen_hash(i32) #1

declare dso_local i32 @hashlen_string(i32*, i8*) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_6__*) #1

declare dso_local i32 @devm_kstrdup(%struct.device*, i8*, i32) #1

declare dso_local i32 @sysfs_add_file_to_group(i32*, %struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
