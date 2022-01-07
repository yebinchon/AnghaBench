; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_parse_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_parse_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etmv4_drvdata = type { i64, %struct.etmv4_config }
%struct.etmv4_config = type { i32, i32, i32 }
%struct.perf_event = type { %struct.perf_event_attr }
%struct.perf_event_attr = type { i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ETM_MODE_EXCL_KERN = common dso_local global i32 0, align 4
@ETM_MODE_EXCL_USER = common dso_local global i32 0, align 4
@ETM_OPT_CYCACC = common dso_local global i32 0, align 4
@ETM_CYC_THRESHOLD_DEFAULT = common dso_local global i32 0, align 4
@ETM_OPT_TS = common dso_local global i32 0, align 4
@ETM_OPT_CTXTID = common dso_local global i32 0, align 4
@ETM4_CFG_BIT_CTXTID = common dso_local global i32 0, align 4
@ETM_OPT_RETSTK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etmv4_drvdata*, %struct.perf_event*)* @etm4_parse_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etm4_parse_event_config(%struct.etmv4_drvdata* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.etmv4_drvdata*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.etmv4_config*, align 8
  %7 = alloca %struct.perf_event_attr*, align 8
  store %struct.etmv4_drvdata* %0, %struct.etmv4_drvdata** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %3, align 8
  %9 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %8, i32 0, i32 1
  store %struct.etmv4_config* %9, %struct.etmv4_config** %6, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  store %struct.perf_event_attr* %11, %struct.perf_event_attr** %7, align 8
  %12 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %13 = icmp ne %struct.perf_event_attr* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %118

17:                                               ; preds = %2
  %18 = load %struct.etmv4_config*, %struct.etmv4_config** %6, align 8
  %19 = call i32 @memset(%struct.etmv4_config* %18, i32 0, i32 12)
  %20 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %21 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, i32* @ETM_MODE_EXCL_KERN, align 4
  %26 = load %struct.etmv4_config*, %struct.etmv4_config** %6, align 8
  %27 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %17
  %29 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %30 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @ETM_MODE_EXCL_USER, align 4
  %35 = load %struct.etmv4_config*, %struct.etmv4_config** %6, align 8
  %36 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load %struct.etmv4_config*, %struct.etmv4_config** %6, align 8
  %39 = call i32 @etm4_set_default_config(%struct.etmv4_config* %38)
  %40 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %3, align 8
  %41 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %42 = call i32 @etm4_set_event_filters(%struct.etmv4_drvdata* %40, %struct.perf_event* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %118

46:                                               ; preds = %37
  %47 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %48 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ETM_OPT_CYCACC, align 4
  %51 = call i32 @BIT(i32 %50)
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %46
  %55 = call i32 @BIT(i32 4)
  %56 = load %struct.etmv4_config*, %struct.etmv4_config** %6, align 8
  %57 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @ETM_CYC_THRESHOLD_DEFAULT, align 4
  %61 = load %struct.etmv4_config*, %struct.etmv4_config** %6, align 8
  %62 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %54, %46
  %64 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %65 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @ETM_OPT_TS, align 4
  %68 = call i32 @BIT(i32 %67)
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %63
  %72 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %3, align 8
  %73 = call i32 @etm4_config_timestamp_event(%struct.etmv4_drvdata* %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %118

77:                                               ; preds = %71
  %78 = call i32 @BIT(i32 11)
  %79 = load %struct.etmv4_config*, %struct.etmv4_config** %6, align 8
  %80 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77, %63
  %84 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %85 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @ETM_OPT_CTXTID, align 4
  %88 = call i32 @BIT(i32 %87)
  %89 = and i32 %86, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %83
  %92 = load i32, i32* @ETM4_CFG_BIT_CTXTID, align 4
  %93 = call i32 @BIT(i32 %92)
  %94 = load %struct.etmv4_config*, %struct.etmv4_config** %6, align 8
  %95 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %91, %83
  %99 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %100 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @ETM_OPT_RETSTK, align 4
  %103 = call i32 @BIT(i32 %102)
  %104 = and i32 %101, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %98
  %107 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %3, align 8
  %108 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = call i32 @BIT(i32 12)
  %113 = load %struct.etmv4_config*, %struct.etmv4_config** %6, align 8
  %114 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %111, %106, %98
  br label %118

118:                                              ; preds = %117, %76, %45, %14
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @memset(%struct.etmv4_config*, i32, i32) #1

declare dso_local i32 @etm4_set_default_config(%struct.etmv4_config*) #1

declare dso_local i32 @etm4_set_event_filters(%struct.etmv4_drvdata*, %struct.perf_event*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @etm4_config_timestamp_event(%struct.etmv4_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
