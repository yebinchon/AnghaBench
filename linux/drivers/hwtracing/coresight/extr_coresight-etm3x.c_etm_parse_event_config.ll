; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x.c_etm_parse_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x.c_etm_parse_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etm_drvdata = type { i32, %struct.etm_config }
%struct.etm_config = type { i32, i64 }
%struct.perf_event = type { %struct.perf_event_attr }
%struct.perf_event_attr = type { i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ETM_MODE_EXCL_KERN = common dso_local global i64 0, align 8
@ETM_MODE_EXCL_USER = common dso_local global i64 0, align 8
@ETM3X_SUPPORTED_OPTIONS = common dso_local global i32 0, align 4
@ETMCR_RETURN_STACK = common dso_local global i32 0, align 4
@ETMCCER_RETSTACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etm_drvdata*, %struct.perf_event*)* @etm_parse_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etm_parse_event_config(%struct.etm_drvdata* %0, %struct.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.etm_drvdata*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.etm_config*, align 8
  %7 = alloca %struct.perf_event_attr*, align 8
  store %struct.etm_drvdata* %0, %struct.etm_drvdata** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %8 = load %struct.etm_drvdata*, %struct.etm_drvdata** %4, align 8
  %9 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %8, i32 0, i32 1
  store %struct.etm_config* %9, %struct.etm_config** %6, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  store %struct.perf_event_attr* %11, %struct.perf_event_attr** %7, align 8
  %12 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %13 = icmp ne %struct.perf_event_attr* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %85

17:                                               ; preds = %2
  %18 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %19 = call i32 @memset(%struct.etm_config* %18, i32 0, i32 16)
  %20 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %21 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i64, i64* @ETM_MODE_EXCL_KERN, align 8
  %26 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %27 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %24, %17
  %29 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %30 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i64, i64* @ETM_MODE_EXCL_USER, align 8
  %35 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %36 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %28
  %38 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %39 = call i32 @etm_set_default(%struct.etm_config* %38)
  %40 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %41 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %46 = call i32 @etm_config_trace_mode(%struct.etm_config* %45)
  br label %47

47:                                               ; preds = %44, %37
  %48 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %49 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ETM3X_SUPPORTED_OPTIONS, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %85

58:                                               ; preds = %47
  %59 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %60 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %63 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %65 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @ETMCR_RETURN_STACK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %58
  %71 = load %struct.etm_drvdata*, %struct.etm_drvdata** %4, align 8
  %72 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ETMCCER_RETSTACK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* @ETMCR_RETURN_STACK, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %81 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %77, %70, %58
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %55, %14
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @memset(%struct.etm_config*, i32, i32) #1

declare dso_local i32 @etm_set_default(%struct.etm_config*) #1

declare dso_local i32 @etm_config_trace_mode(%struct.etm_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
