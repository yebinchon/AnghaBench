; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic.c_drm_atomic_connector_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic.c_drm_atomic_connector_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64, i32, %struct.TYPE_5__, i64, %struct.drm_display_info }
%struct.TYPE_5__ = type { i32 }
%struct.drm_display_info = type { i32 }
%struct.drm_connector_state = type { i32, %struct.drm_writeback_job*, %struct.TYPE_6__*, i32, i32 }
%struct.drm_writeback_job = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_crtc_state = type { i32 }

@DRM_MODE_CONNECTOR_WRITEBACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"[CONNECTOR:%d:%s] framebuffer without CRTC\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"[CONNECTOR:%d:%s] has framebuffer, but [CRTC:%d] is off\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"[CONNECTOR:%d:%s] requesting out-fence without framebuffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_connector_state*)* @drm_atomic_connector_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_atomic_connector_check(%struct.drm_connector* %0, %struct.drm_connector_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_connector_state*, align 8
  %6 = alloca %struct.drm_crtc_state*, align 8
  %7 = alloca %struct.drm_writeback_job*, align 8
  %8 = alloca %struct.drm_display_info*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %5, align 8
  %9 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %10 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %9, i32 0, i32 1
  %11 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %10, align 8
  store %struct.drm_writeback_job* %11, %struct.drm_writeback_job** %7, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 4
  store %struct.drm_display_info* %13, %struct.drm_display_info** %8, align 8
  %14 = load %struct.drm_display_info*, %struct.drm_display_info** %8, align 8
  %15 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.drm_display_info*, %struct.drm_display_info** %8, align 8
  %20 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i32 [ %21, %18 ], [ 8, %22 ]
  %25 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %26 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %28 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %23
  %32 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %33 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %36 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @min(i32 %34, i32 %37)
  %39 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %40 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %31, %23
  %42 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %43 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DRM_MODE_CONNECTOR_WRITEBACK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %7, align 8
  %49 = icmp ne %struct.drm_writeback_job* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47, %41
  store i32 0, i32* %3, align 4
  br label %139

51:                                               ; preds = %47
  %52 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %7, align 8
  %53 = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %58 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = icmp ne %struct.TYPE_6__* %59, null
  br i1 %60, label %72, label %61

61:                                               ; preds = %56
  %62 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %63 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %67 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %139

72:                                               ; preds = %56, %51
  %73 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %74 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %73, i32 0, i32 2
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = icmp ne %struct.TYPE_6__* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %79 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %82 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %81, i32 0, i32 2
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = call %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i32 %80, %struct.TYPE_6__* %83)
  store %struct.drm_crtc_state* %84, %struct.drm_crtc_state** %6, align 8
  br label %85

85:                                               ; preds = %77, %72
  %86 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %7, align 8
  %87 = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %112

90:                                               ; preds = %85
  %91 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %92 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %112, label %95

95:                                               ; preds = %90
  %96 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %97 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %101 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %104 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %103, i32 0, i32 2
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %102, i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %139

112:                                              ; preds = %90, %85
  %113 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %7, align 8
  %114 = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %138, label %117

117:                                              ; preds = %112
  %118 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %7, align 8
  %119 = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %117
  %123 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %124 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %128 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %126, i32 %129)
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %139

133:                                              ; preds = %117
  %134 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %7, align 8
  %135 = call i32 @drm_writeback_cleanup_job(%struct.drm_writeback_job* %134)
  %136 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %137 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %136, i32 0, i32 1
  store %struct.drm_writeback_job* null, %struct.drm_writeback_job** %137, align 8
  br label %138

138:                                              ; preds = %133, %112
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %122, %95, %61, %50
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, i32, i32, ...) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @drm_writeback_cleanup_job(%struct.drm_writeback_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
