; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm-perf.c_etm_perf_del_symlink_sink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm-perf.c_etm_perf_del_symlink_sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.coresight_device = type { i64, %struct.dev_ext_attribute* }
%struct.dev_ext_attribute = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@etm_pmu = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CORESIGHT_DEV_TYPE_SINK = common dso_local global i64 0, align 8
@CORESIGHT_DEV_TYPE_LINKSINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"sinks\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @etm_perf_del_symlink_sink(%struct.coresight_device* %0) #0 {
  %2 = alloca %struct.coresight_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.dev_ext_attribute*, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %2, align 8
  %5 = load %struct.device*, %struct.device** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @etm_pmu, i32 0, i32 0), align 8
  store %struct.device* %5, %struct.device** %3, align 8
  %6 = load %struct.coresight_device*, %struct.coresight_device** %2, align 8
  %7 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %6, i32 0, i32 1
  %8 = load %struct.dev_ext_attribute*, %struct.dev_ext_attribute** %7, align 8
  store %struct.dev_ext_attribute* %8, %struct.dev_ext_attribute** %4, align 8
  %9 = load %struct.coresight_device*, %struct.coresight_device** %2, align 8
  %10 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CORESIGHT_DEV_TYPE_SINK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.coresight_device*, %struct.coresight_device** %2, align 8
  %16 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CORESIGHT_DEV_TYPE_LINKSINK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %34

21:                                               ; preds = %14, %1
  %22 = load %struct.dev_ext_attribute*, %struct.dev_ext_attribute** %4, align 8
  %23 = icmp ne %struct.dev_ext_attribute* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  br label %34

25:                                               ; preds = %21
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = load %struct.dev_ext_attribute*, %struct.dev_ext_attribute** %4, align 8
  %29 = getelementptr inbounds %struct.dev_ext_attribute, %struct.dev_ext_attribute* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i32 @sysfs_remove_file_from_group(i32* %27, i32* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.coresight_device*, %struct.coresight_device** %2, align 8
  %33 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %32, i32 0, i32 1
  store %struct.dev_ext_attribute* null, %struct.dev_ext_attribute** %33, align 8
  br label %34

34:                                               ; preds = %25, %24, %20
  ret void
}

declare dso_local i32 @sysfs_remove_file_from_group(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
