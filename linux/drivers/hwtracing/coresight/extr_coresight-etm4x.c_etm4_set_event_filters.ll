; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_set_event_filters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_set_event_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etmv4_drvdata = type { %struct.etmv4_config }
%struct.etmv4_config = type { i32, i32, i32 }
%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.etm_filters* }
%struct.etm_filters = type { i32, i32, %struct.etm_filter* }
%struct.etm_filter = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etmv4_drvdata*, %struct.perf_event*)* @etm4_set_event_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etm4_set_event_filters(%struct.etmv4_drvdata* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.etmv4_drvdata*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.etmv4_config*, align 8
  %10 = alloca %struct.etm_filters*, align 8
  %11 = alloca %struct.etm_filter*, align 8
  %12 = alloca i32, align 4
  store %struct.etmv4_drvdata* %0, %struct.etmv4_drvdata** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %3, align 8
  %14 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %13, i32 0, i32 0
  store %struct.etmv4_config* %14, %struct.etmv4_config** %9, align 8
  %15 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %16 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.etm_filters*, %struct.etm_filters** %17, align 8
  store %struct.etm_filters* %18, %struct.etm_filters** %10, align 8
  %19 = load %struct.etm_filters*, %struct.etm_filters** %10, align 8
  %20 = icmp ne %struct.etm_filters* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %112

22:                                               ; preds = %2
  %23 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %24 = call i32 @perf_event_addr_filters_sync(%struct.perf_event* %23)
  %25 = load %struct.etm_filters*, %struct.etm_filters** %10, align 8
  %26 = getelementptr inbounds %struct.etm_filters, %struct.etm_filters* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %112

30:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %108, %30
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.etm_filters*, %struct.etm_filters** %10, align 8
  %34 = getelementptr inbounds %struct.etm_filters, %struct.etm_filters* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %111

37:                                               ; preds = %31
  %38 = load %struct.etm_filters*, %struct.etm_filters** %10, align 8
  %39 = getelementptr inbounds %struct.etm_filters, %struct.etm_filters* %38, i32 0, i32 2
  %40 = load %struct.etm_filter*, %struct.etm_filter** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.etm_filter, %struct.etm_filter* %40, i64 %42
  store %struct.etm_filter* %43, %struct.etm_filter** %11, align 8
  %44 = load %struct.etm_filter*, %struct.etm_filter** %11, align 8
  %45 = getelementptr inbounds %struct.etm_filter, %struct.etm_filter* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %12, align 4
  %47 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %3, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @etm4_get_next_comparator(%struct.etmv4_drvdata* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %37
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %7, align 4
  br label %115

54:                                               ; preds = %37
  %55 = load i32, i32* %12, align 4
  switch i32 %55, label %104 [
    i32 130, label %56
    i32 129, label %73
    i32 128, label %73
  ]

56:                                               ; preds = %54
  %57 = load %struct.etmv4_config*, %struct.etmv4_config** %9, align 8
  %58 = load %struct.etm_filter*, %struct.etm_filter** %11, align 8
  %59 = getelementptr inbounds %struct.etm_filter, %struct.etm_filter* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.etm_filter*, %struct.etm_filter** %11, align 8
  %62 = getelementptr inbounds %struct.etm_filter, %struct.etm_filter* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @etm4_set_comparator_filter(%struct.etmv4_config* %57, i32 %60, i32 %63, i32 %64)
  %66 = call i32 @BIT(i32 9)
  %67 = load %struct.etmv4_config*, %struct.etmv4_config** %9, align 8
  %68 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.etmv4_config*, %struct.etmv4_config** %9, align 8
  %72 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %71, i32 0, i32 0
  store i32 0, i32* %72, align 4
  br label %107

73:                                               ; preds = %54, %54
  %74 = load i32, i32* %12, align 4
  %75 = icmp eq i32 %74, 129
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.etm_filter*, %struct.etm_filter** %11, align 8
  %78 = getelementptr inbounds %struct.etm_filter, %struct.etm_filter* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  br label %84

80:                                               ; preds = %73
  %81 = load %struct.etm_filter*, %struct.etm_filter** %11, align 8
  %82 = getelementptr inbounds %struct.etm_filter, %struct.etm_filter* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  br label %84

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %79, %76 ], [ %83, %80 ]
  store i32 %85, i32* %8, align 4
  %86 = load %struct.etmv4_config*, %struct.etmv4_config** %9, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @etm4_set_start_stop_filter(%struct.etmv4_config* %86, i32 %87, i32 %88, i32 %89)
  %91 = load %struct.etm_filters*, %struct.etm_filters** %10, align 8
  %92 = getelementptr inbounds %struct.etm_filters, %struct.etm_filters* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %84
  %96 = call i32 @BIT(i32 9)
  %97 = load %struct.etmv4_config*, %struct.etmv4_config** %9, align 8
  %98 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %95, %84
  %102 = load %struct.etmv4_config*, %struct.etmv4_config** %9, align 8
  %103 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %102, i32 0, i32 1
  store i32 0, i32* %103, align 4
  br label %107

104:                                              ; preds = %54
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %7, align 4
  br label %115

107:                                              ; preds = %101, %56
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %31

111:                                              ; preds = %31
  br label %115

112:                                              ; preds = %29, %21
  %113 = load %struct.etmv4_config*, %struct.etmv4_config** %9, align 8
  %114 = call i32 @etm4_set_default_filter(%struct.etmv4_config* %113)
  br label %115

115:                                              ; preds = %112, %111, %104, %52
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local i32 @perf_event_addr_filters_sync(%struct.perf_event*) #1

declare dso_local i32 @etm4_get_next_comparator(%struct.etmv4_drvdata*, i32) #1

declare dso_local i32 @etm4_set_comparator_filter(%struct.etmv4_config*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @etm4_set_start_stop_filter(%struct.etmv4_config*, i32, i32, i32) #1

declare dso_local i32 @etm4_set_default_filter(%struct.etmv4_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
