; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_crtc.c_komeda_crtc_do_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_crtc.c_komeda_crtc_do_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.komeda_crtc = type { %struct.komeda_wb_connector*, %struct.komeda_pipeline*, %struct.komeda_pipeline*, %struct.TYPE_7__ }
%struct.komeda_wb_connector = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.drm_connector_state* }
%struct.drm_connector_state = type { i64 }
%struct.komeda_pipeline = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.komeda_dev* }
%struct.komeda_dev = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.komeda_dev*, i32, i32)* }
%struct.komeda_crtc_state = type { i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"CRTC%d_FLUSH: active_pipes: 0x%x, affected: 0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @komeda_crtc_do_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @komeda_crtc_do_flush(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.komeda_crtc*, align 8
  %6 = alloca %struct.komeda_crtc_state*, align 8
  %7 = alloca %struct.komeda_dev*, align 8
  %8 = alloca %struct.komeda_pipeline*, align 8
  %9 = alloca %struct.komeda_pipeline*, align 8
  %10 = alloca %struct.komeda_wb_connector*, align 8
  %11 = alloca %struct.drm_connector_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %13 = call %struct.komeda_crtc* @to_kcrtc(%struct.drm_crtc* %12)
  store %struct.komeda_crtc* %13, %struct.komeda_crtc** %5, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %15 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.komeda_crtc_state* @to_kcrtc_st(i32 %16)
  store %struct.komeda_crtc_state* %17, %struct.komeda_crtc_state** %6, align 8
  %18 = load %struct.komeda_crtc*, %struct.komeda_crtc** %5, align 8
  %19 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.komeda_dev*, %struct.komeda_dev** %22, align 8
  store %struct.komeda_dev* %23, %struct.komeda_dev** %7, align 8
  %24 = load %struct.komeda_crtc*, %struct.komeda_crtc** %5, align 8
  %25 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %24, i32 0, i32 2
  %26 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %25, align 8
  store %struct.komeda_pipeline* %26, %struct.komeda_pipeline** %8, align 8
  %27 = load %struct.komeda_crtc*, %struct.komeda_crtc** %5, align 8
  %28 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %27, i32 0, i32 1
  %29 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %28, align 8
  store %struct.komeda_pipeline* %29, %struct.komeda_pipeline** %9, align 8
  %30 = load %struct.komeda_crtc*, %struct.komeda_crtc** %5, align 8
  %31 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %30, i32 0, i32 0
  %32 = load %struct.komeda_wb_connector*, %struct.komeda_wb_connector** %31, align 8
  store %struct.komeda_wb_connector* %32, %struct.komeda_wb_connector** %10, align 8
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %34 = call i32 @drm_crtc_index(%struct.drm_crtc* %33)
  %35 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %6, align 8
  %36 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %6, align 8
  %39 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37, i32 %40)
  %42 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %8, align 8
  %43 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %6, align 8
  %46 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @has_bit(i32 %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %2
  %51 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %8, align 8
  %52 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %53 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @komeda_pipeline_update(%struct.komeda_pipeline* %51, i32 %54)
  br label %56

56:                                               ; preds = %50, %2
  %57 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %9, align 8
  %58 = icmp ne %struct.komeda_pipeline* %57, null
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %9, align 8
  %61 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %6, align 8
  %64 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @has_bit(i32 %62, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %59
  %69 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %9, align 8
  %70 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %71 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @komeda_pipeline_update(%struct.komeda_pipeline* %69, i32 %72)
  br label %74

74:                                               ; preds = %68, %59, %56
  %75 = load %struct.komeda_wb_connector*, %struct.komeda_wb_connector** %10, align 8
  %76 = icmp ne %struct.komeda_wb_connector* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load %struct.komeda_wb_connector*, %struct.komeda_wb_connector** %10, align 8
  %79 = getelementptr inbounds %struct.komeda_wb_connector, %struct.komeda_wb_connector* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load %struct.drm_connector_state*, %struct.drm_connector_state** %81, align 8
  br label %84

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %77
  %85 = phi %struct.drm_connector_state* [ %82, %77 ], [ null, %83 ]
  store %struct.drm_connector_state* %85, %struct.drm_connector_state** %11, align 8
  %86 = load %struct.drm_connector_state*, %struct.drm_connector_state** %11, align 8
  %87 = icmp ne %struct.drm_connector_state* %86, null
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = load %struct.drm_connector_state*, %struct.drm_connector_state** %11, align 8
  %90 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.komeda_wb_connector*, %struct.komeda_wb_connector** %10, align 8
  %95 = getelementptr inbounds %struct.komeda_wb_connector, %struct.komeda_wb_connector* %94, i32 0, i32 0
  %96 = load %struct.drm_connector_state*, %struct.drm_connector_state** %11, align 8
  %97 = call i32 @drm_writeback_queue_job(%struct.TYPE_10__* %95, %struct.drm_connector_state* %96)
  br label %98

98:                                               ; preds = %93, %88, %84
  %99 = load %struct.komeda_dev*, %struct.komeda_dev** %7, align 8
  %100 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %99, i32 0, i32 0
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32 (%struct.komeda_dev*, i32, i32)*, i32 (%struct.komeda_dev*, i32, i32)** %102, align 8
  %104 = load %struct.komeda_dev*, %struct.komeda_dev** %7, align 8
  %105 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %8, align 8
  %106 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %6, align 8
  %109 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 %103(%struct.komeda_dev* %104, i32 %107, i32 %110)
  ret void
}

declare dso_local %struct.komeda_crtc* @to_kcrtc(%struct.drm_crtc*) #1

declare dso_local %struct.komeda_crtc_state* @to_kcrtc_st(i32) #1

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, i32, i32, i32) #1

declare dso_local i32 @drm_crtc_index(%struct.drm_crtc*) #1

declare dso_local i64 @has_bit(i32, i32) #1

declare dso_local i32 @komeda_pipeline_update(%struct.komeda_pipeline*, i32) #1

declare dso_local i32 @drm_writeback_queue_job(%struct.TYPE_10__*, %struct.drm_connector_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
