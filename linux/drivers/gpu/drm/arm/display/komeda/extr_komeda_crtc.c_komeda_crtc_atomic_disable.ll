; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_crtc.c_komeda_crtc_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_crtc.c_komeda_crtc_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, %struct.komeda_dev* }
%struct.komeda_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.komeda_dev*, i32, i32)* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.completion }
%struct.completion = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.komeda_crtc = type { %struct.completion*, %struct.komeda_pipeline*, %struct.komeda_pipeline* }
%struct.komeda_pipeline = type { i32 }
%struct.komeda_crtc_state = type { i32, i32 }
%struct.komeda_pipeline_state = type { i64 }

@.str = private unnamed_addr constant [53 x i8] c"CRTC%d_DISABLE: active_pipes: 0x%x, affected: 0x%x.\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"disable pipeline%d timeout.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @komeda_crtc_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @komeda_crtc_atomic_disable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.komeda_crtc*, align 8
  %6 = alloca %struct.komeda_crtc_state*, align 8
  %7 = alloca %struct.komeda_dev*, align 8
  %8 = alloca %struct.komeda_pipeline*, align 8
  %9 = alloca %struct.komeda_pipeline*, align 8
  %10 = alloca %struct.completion*, align 8
  %11 = alloca %struct.completion, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.komeda_pipeline_state*, align 8
  %14 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %16 = call %struct.komeda_crtc* @to_kcrtc(%struct.drm_crtc* %15)
  store %struct.komeda_crtc* %16, %struct.komeda_crtc** %5, align 8
  %17 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %18 = call %struct.komeda_crtc_state* @to_kcrtc_st(%struct.drm_crtc_state* %17)
  store %struct.komeda_crtc_state* %18, %struct.komeda_crtc_state** %6, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %20 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load %struct.komeda_dev*, %struct.komeda_dev** %22, align 8
  store %struct.komeda_dev* %23, %struct.komeda_dev** %7, align 8
  %24 = load %struct.komeda_crtc*, %struct.komeda_crtc** %5, align 8
  %25 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %24, i32 0, i32 1
  %26 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %25, align 8
  store %struct.komeda_pipeline* %26, %struct.komeda_pipeline** %8, align 8
  %27 = load %struct.komeda_crtc*, %struct.komeda_crtc** %5, align 8
  %28 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %27, i32 0, i32 2
  %29 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %28, align 8
  store %struct.komeda_pipeline* %29, %struct.komeda_pipeline** %9, align 8
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %31 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store %struct.completion* %35, %struct.completion** %10, align 8
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %37 = call i32 @drm_crtc_index(%struct.drm_crtc* %36)
  %38 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %6, align 8
  %39 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %6, align 8
  %42 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40, i32 %43)
  %45 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %9, align 8
  %46 = icmp ne %struct.komeda_pipeline* %45, null
  br i1 %46, label %47, label %62

47:                                               ; preds = %2
  %48 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %9, align 8
  %49 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %6, align 8
  %52 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @has_bit(i32 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %9, align 8
  %58 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %59 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @komeda_pipeline_disable(%struct.komeda_pipeline* %57, i32 %60)
  br label %62

62:                                               ; preds = %56, %47, %2
  %63 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %8, align 8
  %64 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %6, align 8
  %67 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @has_bit(i32 %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %62
  %72 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %8, align 8
  %73 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %74 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @komeda_pipeline_disable(%struct.komeda_pipeline* %72, i32 %75)
  br label %77

77:                                               ; preds = %71, %62
  %78 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %79 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %77
  %85 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %8, align 8
  %86 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %87 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.komeda_pipeline_state* @komeda_pipeline_get_old_state(%struct.komeda_pipeline* %85, i32 %88)
  store %struct.komeda_pipeline_state* %89, %struct.komeda_pipeline_state** %13, align 8
  %90 = load %struct.komeda_pipeline_state*, %struct.komeda_pipeline_state** %13, align 8
  %91 = getelementptr inbounds %struct.komeda_pipeline_state, %struct.komeda_pipeline_state* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = call i32 @init_completion(%struct.completion* %11)
  %93 = load %struct.komeda_crtc*, %struct.komeda_crtc** %5, align 8
  %94 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %93, i32 0, i32 0
  store %struct.completion* %11, %struct.completion** %94, align 8
  store %struct.completion* %11, %struct.completion** %10, align 8
  br label %95

95:                                               ; preds = %84, %77
  %96 = load %struct.komeda_dev*, %struct.komeda_dev** %7, align 8
  %97 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32 (%struct.komeda_dev*, i32, i32)*, i32 (%struct.komeda_dev*, i32, i32)** %99, align 8
  %101 = load %struct.komeda_dev*, %struct.komeda_dev** %7, align 8
  %102 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %8, align 8
  %103 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 %100(%struct.komeda_dev* %101, i32 %104, i32 0)
  %106 = load %struct.completion*, %struct.completion** %10, align 8
  %107 = load i32, i32* @HZ, align 4
  %108 = call i32 @wait_for_completion_timeout(%struct.completion* %106, i32 %107)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %140

111:                                              ; preds = %95
  %112 = load %struct.komeda_crtc*, %struct.komeda_crtc** %5, align 8
  %113 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %112, i32 0, i32 1
  %114 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %113, align 8
  %115 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %119 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %118, i32 0, i32 1
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %111
  %125 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %126 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %125, i32 0, i32 0
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i64, i64* %14, align 8
  %130 = call i32 @spin_lock_irqsave(i32* %128, i64 %129)
  %131 = load %struct.komeda_crtc*, %struct.komeda_crtc** %5, align 8
  %132 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %131, i32 0, i32 0
  store %struct.completion* null, %struct.completion** %132, align 8
  %133 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %134 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %133, i32 0, i32 0
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i64, i64* %14, align 8
  %138 = call i32 @spin_unlock_irqrestore(i32* %136, i64 %137)
  br label %139

139:                                              ; preds = %124, %111
  br label %140

140:                                              ; preds = %139, %95
  %141 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %142 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %141)
  %143 = load %struct.komeda_crtc*, %struct.komeda_crtc** %5, align 8
  %144 = call i32 @komeda_crtc_unprepare(%struct.komeda_crtc* %143)
  ret void
}

declare dso_local %struct.komeda_crtc* @to_kcrtc(%struct.drm_crtc*) #1

declare dso_local %struct.komeda_crtc_state* @to_kcrtc_st(%struct.drm_crtc_state*) #1

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, i32, i32, i32) #1

declare dso_local i32 @drm_crtc_index(%struct.drm_crtc*) #1

declare dso_local i64 @has_bit(i32, i32) #1

declare dso_local i32 @komeda_pipeline_disable(%struct.komeda_pipeline*, i32) #1

declare dso_local %struct.komeda_pipeline_state* @komeda_pipeline_get_old_state(%struct.komeda_pipeline*, i32) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @wait_for_completion_timeout(%struct.completion*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

declare dso_local i32 @komeda_crtc_unprepare(%struct.komeda_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
